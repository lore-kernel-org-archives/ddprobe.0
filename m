Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A03F1C6FFD
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752672594; cv=none; b=Oh0K52na7d+AhRnSEG/n8vQ9jJQhjChGtl5SRWqLCrb98HNpuhhYZwz+X/dWbm4JOKLt6P/JFk7OM5O+JFGfD+kuLRXgkvFI9QR6QlSI2FVuMX3A8zdcNu4DG4gJHN8n/Z/SBohDOi6JXmYcyiOWBuLyIlRoNuF/EgW7mq0tH7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752672594; c=relaxed/simple;
	bh=9YCvprWeLo92PkULk018KZ5VWFwxLJ/eWSqx7YnopHA=;
	h=To:Subject:From:Message-Id:Date; b=fG7ZvwYmgs1VO7WFZ8V4kRCiWCLebZ0/7nxulljV/S94LOYhYZFjgrwP8JHBXclVJ6qsvqYa7UHzpDSsdMkS3Ii3SRlTC111JUMHhzDXs2JSQNUCokf0hXlzGAusGK6hYckC7edgsNMYngGm3rcqrp/0iTp93XSoQpNuusHwvOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a62i1d2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a62i1d2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D61C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752672593;
	bh=9YCvprWeLo92PkULk018KZ5VWFwxLJ/eWSqx7YnopHA=;
	h=To:Subject:From:Date:From;
	b=a62i1d2I0h7Yxh1rA9vRQJTEnbP9zfALeOYhp7DA7kzql5a56pTnmj4mDj3cpPWGJ
	 KMbAbDUL2IkIXRLyDNoUiYj1/pTemm9BAXDzNDHmSJfC1ZfudDSEW0vnaKz2ZvEqJ/
	 nR4LG6iaKXkDPDF0spwn1l5MEYBsJEisj3qMj7PpERCXLHlqlJ1vA/7zJgbyjGS5Co
	 o1OdGLbL//Ar1Ze1gKRnrjSeu+ST76buA/KwB3eZM/Vmc3J/u62OFPnspZOagBaGVn
	 urf3YGMiz8PK7caqBShXj4H9W+VArLPVLyZI/8xoHmPfkinGkna9nw6PxQGSAn/CL7
	 JGIvWiRu0KC6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90314C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267259358.31137.11221033127492417748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39f351d7b6e4500b5c1886df595058d1cfb8432d2907711dea2522d4eda5c15
Date: Wed, 16 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752672593
