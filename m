Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE3B1991DD
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746457795; cv=none; b=WaTKT0njV3faMMS+Ux2R9lUK0hi73FUjBCYazykAUMiGjOQvh8syMxzmkdjSEdKx/7V/SPptyz8r+yaAvXkG3znxSaq/nNaHqVZiVe3zkZVFTUqL3S5V1uEQWjoajWv70OT/Ml7Mfzy76svrKVUqiQDtRBRSP4dHicBUZOtivw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746457795; c=relaxed/simple;
	bh=pydgX8vvKWsd3WuqTAffKVLmAll6ftd34NHALYYUiys=;
	h=To:Subject:From:Message-Id:Date; b=RHjWFZUzGSRnPGdgJqECsZwdLIacGETYuTLmRZZhCFARr3MzaOyXjT5F/uQJNACA/KtABlDbrHcbtG7cwNT1W11UBCA0Fl3vMQnsGZWjJLwBqmzhH1keibYTdoMPD67ytaZNCGb9/aHYr+HJyuMx3q2aKc4LAisXFYKgrspyMeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZ74BrMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZ74BrMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E599C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746457793;
	bh=pydgX8vvKWsd3WuqTAffKVLmAll6ftd34NHALYYUiys=;
	h=To:Subject:From:Date:From;
	b=IZ74BrMcgipOUl00z9c+Lvy85Vr1hJPLaD+i4dZhr4DIWR4RPem/x31Gv80s0jSwt
	 yWe9Je84KtAMxROgd/vCuteTtPbOmCFbQpoyTrrnbCaeLeFLydUHRBPpOeEMus/pQu
	 E7APdwj8DtEedVGK7hGJDTdBOmQc+uB/ETaIHky/Bp4QYlB7hvNJ4TdIXaXLYRII7R
	 nD8rZJJWhkYz5ii5pcfNf4KI8FwU4YxrqR2dtTSjwnqMHF45gwDN0tq6Jn67SNMpcI
	 8LnywHBQRrsp58m2YoM7nIajooPMy4QQ4sZQW/9rG0Pn/XzNvcmtl2e1wXsh66LQZQ
	 mkz2F4F80mljg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34DC3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645779357.15383.2372209596710969001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88ab0ff3a690789cbebee54fe6593a7d2e573e01d209093ff07d14c2daac386
Date: Mon, 05 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746457793
