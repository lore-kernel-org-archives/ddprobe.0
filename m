Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3369A1465A5
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749104394; cv=none; b=uGydFiImPO85mGDNOHo1QovGTGcQXEdLaOFMvFCvzUhwlEiS4on581wLS8MV7Uo7jqdAw/ELVS12ZIG4So58vP4LFgSnAP5m6EeAm6jmVcNneuRo6ymZRHTcWDUx8jsAJ9PUyGNc7rTSSI14QI2wdC2RAIIj1RAqaTy/xxshQVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749104394; c=relaxed/simple;
	bh=RyBrBM23PNsJAkzSlFdDtnSUJvlw75wTmAVHgCxpk0Y=;
	h=To:Subject:From:Message-Id:Date; b=oypbbjEU5grXUetNbBQv9yQte2PKzwo0NJW2E5wnWmuzfOLwmWyGlds4n+5GoTX/r0vxwcxOubIqdPeh2NNB40ggziR40xfesc8cqLkkBATrEu/EJ4qdq9C2IRG3AToFMSOzOMYpO8cNl2LdY0gTgXwsyQLG+QZ8Pqa8f6GSEXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPmQnPh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPmQnPh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2742C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749104393;
	bh=RyBrBM23PNsJAkzSlFdDtnSUJvlw75wTmAVHgCxpk0Y=;
	h=To:Subject:From:Date:From;
	b=rPmQnPh9j/IKqsQznY+sDENE+BRUVkwKjgjYMhIVUQT3RbBhrI2NS2Mt3gpuRLvm4
	 sakp8Ny6cvihsVRJ9BP64EMlikctNzoPulX4sEsmzc/daIg2WKNGBliflxIDigunZe
	 o+uoHyMrJyX7etdklV06ZpsoLHNOeCv7qlm1URaTIsPwnigZnTppJVvLIbss25So76
	 9VeI7n75MgCY+TROeHELueVGwteqjO/Ttu5Azhd3Gt+Cpkild0mNCIsUAXnPLRhIev
	 8WtegClL3PeB7/JhAz5d1Lh9vP8qlMgzRqeNIank99v2TZDrlBQfE7XisBtaGMgizm
	 2DAgwiC7kQzTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B7CC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910439358.24633.2412386508057186496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0644ccabdd4323fecfc70b9f9e84cf78e8bdffedfe9fa9bf9a8dcf0d2879821
Date: Thu, 05 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749104393
