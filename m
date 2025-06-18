Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFF6212D97
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750229394; cv=none; b=ShdmSoI7Rv6Dq3mYoEArVoQRPo1KdYl0OMjMrx1vBx3r12Ce2pvTFTZlHUbVGiAroLdKB8AXpGPCS4skjyP8VWKHd7V1aEUKIge4sRuBeI8uForb1yfGzte/tABLjArx/aGY7bcX/hnea04ikctwPPOw60vxPiXmPCIK4pGQr1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750229394; c=relaxed/simple;
	bh=pA3gXY+xA1LkRNU7WQ5SLOSQwzV15rvxXpSNkNmikkM=;
	h=To:Subject:From:Message-Id:Date; b=rCZu50omcSHuOprkjg/2jYdR8X0SDnS0WclHhADN7oUBHNsBUkmTj2jPo95mjS39NoM9TXbwqvbfnrF8y/3W/dhhzluff30o+i7EblOcNQWj5DWjV1LdwuEKrOHlDC84frlcB/vMdKwwYwBrE4/NblolnetHYlifuNKzt+14tMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkjG3aiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkjG3aiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BAAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750229393;
	bh=pA3gXY+xA1LkRNU7WQ5SLOSQwzV15rvxXpSNkNmikkM=;
	h=To:Subject:From:Date:From;
	b=kkjG3aiyWsgbSPw+U7P5GaHUHK2s5M6JWkXvPHcb5C+82Dv8SaA5Ua5OGofftfVb9
	 5hwWeoCPpSARwYSisF6JzNsLS5zxvYusLinD2IKynKCyIBNhDhSS6kRa/FHXdPJ6xB
	 aR4EjaddpzZ6Rsmw6Y0msUS0zSUjtJLWJ4vznLNgjOcXyBERtfUY3w7Qg59UO6ycJX
	 3q5Q8i2M5cS/0siZHwzcFbkGK4K9kLgo8Bt85AVv9xve1kN3y/wn/C0FgmUUmgX8FM
	 dMAZr5BaTql7XPYM8OTZBM8koxraCuzqREQhiTroXTYQH3MCLMtOCTP1XR9c9GQA1g
	 p4Wx3TYSIgEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3886C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022939372.5237.11306233473738818008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d9ecb035a1d8cddb770faf328314b0390a8730af290dcda36b2845c4850dc3
Date: Wed, 18 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750229393
