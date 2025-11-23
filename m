Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DFF21D3D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763871114; cv=none; b=MzsUTQHI7iD1kgpOWsswY0waYgu0BaLicsBKwnQ6OGBFyifBEGMBKNMKeohNi6R9yS3blBPTErkb5vh4h5642aSL1qT7WoyUANaCPTaxxfp/ZF2dtIAMZie/j43p61WoD3uA+uwncJCsW6MdiKZG2bfxHCUtWK45VY1ec3uEMBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763871114; c=relaxed/simple;
	bh=bXb9Lt+kZrSnRrQh3DlR5s9gZyu9ICVS7zWEp0fbrt8=;
	h=To:Subject:From:Message-Id:Date; b=HsP3ZmCicp5/R6R2RcWfXfBX/aHEeZp5j7NlW1n+Lt2aU1Zg0jJlG5lM/7YthBNevmrqV/y4jboptfwgji3IRBoxG1dsHj9G4WxDfiOkgBXqU6we0KShLN+49TCCEIOCZPpGXLverqi+/o6g1ZSSdG8k8WmMfLHV1ONINbnIaZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNPi6xk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNPi6xk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD71DC116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763871113;
	bh=bXb9Lt+kZrSnRrQh3DlR5s9gZyu9ICVS7zWEp0fbrt8=;
	h=To:Subject:From:Date:From;
	b=HNPi6xk6AU81fSQ0Oa9bD/OXCreFOu8Tc3TNzdqiRaA169sujHWM8qYPrYkfpwX9u
	 yRTqzfdHa2Yl6x1pNnGQp60Q06vEchJkQRhkx3cOtkke5rjvWaCA0Q2Z6LoXxxe0sO
	 eFsrRgbhUVvAd+2PPNPX3e3zqN5FukXCaGGE9ZePEcvyAuwcqj6yoyDfERgE6Gj6zv
	 pS7PHI28Cr+i53iQXx9+BwJ+mRhqJUbQypcEWIC823nAalun7y73B5d9a5/+t/Np/p
	 9fioTizmHmyqWaptCUrBFGlwRZafr9mAAxTs7p3G0OwVfQJorOJ53fcqbUhQs0PJkn
	 y9EFKa1jeOexg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FB5CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387111358.11556.5638454673942102619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f8a8c6364d63a67241b4fd68b0dff5f9061e8935d68a51b6b01a89b0599924
Date: Sun, 23 Nov 2025 04:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763871113
