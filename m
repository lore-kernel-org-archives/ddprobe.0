Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356B5CA52
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759031394; cv=none; b=cKFbeGCF54bJpteOUWcqjW44AYkEmBgBG6Vtd9ArmT/c5CPFHBrDXLdeYgls9F5AbJ7RtHBmyY/WHYtHZZx91zY9dnD2Aa16FqjIzab8yXMVDDb2oGJGcx3l4LZwjt0o35TE/P4FS8SNEGnkUU/iapAxcqiVef5UeFuCoUDPEyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759031394; c=relaxed/simple;
	bh=wKGgK9zx9zVbyMQPqNO62gdMsEOc9Jp7PCjWaptZEgQ=;
	h=To:Subject:From:Message-Id:Date; b=K7SF5Rj3/LXQ6UcyDLCHSLwtqE2BHObsIgdDavelnONvb9oMBPlyRSZjDUMCsP2/X91yvGv+JPY1N2lcNb4M4v/LWyUAaBKVLMY12vt1OJFJEUBeYNxWX3Y3q8sM6C/SAzbGhZQ8j74PblKUStWcPVFU6Na15d73jnmTQF/Bk5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWolnJcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWolnJcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E57C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759031393;
	bh=wKGgK9zx9zVbyMQPqNO62gdMsEOc9Jp7PCjWaptZEgQ=;
	h=To:Subject:From:Date:From;
	b=WWolnJcLyuH8+/92epfgcbCI4GwiMPMzPO05bfvz26THwOLNsSInQogGqaL0UDHJP
	 wQE3TSQgoyppTEZyv+pdXjxo002cnZOvHom/gDVcETY5AT6DmtU4qT5DQdUz2aDYPs
	 eCzS6a8myuWhcyvrGhAEmiu5e4FntjX/QdQaORovugxHsZ7PVh2y7vjS05VrNlHM6b
	 TH8VTk7w5ssU2N931APZGrSLU6FQEPph7QwNx+M0SdRdO70KHr979r/SjGWqmkj+9D
	 OENBKKpabJ6+TlNuiCGULBe4kPBTWR0MDfcI7QTBAQEu1tdPR7yH48JHqGeiEiuBWf
	 LGHlou9+chgVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FB2CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903139357.9577.13495306594179264451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f843d1ee54584fdff3ff493a6443aa843a09ca32d0eb3cc957fd1fab080d53
Date: Sun, 28 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759031393
