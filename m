Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A56901B4138
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786890634; cv=none; b=m/OxHiEMdn93CBFgmYSfCfZwx5LApEJITtnkM8XwCI5P2mIrS7OPpjNMFuCEtMCl6XAZLCkFQ45/MhyAl+1mUZr1C12nlQEB5ZhvABdRXDPEuiNxRCDsB64IM5/TkFDdB7C0RSyzskQQS0IsYbiLYzsn37BnNH3Ev7lZtxu9bc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786890634; c=relaxed/simple;
	bh=pZjPDHj2Z83qsW+t8mvgcROG718pLx65oxAF1+y72VU=;
	h=To:Subject:From:Message-Id:Date; b=CYdvhTcTRfiFZvwg7enAF4FE09KX4d8XsZDvj4F5wfH3Z8p8Exe6Tz4Z6iTysEW4w9PqiBqKejfU5WCBXM9ycx5EJMeRoWfDCQ5PjaQuuPi10EVeQywAYNx5KhZlpsKN3KkBxALP2qp2vTYr+Ck6/ohMWZgW7r4DtiXUN783eaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDuBlnEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDuBlnEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7832C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786890633;
	bh=pZjPDHj2Z83qsW+t8mvgcROG718pLx65oxAF1+y72VU=;
	h=To:Subject:From:Date:From;
	b=uDuBlnEPD2hqGfLldwojLPuCTutJJV1/OHbXQ+FFKWTsa82Uo6ab35fm9voCygzPR
	 Alkic67jo1cK9oKjyLxIJcZ/Y68GBOMay3TN1irGxmIvN0N5ujgKG79XernlUOGkhF
	 e4hGlIe/YXvYrLOMlsnCDX2JABbh4E76j0kGJ+C1y73mgTvpY+/QIbggQ+Qz0QKSpw
	 mgdYu7uxt8FzYfchQSTdBYfBcxfxrGPU++z7T5KaJF31CCJ9TXOufaHJr/XGbc5BUC
	 ySzH2XGzpEKQnQHgRWR3GyDQykGjMn/c6ECcxQ0msjU6E+DD4uwnm0kznGfgI4PNrA
	 eB/6tbeCz0E+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BB8C5DF70
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689063369.28144.2021603062060026877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c620eeb866b5aed678c1f5afd21de9edf444ee4d6e0159d6c38dbf0c55d55609
Date: Sun, 16 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786890633
