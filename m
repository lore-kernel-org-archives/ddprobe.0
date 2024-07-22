Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B9D8BEA
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721613354; cv=none; b=uUyZthfAs9D4sRM/YufCWaE14XMFdeGmMRE+aXjCR/VGqlMpPvCNJKs5ku+UjHaG3dsnOfcRiO7JGmz2ZTTrhUbYwNa2aHCfXWB3KHQEUmyCwFTEaVcRBfwoPo152NMjOnENUtefsmq/JoA3mSwhTOk/MvRLS12ok7cJAZmmCys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721613354; c=relaxed/simple;
	bh=yvW5NyrS7k4RBy23nvM4L4Ddli7SRbBiG1NB1kM+F40=;
	h=To:Subject:From:Message-Id:Date; b=oRAKwaCkwE1dtpbqmYoaOjbceDMnTOL5qWfDyNnT1dk8sMcFEIoAP4+v//aiBlAI7V5R/KD4dziYgnWYVz79ae9ld4zUSRe49vwo3XofHJCZ8Upe4Dixeo/hovJjaubDuWqv6JS6VhgqpGOmgMN4Da2OP53nuOuFO2NANOCLQ0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQRv804D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQRv804D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE90BC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721613353;
	bh=yvW5NyrS7k4RBy23nvM4L4Ddli7SRbBiG1NB1kM+F40=;
	h=To:Subject:From:Date:From;
	b=KQRv804Dy0/kMxnEmMPbosFOl3LGlbqtGcoDGhEl58gua8H56oQWTPqD0x7MkpOXX
	 9EgKG8Br8vRM+w6i8OWLn41GtlTdpJxaiqwrjiBshIRG2xvj+KGzcZ7DLZBsHUkxyL
	 RWMQyGLnc/9hjVjpLvAfY3+U6elhU9eqjJ3DUDdYKZ8Xf6QPHCBbBG7BAkK7nsorjW
	 ppZZK1jj+9D8EgDU2PkoINdml6jzT28hP6ajeRVMtvgzoyYrnBnm2Wx9mmSCLCEQPX
	 xRrv8EdEBRYgewk0SILjKUc1yikOib1pfy743EDBZnIsR5FaSP4bGxIZDT7BuuBt28
	 16EdineCFJykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A587C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172161335359.10778.1763428897146582210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90762f31f4548801059b45c057a3f469c14a5f43c8cd9690d95cdc496d2947c2
Date: Mon, 22 Jul 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721613353
