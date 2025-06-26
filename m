Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E085479B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750913398; cv=none; b=fhSMmgw12ZwUFV8tZlSMpJwNLzLj+duDOzLhs4wZr/e9xl4nGhs3djwbVtWlQ+IvjefUPXvP9yBYfeMB+3UViRLaNbYz52OT5e6ncydmHRRrYwmroEHlHQlfv8orCZsPc8GLTXTK/59fIrnkQNEzOMZPMl1MeC6sMI47Ten8tUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750913398; c=relaxed/simple;
	bh=himxuikaLPoc5EjLBtYKTflh4tfHGfCr02qigUtVS/o=;
	h=To:Subject:From:Message-Id:Date; b=PmjDubfyG/vakpqv6Rs4JLbnyPAjZRU0c/09/Tzejx7MoFQvkVFD0AhTw6mJ5KM7scFy3osMD28fbuh6HecXT1LnNJOQJXfZR+Dm+7vss6KbvyQXXwggsbaHUqrbpm0AI3F/zocXJE2DjEMoxZzUL1WkerAT5QU3G7Is32PdHtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eqf8sUvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eqf8sUvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CF7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750913393;
	bh=himxuikaLPoc5EjLBtYKTflh4tfHGfCr02qigUtVS/o=;
	h=To:Subject:From:Date:From;
	b=Eqf8sUvDKCO7y6/dfiSIojpN2KfTOvaanieRm/FoYHEIvikv1TFTqxNqXRNFBY54K
	 kj1rgwV7fMXNP+iECGIgF4Qq1lcCFOTbolzCuHY3X4gmU/jxMNRtzoO3pU58Um/XCK
	 xzhQYgHvywawRuNNBxu+RAcoaEiOrmzSvk6tzcVu5n4mjYawzibNPUH3wjs6qhWJSC
	 1KnBO93Ea3ViEImlp58wYW1Npa8m0J4zWnFEJYR00NjSDRNBITlAwJDNbOngyWVnlx
	 xX7jXUI6Wq92nNhJc0yr4MIG0RM9+sF7H/NS3Kodt+kXQziiJn2lHQ+1lvSg1f9fYo
	 IxBynM+kj1nUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB4EC77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091339363.16936.15013445489620643307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d108a41ddd1af1df5c5102486092ea79eb4726e2d51e596ff2a57b584664044
Date: Thu, 26 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750913393
