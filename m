Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9293624C2
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786251634; cv=none; b=Jtc70ViagDGyXgva7gdl48yh1pgUvlHdnePuwTTQLQbBhHciQOrniIKTYhcuaZTjWoKg5RAfSIiFYGKfnEagkmafQ85LMd1QdvLYJxRrvkrVEh5IjxuBwrirlJ3JT+CbCloDgdKYPwp5qi11oYiR7xFZzamq7qVKaXmpuhKxOiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786251634; c=relaxed/simple;
	bh=+OOjc8MJmscIhUQTb1UyUCDTILSiTNVnjcajmBPI1Go=;
	h=To:Subject:From:Message-Id:Date; b=d0lMSJBVheLixXRrq2GDPcMfsArDQBhfql4KFHu7OrsdKA7789RCYusMrJPL9C4oCW45nWP/WcsoYxDzgJUmbVAh95pNQePPA4wM3YTgJ3f2k2x/QtHpaUHA24lzIDjHC7NwB+KKW+wv4my5AJpJsa6nZSk5zwXw5WbhpO4vft4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inaudBE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inaudBE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1282C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786251633;
	bh=+OOjc8MJmscIhUQTb1UyUCDTILSiTNVnjcajmBPI1Go=;
	h=To:Subject:From:Date:From;
	b=inaudBE6whSHjZgDkCLl/lNJtCbE4ftiNKRsOD2DnfJDkHVifjTj9DkoOK0BmXdtj
	 5CRJqgdHH8ISXkS0DCa5I2Isdhm9v920w88NYIWN2C8IzrWatm1oeCcXCIegPyZQYT
	 rDD1Lb8Rv3w3y1OMwQFVn/iio2TVPoZrOO31OESrvfaS7ZbUSdLK7v5pwWr2TSMRaE
	 yh+H2Zd6cWU0JsWb5DSwJBFjtPSHo/dNIQUjxssYygDmp0xOhe1jV1yGTJ89vKRqM5
	 13CFPFvCgCVkV8aDQY6CvBp3ZiGXyWbrwdDTlzawtU1kf1A+86hPA6fXfj03wpZ0mm
	 dJRcgRgkQ/36w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF778C5AD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625163368.28534.5250359198734848325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483338671cb76860a2ad73f567d4075d3110e0d8f4e16a957b6e29b19ca6fe4e
Date: Sun, 09 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786251633
