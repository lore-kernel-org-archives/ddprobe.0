Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9B31C1F05
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759060194; cv=none; b=QIJjPPyB+h2wCXZZLA0RKf+Ja9CZ7wc/9ojUE5wiriFLPlUukUnoA9ymgAO2A7ZUS86KchgfcwIuvfydxzGtgO2EDbXzsXjTqSTEd+UpGotIE5wKIkMLCUfoXUkjo/I2KL3A1rcXR+4HQx/4jahQlksw00MDwbwrj6KD+f5tkEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759060194; c=relaxed/simple;
	bh=KUUW2FxSWgQFETGaSWvXWQQjs2fLoF18w6iZVXJULq4=;
	h=To:Subject:From:Message-Id:Date; b=Z53B0RqNeWcIvM4o/YjD/l4WMH6l8IPf3/cY0SbnhXONojGpLzKKLUaWcwIvYf/30I2riNRVl7Ymi2v1zdX0hg3CceGPv6+qjdnD/gLFk2cVTn5IXJEvv32Va4aLQU35A47LnNifp1RJPNvnpPMaeqom6HCN8TqSPDlTg4XH/pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWz2Run1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWz2Run1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D09C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759060193;
	bh=KUUW2FxSWgQFETGaSWvXWQQjs2fLoF18w6iZVXJULq4=;
	h=To:Subject:From:Date:From;
	b=IWz2Run125i8xbbwwaTyVfdP3lGSohjLRKQP6FbHC6vDxwPCkcHOGfGujKxY9ERLY
	 mmRiXHJb+r++di5fIv6JnbV91BjFmcaV6vns60GJ73M5cIE71hl3chE8z4qnQbvtWA
	 pIvhzDufPfG0fxdQwwQX9qblyJldSsoByf2nMbarV2+N3TaqTKlr0RHfERuaHxTitd
	 rCStX4SKNcH0scJwPp2f3E0xiRepRnnxmHEPwmB8BJDSECb2Lgfrmexbn/ZARrrQ0F
	 LDO0UcPhX2UFKM367Iss7i5PwC80p+LczWk48/lBhvI5FkuT73edTmnxYmo2BxJNQ4
	 ukYqtNWayHAWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E8CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906019358.28305.1168948693600624245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a943aaedae2cdf5d7448cf0344ab93dd639a14bd84b8ed4e141ddd3458c55628
Date: Sun, 28 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759060193
