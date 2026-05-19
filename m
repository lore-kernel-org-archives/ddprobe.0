Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE00343887
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779212434; cv=none; b=jajImqSF5ahEcxrJWuIIgoo3DptljV0zpsjfA3smKN92R7olNXpttTr4xpyt/m/ud1SJzvBkSQDHbfcZTw7yitlaJYq5Jz5CgghDDB0ViXmqPgOkICN944se6vT2dhu1qkBr8+WvS2d6DBFjG894ZbJsj9bSFBiuPhWseZoThI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779212434; c=relaxed/simple;
	bh=u27VpGLjFxtajfVH49Sq+4ItfB+vdl+o0weX9K47w0Q=;
	h=To:Subject:From:Message-Id:Date; b=jZ/GD/Rd7DHyU588lwcbYVoeCFADm6TyM/qJA22kDi78BkG4zo8NNi081TWWqHKseVJn9RSfMYALd0uRiU4rWoAP73VDOftIB7XnC40zxgl1XyoZ8PdC2Ga8+G1K5cIg4Vwg2i7HQJTtnSG9LbD2etmRG2Tvcz/4+C8H3PvoGJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3d3ExXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3d3ExXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F6BC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779212433;
	bh=u27VpGLjFxtajfVH49Sq+4ItfB+vdl+o0weX9K47w0Q=;
	h=To:Subject:From:Date:From;
	b=I3d3ExXLeZZs0DjLhhngOs8B+o/JwBuxvI6GBlZFFN63JnF6uT1mU+TZjfa0GI8w3
	 fYzYDGLyOVfUodOwZqSpC9yytWnv2a7I3A5BmpH17MnFKQe1D/2rGaa3EZmloqQApG
	 MLtDmkEelLo4pY7rCaEylPRm9N1jNCYl6MCsVTRmP42NH3T/tfXzoOl1hJ3EyQQV3Y
	 hovjhTUw4lbj41pRR0jwZra+Nb2Mzq5G1XAzbghQsa8RaY91RX6+XnAU1NUNR3IEzW
	 NFInwUYH1Vcn1npuIkD7kHFz2kaF7XaSxbXmKIErff3wG+zLPwSaJLTw9BO5om3OsC
	 d/2GGYSiEMBQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DC2CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921243369.31154.18176079051009897651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8089b05875c5b732ae1ccd0c32ca0b5480a5aba19a9c20ed085c623d0f3f52c3
Date: Tue, 19 May 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779212433
