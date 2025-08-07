Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDA63208
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754587194; cv=none; b=SHP9GNijJjJwzBX2aqZ06OhExZCdHzVccwwn/jpkbeuVGrGzpRrpIYmR4KbJjRmtjxfNSNuzli9wlOUzgw9/Gy52hm2x9QDc5VMDNWyOpmIUS6+TfiNGLRGZvbTQC+HN3Mx72F76XQB/3WJfTs6wYDC8hy2w3iNHWS6StJQV/vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754587194; c=relaxed/simple;
	bh=GwH9q8RgHh/m4Bs1MzQ4s+87UXGQ8m2FMfRGIFixROI=;
	h=To:Subject:From:Message-Id:Date; b=Hjzvg2DiYXgs1jUEG6jDP+gmG0dIbKwXGql98eVgnwi2/0ejCmXlDLHLoQ8pLIjPGis8WD8qRNarWR44szFAiZ1IqdBB+AHtXLmcWg1lGgnVotIxSrRh8qr62m11YjsLmtqOU1XLzbA0eCNYoiLI6DDppgM7mJjfOmkEaozCAc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ri7e+fbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ri7e+fbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F11C4CEF6
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754587193;
	bh=GwH9q8RgHh/m4Bs1MzQ4s+87UXGQ8m2FMfRGIFixROI=;
	h=To:Subject:From:Date:From;
	b=ri7e+fbtmD2V665j575YNjrDe7uBiueIkgxPfWK8nnS4ll04IwTnsi19sCc7M9veZ
	 yFVnT/Y5tCgz4sdlO54O9VU7umHlFEPobl9OqxsWpPuKrAIae+eZLBAv1feqn5uYBz
	 I4/s3BfG51ZiVv4nZ1PBzlyAWkS+HXaeMRXmoPeoiyZZinW1+Ig+Y83RECdz1UMaXO
	 cnsl/XFROq247Z/ySURekFwonTpO+5derFOy4nXZv9jNrzZulb2G66gB092qDmHapz
	 QG/ML0LicAERwyvWAVzVrK6XiQqcXl6dILKVOikgnssx/nPa4JrhOZwsu4n+musJ+L
	 GQUFyLI5AUrNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922BBC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458719358.25359.7627276616279977463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec13ebc61d7a9eaec944365b460bb743ece76f0aa537f7f1dee6f6f981ee9d81
Date: Thu, 07 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754587193
