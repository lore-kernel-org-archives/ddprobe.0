Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED111178372
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777812454; cv=none; b=tEcxZzgGwPixSeV6Whix4FCnT3O3tPwvEWdAW4x32lnCI/NBc+LsNXEnZWsRdbg7EyY4vk7KDLbgE8Aw2/HLgnL4E3md1lsNThjql61INzd/P4pdaiubkZjpp/GD6F4F5THcG14l5AffMx8PSAcfjCo2wXFxxNcpq07NJH95rRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777812454; c=relaxed/simple;
	bh=bW4J3ELTRhnYIhyCuXjfv1gOh7dLYrr5KNxxBGf2Ihg=;
	h=To:Subject:From:Message-Id:Date; b=qmEQDmCA7yHxSaPFdt5uVhOHyqiQqLrT/EBFj1MV3DLXTinR5QxjV0OFQgOvRBGBNWZy3pKp5dsrgaAcSDvAeQWCtrSmLMvEFN2c94tqa4hKNjNYSLtvWSgnUCxvollUcAarj0Twe0FavR+lrCJq2oAjVUGMyl3IEkzsjiJbuVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mlq8KWkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mlq8KWkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC8EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777812453;
	bh=bW4J3ELTRhnYIhyCuXjfv1gOh7dLYrr5KNxxBGf2Ihg=;
	h=To:Subject:From:Date:From;
	b=Mlq8KWkfFT9eelvsqnsK3Rl4xsGaw8wurMu3kYpy3WmkMbPxXjqVNGFkQhUOhGP6O
	 RRRNBGCb7tEQkce62/7MF7NGnDvYMb1jNutv/Xyr2TiRtxJ15CgUxL8KzQpAsdl7BW
	 nX0kBqXWhDHYcQhuNcN4jkPjhaOYDaCmlgVkvzxmw6g8jYZyTfPVYCL6bKvhYudgeJ
	 xML1h0rkhVoVOlBc0ucMmZlQSDlburJwoMhJO/P+L1ZdTmlCav+psNO66g7F+XE+XT
	 IIlPkLfBLzp2JtDRFyo5Wj83AvhcwkDn5Y3bJFKskFNzP+HLC8sGiGaDAXktXVErdS
	 m4XYDz52OPfDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BF2CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781245369.15086.5355572094659680101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438192082da4c3c83d9ca97926acd6385cf95deb7a2f566071ba9ef5a0ff4774
Date: Sun, 03 May 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777812453
