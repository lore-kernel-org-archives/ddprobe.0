Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B0D3ED5CF
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772814294; cv=none; b=Z6vmgIW2L7huUIfTlSVhq06M7IbdCP75HiomfhVoZ5dl/p4Js5O6q64zyMvEoXLC5Aw92dsl4wamCyHpZKUVCiFoMwv69KVceHT0x5HXD6FQe/ZffuUNThlh7JrGDiIgz0kaAp93Liz9ZIxmBTfeAQtRrJK4/y47cKG2Jaxz24M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772814294; c=relaxed/simple;
	bh=ri5ifOPBT4h8TF2P5c6nitW6FowREkyk30YRFSDj5F4=;
	h=To:Subject:From:Message-Id:Date; b=BcnGcOgzU//+whgX0nDjQ3Wvt4YHxmmAafO92UXU0DQ+5CKqrb1GAgk0r6Z4nOG/90ibjiIbMocB1KQK0WBLN/7mhRzKKcUOa4CUqofbrgk3Hqxy6rtjeNo8a4DGXdDYT82Ytg/SGYS+GAZnS/vdB7hrpf5qW7SHssqCLnESwb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdSsvLRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdSsvLRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A940FC2BC86
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772814293;
	bh=ri5ifOPBT4h8TF2P5c6nitW6FowREkyk30YRFSDj5F4=;
	h=To:Subject:From:Date:From;
	b=XdSsvLRyTVuu2jE6Hdt9Sy7GgN3JW9Sy8SwqRXqygCZlgaLdAcFwxelOHq1LycH14
	 b2Cli+p2sH755sq7WnVnS2QW+yo0Fk+gU6NICm3SclAbGRzQ89wYowLpzNkHbxyjGK
	 J8v4omtP5sggLfHIuSNsqxU2/Xxpp6qRDICZ/lEdZ0SHZcDGj84BsS+Wo4GnWHesJ8
	 VFJnzv/Dj7B4Jiq3V1V6MjyQVN3JWnsQWernrsaOkge7LVj3Oeuskm1sVz5VyFrZGR
	 KfUxDeC/N38tcPCXiXIl3j3vIkSn0r9NcfFJZxtJ4Q9L0U2J8QOWZ7xMh0fUzlJ7Pg
	 njdqz9jC3t/rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EBCFCB61C
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281429361.22121.8266037294196749871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64aa68ec2beb58b6e46e53e179aa42f8be1258f32ba8519b66db4f7e83f101df
Date: Fri, 06 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772814293
