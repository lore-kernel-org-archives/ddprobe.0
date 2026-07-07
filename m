Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374743E1CE1
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783409314; cv=none; b=BaS2ycjtq6iNhmancZuAdrkoP1TWaheXQ0u7UvviQ6WnAdhVLX99psCCF2NFP8Y+dvNa9OiJ3hYUABCOq/P/M8K3lgyR2aa5kAEh+OiJaj1w3o8nc7awKkSoOWn0tYk5e/S+nXPmp6v1VXTlhTpZWqkRxDn0SY6DIpHbnHsjukw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783409314; c=relaxed/simple;
	bh=DlscqlAfXj3k1B6Rwo4usIaq4fXQqRLkiyKcKTqs2IA=;
	h=To:Subject:From:Message-Id:Date; b=C5JcUetWifc7mMkoMLIKOidsp2O6IhGL6hhbR/7HS8lSUK2auJoGhVzUBvhd2vAmfB3D3H2A16ji2vjkbaHVhH9zrix7rEHsur6cZ71BXDgwEIYIMnsBYNuUKPdUWA7JuNft1ScbnLxzwQlS4ShLL4OTP2ZJ3sBnpyW0pb/3qqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCAgVRCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCAgVRCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC829C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783409313;
	bh=DlscqlAfXj3k1B6Rwo4usIaq4fXQqRLkiyKcKTqs2IA=;
	h=To:Subject:From:Date:From;
	b=GCAgVRCDw968rAqTKHeybwP9EW7KfN3wq8hcliigDKOPwZriIC0Yulef/8wc9UMrU
	 FPbM2qXEV8eUqrvFIrxcpbKfYh0wpUVO/q5mQgPKao1rrgBw6seZOswVtRr0yrNZXg
	 oHyg1CVTbDeLsElkq9GZBJ+/4vFVEtPS58XVDv3C1rs4M+NDnWU52GXk5j3doD6wPR
	 sv1EQ/r+7NItwvVRqG4OISVghEeNNEslyF8Wj97wwWEkPkQMI6fNgVsntanfsFzVlB
	 tgpZWt81cwRTpll56o9V5dA2RCP5wwlgX8Rw8GnG4nGfQGRa5G2aUBMF97hohcMBqj
	 o6RphR/GWirsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA601C44500
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340931368.8746.8612135091740885061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d25610745400aebd4577dbe745bc0df4f7566cc2d8ac0ab8ecfbe16c64466d2
Date: Tue, 07 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783409313
