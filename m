Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4288E379C4C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780214074; cv=none; b=JO+Kl/W2Tise2InQEYKQvlQjBRmLSVJCkByuDjXrf7Y0bVOcudjAZWCkW1UraQRbGIyXf44LScp3LwTSHpGnQlsn4TCCBWrCspkT53yuV1TRktH/2j9a+mxqVqul25eBFoiT7DchUqBNgps9aX4ZDj1B/y9UkGo+b8RgiidlysE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780214074; c=relaxed/simple;
	bh=+XNvnsi1edIqqvV61JWPNzP9tvnmUmje0PjqB9x5dcE=;
	h=To:Subject:From:Message-Id:Date; b=ml9q8r4rJ/iC2NW9LtJ/CoDon9kLIsP6gU+0Tclig+jXIN5G1XNSxuxG/IBQD+O3eppz8fSrM+215wToYnVGnntNormcJ2GZ5LRBxtYP+HHCu632IG+x8ik3ddrZ2HlD0ezSVwSF88Nkh9bRT3FLoliHMCBkW0Tm8vz7IoOjnOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErtrxMiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErtrxMiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98BAC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780214073;
	bh=+XNvnsi1edIqqvV61JWPNzP9tvnmUmje0PjqB9x5dcE=;
	h=To:Subject:From:Date:From;
	b=ErtrxMiK+Uld7n4rxxfbAZPdUzs4NbJhJI6hlmlK0xchoA5nSjS5M88dMV9Sx19fK
	 qJB/n0EI70roChHLrPKyy8rY7VWvziQ7hkJ+2IfTy7/2zFzq+1kWkScK8xsnP7GZd0
	 ozmzJ6aykujegt0QzPHiAWizQTq+loGXlYn+Y+4LWekfCFV1h9hatIbuVTzHszlas5
	 WHXjye+kgRg5TfHEQSDmCHvl8haAM5Z+6VDKL8AHPp9P0CGLtpLZMoLzQuprgSiA2e
	 yYZVdjP3a5mm+fic22Q5tNpNTqrL4BK48Mrjw6G4vc8nPXI+rg4WazYmOpW6XjQnBX
	 nZuG5Qf0HCMsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BBFCD6E55
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021407371.3841.12814510459310289667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c98b0fcdadd469ef53396f6576111c59957d654d3870e069edb92ad22280bd
Date: Sun, 31 May 2026 07:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780214073
