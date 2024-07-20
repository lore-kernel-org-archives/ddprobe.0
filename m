Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF801E481
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721494554; cv=none; b=TOmUBkX4qNaty07mkE0xl4x91uG1Y2XsmO9ZwNnkqCTTXdjo3F3915HTjtBmiS333tNYB06QidgYJDGItFhLOXaCqD46aLeKYgK47yZt3iuFLHt4ES7AKq8IDLrVlvqGzt24xLOcBeykmkDLErF2pzxMq4JVdfVwkCrYsg8b0E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721494554; c=relaxed/simple;
	bh=KwWPC2+XTREH2+D8TN2IGZYd8mlySlgdM8ZrGw+nK6Y=;
	h=To:Subject:From:Message-Id:Date; b=WZs39e7lK4T2QjijRWSNzckqJ4nLtOZrtWrzeVSPxUHIKUzpG+VhOLMBWBiFq43lShmG9Cev9fw8Tt9tPMh34q4E3AiJ2N/lRe3aqZqLUCNfSFUL1olT5eIZjed/r5VByAIejl0iTmCQNtIMQC36WM8uNL+rofCql7mMUf0DKEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9AEu1Ra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9AEu1Ra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B4CC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721494553;
	bh=KwWPC2+XTREH2+D8TN2IGZYd8mlySlgdM8ZrGw+nK6Y=;
	h=To:Subject:From:Date:From;
	b=O9AEu1RajaeuwTf9MhgjJ0UCA0yRmVHym2URDDv6SaTJWaB0tPU5sHxu3GVKUQ9i+
	 xraJHtEXgO1pcTKVpc6Zc9RrOEQ3QIeyRybYzZf9Wd7Dfy1k/oczJcNTNdQRyZatC6
	 qNFWtBPhm49ATALTwU2BdTOEMO3OqKKGOT2nYaVQUCkAxJEQNQu9of1VRKn+o054YV
	 NmjNZAG04dzl/YwRzHwCyRLO0WOal9GQDHYu/ADKV7BqpbeFo41ZqNs2m28qhGVGLV
	 +v02QA31h/J3YEz8n8FaK6UzLXJhW/qh8fKFrNpz59HB0gdwH/toxkawN58mxRWsRw
	 9e+t2J9LS1gsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3934C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172149455364.5678.2490351684509477142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e761c0e12930148f4de7b4313943190bc492901cb8ecfed47ff872cbbc4dbdc5
Date: Sat, 20 Jul 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721494553
