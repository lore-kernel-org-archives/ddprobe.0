Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F72B2459DC
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778899234; cv=none; b=E8L+rScOWtCGbGF3MZ5uASG541hQ189F6f20hvtCFnPjoNoaVGw8NGA4CBMquhZV8J0H0XNhbmotlSnYHGg4SUj9FIKDLkIqJvpDFbEKIwyR0DVOCjmVMsGNiTX9seoBNvh1EnZ3mzieeFei33s/UnKQdlHh/vwr5Jtrmoszo2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778899234; c=relaxed/simple;
	bh=vRbLgTzyP1fdGTp+z5SU22PZ2IivMSF0vqnzki7U9yU=;
	h=To:Subject:From:Message-Id:Date; b=eJ9cFUJ4o+ZKGQ0SVDoXDt4Hrbd2xoFK84rhwvAiMLM2XvqhEBp8/i2eevR0i0g8tq3jZXD8o28LFKVnUAUbKOSa6sgb+0Z2zPCeNCFwWFT0uCJQK1FTs29V87PG69kh0ZnHc6W8s3Y3JHHs6LIdqon3LoVs/bg0uzwtaJNUtFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4PqaSpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4PqaSpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63C3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778899233;
	bh=vRbLgTzyP1fdGTp+z5SU22PZ2IivMSF0vqnzki7U9yU=;
	h=To:Subject:From:Date:From;
	b=g4PqaSpqcJ7gCrrP3WnLC+4XWT6OlRGZ2MKuRyGrWL5K34BzsmE/3lswndSUCJuvR
	 eFC7EQYGNCZcWWkcG++tvXC/F1qx4M9ahNhidwITTFKkJdyRbCjqcAIjOcZUkzfAbU
	 onqZhcC8rP66aHXQxm0RPJdQ29Hg9NH/AyvY5k7i2mxQtt2cj2MbePliqcGLTVzR2l
	 nBZEywAgkvDL4VlCmDstel0S8K/jSJYgAbP9qn2rZ1nNuVy7W5368iFQ/P0kTer8QG
	 u27iGlflee6quogkW4byyOZ82FnEMH8b9HI+jr110cE3HF2eJIrb3F3U/gGp5wYH1O
	 Eqs2JJ+/72uCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E3ACD343F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889923370.27515.5256388541460730968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121263a58626082b9a128a917044da3b4b66f38a4856875ee1adb5615e0a1875
Date: Sat, 16 May 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778899233
