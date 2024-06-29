Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFDE1E536
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719680663; cv=none; b=ouHepsV6cr1wZLj99v7MMsQ/AZYaVPkoKAxnNYXUEp4HHyy3H9qQpnuQydi/YEJnPCBstlWQiEHYaeUD2tukaVMXD3/4zxGuVZqS1iS2ilgm3TQh8XdnKhLWXuLomBoc9/PdhAQP6OKn0NCQMhb0GKJGlF0mH0zDwM5TS1sDzIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719680663; c=relaxed/simple;
	bh=z52/eqAUndeY3Sa6Mbhri2PeUcKDjrsqOODvCrEXOl4=;
	h=To:Subject:From:Message-Id:Date; b=AzIzSnZCEjK8p6fjGiLeCQMDH7ePmXLci5+JTOvicgkKq08gBzeWW/w2KMwLKJRFYa7ZZ3hRmi2s2Yn0ZpVlFFyWTiaTqs15K68rc0G/k8OpFX4LeLfW8VuyXRBXmoE2degx/ACX2pTtcLFpysE6iGNuD/mHWl5em0epJ4te4dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQhhfybZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQhhfybZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BA5C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719680662;
	bh=z52/eqAUndeY3Sa6Mbhri2PeUcKDjrsqOODvCrEXOl4=;
	h=To:Subject:From:Date:From;
	b=bQhhfybZAL1sMe09pG7lAwZWDgLSqq4UPJIYm9emYtbVZsZr7Qxf5uL2ok7Cy/ALC
	 puTG1DbEcZwZWqAOCHeZefszAvQt4aGQtQ7AsQxxjUsyGpj0FQ8/gf+0lkaaspKIZ/
	 P5x98sohVon+eijoFd5WcTgfdavmhKEHCxq3zJvbbwHmMyDIcqUWrbS/ME7BExweO+
	 7iiEMQV56nltn4UfSTgLjt1bxiZrt6iwgb7vmSCflCvwGWiYbPNSLJADPHSXWRMvzR
	 HOSDnypLa712yl0DOrM5aC/chsLKsKcqyBlAjeYaYEVBpfRNAnOmRk+cShOAUr/Yku
	 sTrf/tJj3fPOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE65C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968066277.12121.5264640698742684116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb67ff2bb8d4c3cb99cc51c5982dcffdbdcebc3063f387c98cf2effdb7bfe23
Date: Sat, 29 Jun 2024 17:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719680662
