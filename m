Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300F2186E2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 05:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740633534; cv=none; b=Gim3k8EWxGfuzN36VrKz8PXbF19ke4xP0yuGZeorGOuka9T7/TYMkcHWNQROHZyWuop64kgq4hYi1g1NOgZQ51f8I4ggCn8OjQjROSuCuEX2JtziBO4tx+7VfVZw7kWS/b1yuyG/hqf8wyJG3XqbRgNz6AtHLMOOHx/qPRu8I2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740633534; c=relaxed/simple;
	bh=A4ETDe3Br6PkpxKtMO5oXrNtc18+Z7evSXnmq7k5zag=;
	h=To:Subject:From:Message-Id:Date; b=XfyJoRrdu5eNhxVJ0z6PVwjAdBKRPUblsSdOpSltyTT59IDGXPHkmN+K3o0kFTtAd0qwc1dSdfcrXQuQDX/VcmJumj5fzuk9VXEH8RvrLGiSdCw+Ncci5s8r4CGN4Xl2CAW8/h7Y7qEdkOUCPeRGvsEKPIXRLcR9KhB9PuUkIyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHECnSGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHECnSGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B152EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 05:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740633533;
	bh=A4ETDe3Br6PkpxKtMO5oXrNtc18+Z7evSXnmq7k5zag=;
	h=To:Subject:From:Date:From;
	b=mHECnSGL57/9vUTMayXDiAACUVgx9sPUWCW8SLScJm9mv4jD4j0BpllvKx+TGbC+2
	 /gayN/HwWu3fRRDObVUUw7erm66CGGef58F028CFAmiOz3gD0674Au0S4RIGHpaiqL
	 12dKgczRBXTHeYDkGmJWW19muU+cAG4fs557nmYWN3Wd0LlYgdX8PdAQNvwnr0acy3
	 g5heiJonB0YxCIRbaKytrafeRy6qGg5HihPiB0BjHyTzXvs5KOlj8ID6KAyIzqkuRG
	 NE8nGhScfvc6xOaF74DvHZ7sH3MWci1oPp9XfdPu0DMFC3WXAi8Cy2okUwhh2TTCom
	 wupjE5yZmsKzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7E2C021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 05:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174063353362.7599.1595322549162577149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc3760974768fc0026295e32676a2ac2cab0eedfbcb0d8add6f442c511fbd2f8
Date: Thu, 27 Feb 2025 05:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740633533
