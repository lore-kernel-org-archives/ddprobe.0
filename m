Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0886238F8F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705873097; cv=none; b=g4zZTXFX4L/2ik7JpeZ/bCUZM0ygMjws/+oWEMfsedzzX0pfBDkqWTQcfeMHW1Al3Y1jvZfC4zEDgh3p6TdO4r6qLtDAwV2yGHoLF/h2ukDm2ABcwSvEPZw9/cLxFqZ9j9H1iXicqvFXlFp0uIe5yCt9JUtfldXPkmeaNF1/Tbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705873097; c=relaxed/simple;
	bh=tpcS5zTPppZQTqJ0PvpGbvfy8xRUW1LzhxfDdUUj/Ms=;
	h=To:Subject:From:Message-Id:Date; b=fPTf2AvbKp7AaYw/QCjh8tUMKAq+9ZoE0OLViBXiV2O93J5eFvoZJY/VTpOnR/Kv+JyZhV5fyPPckFEoun+QgymhXJaRkl7KE78tVXmdl6ESu3BVeVwUec/Jxf2iGLvHsW4AYWssu2YOwnShSnFocbk3oJ2LBZJH6/M7iYxe/Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJurNI1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJurNI1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CEAC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705873096;
	bh=tpcS5zTPppZQTqJ0PvpGbvfy8xRUW1LzhxfDdUUj/Ms=;
	h=To:Subject:From:Date:From;
	b=rJurNI1LCj9wzcu9Wvm7M4jIdjm6xqTg+NGIXrrfa1V/KAhAEJsYdvoL0VVgHza+Y
	 GABOHGNCLn8RT49QZXIpzgbmg7conPEvPDHaGynxuoJm941oXMfEa7xSNmMKbWirNF
	 GY5gv2+RVIY/JAY3qdIPJtMKxPNafz7bqh8rvXO1J75Pv31QnAnXRVZLnBBEha5dBG
	 QPXgi6YcT7jcw6QEzxd9xHQjGuaEpXb135Gfk5s/LCahO9Veer4wYbvo1eS/iWvFYN
	 7J1SZBBTzkKR3QxegaK4TTUy/a5yUQDEpCTib3XtchvK8UcQthmUYIKOv6B6Lw7gIt
	 ys7SAgz1wIm4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7A9C47DB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170587309636.2320.1700875929423579550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fa3a83ce7ee67a1b0ce504aefe3117312b0bde4fb4348a0d41aa7edaa11e5f
Date: Sun, 21 Jan 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705873096
