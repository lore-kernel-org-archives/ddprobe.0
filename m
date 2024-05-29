Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D9B37169
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 02:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716948863; cv=none; b=Wz8HxPbxLHNO2BauIrw0oZAnjafxdJM58ilbuB299bGfXlfXlDFWPc9dU7Xg9L6Rf2JfWYuBAAdrGxSicpJS216JmTxdpW9/yruqj3e4TCdFPdkA5iGP/7O+w44dLbO/dJMLpL/WJe9uBl1P+diIh2H4YmlWuhW1t1zewqDzcqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716948863; c=relaxed/simple;
	bh=P9k/Ygs5hbisC1r0FPAF66hNrSwp16MMsf6TPcp0kio=;
	h=To:Subject:From:Message-Id:Date; b=Lf9L0ezyj1tgxtywDaJ/AzDxLOpcIAWZwTnew7c4e+xeu4INIomCWelA2P3XQ8t4J46q8Xu4rXL+IBdxSGO0T6iJLueQHSpcR2JkFPq3WoZn6HhnFhiFTTbQ3kKuT7xiq5xNHjXdeiZvCYABLoHIUIrwiBkgfvnThGyijX0nJRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMJhJh3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMJhJh3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D300BC4AF0A
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 02:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716948862;
	bh=P9k/Ygs5hbisC1r0FPAF66hNrSwp16MMsf6TPcp0kio=;
	h=To:Subject:From:Date:From;
	b=TMJhJh3VlGnyKHZtUVhLr+fkG9d0queOWZtA/av8/9H00i9YHtbXdtr6KFJ1VHAoD
	 kt1bS6LTpKMc6o3aVeWWWT4DX96wMJqZZKkpEY3byRqMAPAck2J+CP0WrABHC0KJ2E
	 267sAqJxAHbUZlxakMBmlljJvIslDeMdn2t8t+Q6ybSSHfBthPs5Pb8TK9o2x0SyZO
	 qFv+XvirFQuMxsJyXEvD6BH6xYLCpiR8/0mV43DfKv39IFSRAQ6b84VlB9aG2f0HRI
	 tJ/5riGmeGwrUDD6TRUeSwd/PWD8aw5SlKE8fgcodMveJ3Sqzt5+uZeGbaQDFb8Dsp
	 VvXvCrguEdHGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC493C25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 02:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171694886276.32687.12995232066135187202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0108b11af09d825ab1bf0f1ed276f2eedcbc4a317715031cf9fce98d22912b74
Date: Wed, 29 May 2024 02:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716948862
