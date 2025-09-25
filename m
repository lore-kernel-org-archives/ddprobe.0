Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23973611E
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758787194; cv=none; b=c1mP0gtfGQScJd+48e6RI/5YA43POYLXCg8aMFEMPBmVWgt9dGM7cbaoY/GcAxmCtzj2QhYeorWftL25r0yKbm8tcZMDLyDVszFMm/tkpZ6h5fRBnsvaNuxJkLnKQalGVLsAeio7O3Cha7i6yGX9jJjP4hPOCB6vbCum7CNBECU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758787194; c=relaxed/simple;
	bh=4LPfU/riCQdQB3OUlTlQYyijxpvZ1VhoxpNCDEAIVzk=;
	h=To:Subject:From:Message-Id:Date; b=c9ikLZL7GqmAbH5UGeSmuitQrbkVyj+J8DBOtC6Z+AcXC6pMA1CPoZ7ZwUpnlO+tv8sl0h3P4AdMGZPcWUQZLmnKIrl8o0U0NJ8nON4C7SN08ZI+YSrDBzrzIuAEKVXmYD7CyJlCGQmrkCfgz321L5u91YTtBlm5YG+xB5fMhu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QW5uQ1jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QW5uQ1jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59C3C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758787193;
	bh=4LPfU/riCQdQB3OUlTlQYyijxpvZ1VhoxpNCDEAIVzk=;
	h=To:Subject:From:Date:From;
	b=QW5uQ1jpaFyg7NipgTQgDVdIiWMF7maHoq+6usXRflMkKTGIefCJs2cphdA3ybu/H
	 fxVRPL/pEMzonsqdCK4hUdqgEHyrJ5WZZBOSNegDKQ/5CKmggHMAPrtS74xpDAXPix
	 fuoWzBJQsdw0GcboZFgsJYTHv9qqjmdlQ0/EIA1hknNd+qyzkeci9qnLMrXYT/EMPu
	 /FdM5UrlMKrMD8hFLDN+1HasO94jmUcelIfuA5Ufl9C23Baz4QibqgfgmkHHR1P5Dp
	 lyMslgZ96xQGygYbxvsvNSGL9DjdViohjj7Zdu1bdF7BATA/qS/UpCCzxke4sb1SC6
	 LE8D86OiGMpJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9340ECAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878719358.31593.14362329032708992313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906eb532c14c99dea2d23aae808e5b171701bbf05635de4dc792aa3abfcfd3eb
Date: Thu, 25 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758787193
