Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A8B1E9906
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753300194; cv=none; b=DOBkOZqN6RzQp0BBg4gk7TAMnfCRJJdRPHlQW12G2ttzRRqgAq8yB6u6cBwgVMzPEzzBcWMrhjUJFgjVOZdtf/WJlPqeIWV8mI5XJL6J+LYPQOVH7+u1iU1LOYrLlaegSHOqe51TgqxysJfAgG0YebdkOIhhZK8zImV5DnB1h7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753300194; c=relaxed/simple;
	bh=EjdOEtdOv8ad0otXjDI4FFO8nFKg5dUYl/JRCcsPoE8=;
	h=To:Subject:From:Message-Id:Date; b=H7IVaS09mx6/AndXljL5xDeEweT9/UoTJcyZr7vISAyiQviq5Gx703nk2pZFnd3FFt0b7L1Y1yYOfUwtbcTDDkXtD6XyQ9YwMYBcBa0djmpNuAkmX7vWdq6R7ElQUhzXTs7w4WJPZXtUzhZILoHO/td+AIPr/ja5wV2o4ws4NXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/VOhErx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/VOhErx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0501C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753300193;
	bh=EjdOEtdOv8ad0otXjDI4FFO8nFKg5dUYl/JRCcsPoE8=;
	h=To:Subject:From:Date:From;
	b=l/VOhErx/BRBaRDSMhIBSXlYAVB+PKqNBDqiGFUz8zZcN3HV39lECKofWNpnJWMoB
	 PzqjaaUFgxxvY2CnWAQEmbeXDyOMT1ZilYNTWgaSrynd6awnxrgqgOBU1GbualphiG
	 TxqmuNtu5mE7j3iZI8J2Uw3pIxKz6KpS3dvv6/FnNvLX2Fs7040YBMDHwa+Be+5l2r
	 ljCDUW4BRv4+txUmNvqYM3qhQGReMcXQUIuBaQA96qdT2kz79djTgFLebCmnTMNIaH
	 SVzC61innkHDAkY+aDEL5kpLf4G8P1U1idR0Ny96g/BgzU75+njFkG0ewOK5ksHCE+
	 vJuD2pxu2PtNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F5C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330019357.6116.7808477407727831127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c09369a180e775b7726ef72c42e70a93a469be53c1e06e5843b5d0dcde5c82
Date: Wed, 23 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753300193
