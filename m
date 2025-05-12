Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4277D19DF5F
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747011594; cv=none; b=JEKQvZbbEfSOTYKFEqUp0whPgSx4n1DQs2x75abtB1Tg0Ra8clYWT/9S/dbNlJwYhtZp4YjVzY1SslmrgQvKyEmfdmMeHAvt7PcQW32ZQ6l85lnehpDFDI0OuH8ephtawxvnGqLLNl72ZaZf51ahA7LWQfzu7hyS4Ub0VMnLKSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747011594; c=relaxed/simple;
	bh=ccbaC8A/GmpoYKfHtuYaId5dGTfqvVgi/O4SBWkCxl0=;
	h=To:Subject:From:Message-Id:Date; b=LIOly0/ryzTEeEzVBL2AzPCEPrrEEvTohlLwDODLwLRGeXjOZkTh5KjyyMcaO2xZp1rHhbjC5w+ubZf2p8V9Jpn91ESUxHYdn2TdftVefG6j94mr1zffOMM94+FV1fADSRUAQnSsbKH4G0h+qpS5u6K7ZNwhSp5AdKf5xzhk394=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asQyoKbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asQyoKbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E22AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747011593;
	bh=ccbaC8A/GmpoYKfHtuYaId5dGTfqvVgi/O4SBWkCxl0=;
	h=To:Subject:From:Date:From;
	b=asQyoKbGVhGggoqfSBX07gXszFJbwBKz5p8voqXozFr8trygTnX7UUuv7VK1h3k3r
	 YWvclwMiiXNntrBFFp3N8eUjF2vixv8I8mlAM4Q2XEzeG61uhaQyZV1z/X/ZxjZThW
	 VRVLyIWegpGdiNmFJD/utyqUxui0l1pQZ+yCXkbDxgkalJ/MMdqRLHFvwHjUGgIqln
	 Wjhe6Gt/Iq6KhITv5PuUc+S/CwnD69vWf6+QBRXgFY+B3V0SNLtQgHLaR3/XuQn30E
	 01R+wXwZJS1hyHD8nXJ1Jhm1F1aejMTQVScK6Wz8sydrdjrXteSOB2TleW0HIVz6tT
	 eQJ1dPPmVockg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E823C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701159357.19562.18211427540068992651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94bb0f71449a9470409e383d34937720cd4cd9cf7435ed15130e57fc35ea93d0
Date: Mon, 12 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747011593
