Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EC575809
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785680434; cv=none; b=OUCNHc0lDkgqB11MokzTbTkGWHIhK4VFbyXQeFvg2bYZzRSiP6p/A1r6CbdxhT+YMhD75Pd1XhYNh0nT6SdVa57bvlfeBAFCD94wSIWb+VafNRekS0yBshuLOqEumweAzCT1J+LCOmhzUcMNVCaF9w7slqu1cglf6MqNKmiAaF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785680434; c=relaxed/simple;
	bh=5376/wST7u9Vcr3xk5FK/l1a86RmHuucGwlWZ6qh4Wo=;
	h=To:Subject:From:Message-Id:Date; b=sBQhsaiiiCOkO5jXA0UMlFjQgTE1mlVVWFse6f62gGgp5pXnxO5Oo4jy1v22YEzEf3DjpGapjY6OAAZSkEoc3qRol8cXh6uiAWyz2BZ9uCeEFtAsY7SQ6mL3xyYjgpsMpV6HLEo9GgGt5XLNvVt9mj+yZRlgKdYARPSJvaodByU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofyXFaIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofyXFaIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8192C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785680433;
	bh=5376/wST7u9Vcr3xk5FK/l1a86RmHuucGwlWZ6qh4Wo=;
	h=To:Subject:From:Date:From;
	b=ofyXFaIklzNU0PYY0dPmy2NBztdFJ66ABjWGS5cIxQGL1PeTNhzzNBvH90i2D9Zp9
	 YJgB+to065YnQx+5FFcmc/nRESfea3ZBZMeX1q/HTmdiM/dXWW1uBs4vjOUofcuK1y
	 rJAAKBg+w/iG8/OezECSrmK8ou6zC5ZFUGHRz+NKVt7xBHKyw7Ur0TLipEKWUh+l6p
	 rg/W4vEOhvvlA0KENXvfRH0/DaxGZ8r5XuXN3ILUqq6ThmfI+zmhtc9nfrsOelAJdY
	 mFtS7u02yXjmgcMiAySj7PMROOx39MRCbShMSlaJlbd1wWyiirmKmk1onCDat/HQ2F
	 YlnfSlGPd3vMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A27C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568043368.19432.11294614576231676491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b216b3604d190130b5cd543081bce177be43bf20e3d78735c916a5bbc570c00
Date: Sun, 02 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785680433
