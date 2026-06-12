Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F8B364EAA
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781297794; cv=none; b=ro6sEpC/Pae+qD9Bhgt6z2QfrHYiDJwigDBKeDyP5YDPII73dYsQhuNMMxO+jTlyH9MKOUgnw3CySr78HqA0rPKRKuk0yZNjtFL12CoK1MfLgwv/dun4NgCEyolcZlVeofMhYPVS8zTNNK6cmeLbRg0A+LfkIGvovcpVRCtCGn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781297794; c=relaxed/simple;
	bh=bjc3Gu/t3AMSAewhM19no+sCLMBhTGK/MyGo55Jl0vI=;
	h=To:Subject:From:Message-Id:Date; b=VYs63cYGAN/SX0IiqzdTeM3aRNg9z8GLch+pYXbA1ReHv83ckLBRvf/FstyiSVD8wdzoNISslguQVEzhjlbA5GmuOOWYsaPGhOmSmN0BuswrREAV9hWw6n0LNaaLb0w4Fr5FL3Okesk3LadSnpHUPo0CmzMExy7Gwssrl2tQQWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWlmOgOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWlmOgOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D63C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781297793;
	bh=bjc3Gu/t3AMSAewhM19no+sCLMBhTGK/MyGo55Jl0vI=;
	h=To:Subject:From:Date:From;
	b=ZWlmOgOIAapaDQzjGcRoaXpTdPEdYL5vp9Uo+/90RLkyQ29FArA/Pj0X6EZtIv99V
	 EUQYffmnNTm3k/4ZKUz9wzjIsgWRXt9kjg7OXbc+1Qo4uK00uUudnPJWgHCcCrsVnp
	 I55kBtgR0gE+9sIKPraa9TIXnk+WshyqkrJNlk5bKfuFhUoNEvE0bU+Z7W2lxUz96p
	 4W+oEYAfyBG15ihtaBHifa158EqprvqHZKkEpjzPDuxp4PML6kLJkyM9O2y6T6BMW4
	 yVQcR+cd1WBkMmnGQbP2wF0a2aMsmMau8QrCG5lFC9Z4CV4VhNuI4Hq5sXbJm267So
	 kdlG1kyIuYzkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8827CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129779368.13994.8178642938784378547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442f052d5147ae88ba97d196ac2c8304ec1713b5e1c0251d0925c1ac8f1b4024
Date: Fri, 12 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781297793
