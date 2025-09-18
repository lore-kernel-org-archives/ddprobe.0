Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169C12EB5B3
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758182394; cv=none; b=FcQVXHitDB+CrCmfPNiKtdZ/L+GuBzzY7a5jzd3I9ksxmrwkrpl+mKSW6s23gTdL8KJBhxdslpWg/iSJQtAEXs1C9jztyEH4e95Y8VIOfFpt2l7Pdc7+wQxWlEnJyKodBxeh68DLZHrZW+oBSAWQ1ASewodaA7tcBX2Go+fst9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758182394; c=relaxed/simple;
	bh=ggOgP2AOI+f86VNVAjNArmn3tK8tTnufBX475Ek44xg=;
	h=To:Subject:From:Message-Id:Date; b=DqYvFZ3bXpOkisaIlx99dkNaZjikM1PjtmI2fN/nehHQwy8F37pMwKLrvhsNlyyh5+tUinRZW4rG3AaIbrNZlNfMSBcPiP3Gm9kBC9+VWIK5Z7+n79pdXlb9mOgyNHauxs1oAzQDOs1Ky6RwGk/EAM/fvLQhN53CzM6/k0q8HQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbKhCRzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbKhCRzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A239DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758182393;
	bh=ggOgP2AOI+f86VNVAjNArmn3tK8tTnufBX475Ek44xg=;
	h=To:Subject:From:Date:From;
	b=nbKhCRzxJfGZBlo15ggPzts6L8qlKS2KM2xtsf0nroos8+sXb//W3celdJ7jFiIVR
	 v24atPiyeRHaFrV+4yrhsXXI/N5UKRifN42BqHEnTiOZqbIeh2dT6weqnc+HXWZUHD
	 Fh70iR1YkJngzleOBPWntTjVCBlkOGMF8XR5o60MZQqKGgJqEqYA2KxLgVzuLrvr04
	 118LplhgS1Y4Z4Q2b98SoOWN75P/w95VYu2KOEzV+pDc5WmQN43EodRpyqeU3M5abb
	 +uPjg05HGegWm8orlxvo1GsGPdYP5uFscKfgOgUcajnQVLFQ50eatq+X0HVj5NDdvv
	 HaYoM+F+QiGNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D9CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818239357.1380.6030330346856991587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6847066d9a085b14d290da7205cf1dddb76ab5a48920c252935f00fc2dbb39
Date: Thu, 18 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758182393
