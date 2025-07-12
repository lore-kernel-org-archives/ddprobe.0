Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33163320F
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752292195; cv=none; b=MZCyujUoRk3WnVDd7acbnACXs7oRS5fVdqS9EP9iDlVm14fzilb7dBR2SIM8ieG8N3Cs7lTd6erElBHa07rCwPb60EQfqlvUivH3S/j0UjzTKcm1lUy4ehW67YU5aSqEl+vCrjmATGe6tJ3pQopapSUzoPbWVfcQ+eXU+jgAE/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752292195; c=relaxed/simple;
	bh=XPNoJQ/uXbcwb0PpMqZ1HXvS6NelUMh6B33RdLsSlck=;
	h=To:Subject:From:Message-Id:Date; b=GnPiBtPZzB055s8jvfwtPUd0VL2Sh+VtviY+G8hPcFxjADiLDEBQ22QWjiCs4r++21a76bSO33RPttwyaS2kp14QDX0MM9cr2O37VsmbjM63hi0KpvtzP1vbJdzvhdtO6mVHENaeJfnp/eAMfvK6NfOE1oNQRib62K8iyjkv3LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVJlcd3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVJlcd3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42B1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752292193;
	bh=XPNoJQ/uXbcwb0PpMqZ1HXvS6NelUMh6B33RdLsSlck=;
	h=To:Subject:From:Date:From;
	b=fVJlcd3TXkJuXf2TeRx2ze2yP53GtfgfvyCJ76bX28osW9e8gB/RuuH7fBeztIGCr
	 7khMiLRhDcdhc3QgmAGiWPL00fPHy5cCDqjKhYnwiTcjWNHDBtxpHQNGJD/fKVfuAd
	 yCh/te1HfFGaXxdBtBWZjsqjant/FjlMLAQ9p9E63eAjqob24sURYVML495BSiKFn0
	 Mq4EB574gIMQ0KI3Ii3OXtmAEhkfTjLpfuHdkjdLL5RdAewh/dOKhyTTjhu4Zpo7kn
	 h3ucgz5yFQ82zz0qAcCgaiNq85p7O0Y3AIf6hGmsTDgU/FgfEDYe28GfR2IuKbYuRH
	 0boS3Y0q8QmXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93417C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229219358.30183.12318774019345113126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70aa8c16c7cee3a0baaaa1218e9a7faf924640a22604e7d0e45293728cf5d72b
Date: Sat, 12 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752292193
