Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0E03E1730
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778591434; cv=none; b=fYbdMOd5bT4mS3g/ELj+psV9ZBeHSsm73ni3/wts5jtwZlgHF8i8gijzbrGXGX441e7H4T61cMitgr/TqcifxW9b017xeRYMJChIlsh3tKlDwuy1eegX5yajV6D3TgrBMt1qe/adp8sEQW3DQucWVGRnqHvmOEFG7eXKzNSogD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778591434; c=relaxed/simple;
	bh=dkYSI31SHdvTjlVzAtoWlUsxO2djxmTE6YYKXyuaNEI=;
	h=To:Subject:From:Message-Id:Date; b=M2tjDGmrx17442bOXNpS0gK2+q/X9GNZcqJKG61V7DbtWBoXnm4WXcT/VNNgju4fApKT5T9MJc9Rgl8DqQnbyzkRv/ZaqGW9vmz0AZsT1zZYCBRjzKFCtoPRudpnElh8TYOv7zrypBzcDDRunGeUuogsy7vFiI3R8UtaJWAR2fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NojLFQ8e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NojLFQ8e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFBFC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778591433;
	bh=dkYSI31SHdvTjlVzAtoWlUsxO2djxmTE6YYKXyuaNEI=;
	h=To:Subject:From:Date:From;
	b=NojLFQ8ehdxVDuKtUeEaeftQ07iQneElrPyWBQlclieFIR+W01cVrJYPAPuigxu0V
	 ZhARFW60iCqazQOakHTmVcV2FDNFUDEpX9LxVg5dQ4PfSTnifZxzLZRjqbHCPF9lMx
	 SalFVugSNOSHbkHTohV1UlDLbF00Huz9VPZLMMpsm9n2hPRtd/OVJpazzjV199C1N9
	 Ic5IMsMOJ5Dzprg01BWVkUFR5joRoZUKpsVA1eUXzVxUJIH+QXXM8Y9BFgeP1Ghm4Z
	 NTkP202p4bxEzG8b9RQnj4rOqMC252HYwRDIKkvOX+ulv973gilWZI+xvUErDzBDAs
	 ZH20vrA3KjDyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2E1CD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859143369.15750.17823083758192644405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 666185c7310b66683d475a75a7bf6ab316c217d02c959df2684baa44b6492d88
Date: Tue, 12 May 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778591433
