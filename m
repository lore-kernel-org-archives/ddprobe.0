Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BE51F0994
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745996994; cv=none; b=FG+az//e4PVK8E8H4NHz0ORIR/dCAgHWEshZL0QF262kZfIlT0JoGL/uM4bjTVlQicHqICgcTZVkkMowIAAY9qHNaQ9MYg69G5JEk8HGyQmiExm2wdqzsCVWCnzBsOSgwkxl9kPRT+cfXZwnrPzw65IKHCj5qVyCyseO8nWHA3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745996994; c=relaxed/simple;
	bh=PrzUGAAZAFlRiEh/RkVBOW9AcG4w80aWSWFsudymtuw=;
	h=To:Subject:From:Message-Id:Date; b=pMMLBzOVLqgUeVSyxUTW7tzmuRa0FObPoYwtuF+2a1TgiDb80Vb8KNLdpG30D3tjwT5gR/pLqvZv715yPsa7Oaq2eMr4tXy0Q61mtxiNwKgMeaFFNpyDSEt2jycHhTmx03ImdCKglP/7ntqxROsYfL0YiaKeWPL4Wfn5+KJKOMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXw0CcYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXw0CcYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D59EC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745996993;
	bh=PrzUGAAZAFlRiEh/RkVBOW9AcG4w80aWSWFsudymtuw=;
	h=To:Subject:From:Date:From;
	b=mXw0CcYIZotbI6UV0AClbguTWt00kHHzVere8BsH5wgXSh939W7soZWbLX8vtX9nB
	 uroAciNq0B9b8zLoMM5VKF2h80saDqQQge2S2PwPMWB4VlFzX7dGfUvwTAfNwym15J
	 B7SPok+T2eBfnRnJkx7gQ4v/UiYvYO39Q9zhFVwwUI0sOAZ6ixe3xydX5+HGhM1RuZ
	 oNtd5H+1W2n+S3659HyimLyO9WhkHsrnJVcoIA4E9/mfg1ymAbofcDwOvLJn4APPSF
	 RBj04LzmXAU3ZRFqntgif55UP66xV1vAmMruQLYsn/59AgTlqoTmw0OMjIW3ZhwizQ
	 R8lrmCnJJHsrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E632C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599699357.15911.6438953264347871841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a8d3fa34535ce3798a9c7aed27d742d1cfe78b32c427efd47575c51af2954e
Date: Wed, 30 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745996993
