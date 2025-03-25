Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4900D18A6A8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742942994; cv=none; b=an0XMWevy1F0EuBZIW9s33LrX2fKL3cqFsgLO1tzFWICfDQn3ScQClnos+uxExqxRaz7S9YKoFplV2bDvFd/31R9Zui4yJiyBOq8e8zC6DWGjveG62Sq9PfWSc/9sjBrEx79LToD4PDZlxwzQv0KeQnbsPJF4nM08QQtNbneldA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742942994; c=relaxed/simple;
	bh=hd/E0BVSeRZiP+flQ7LVPQD2X2dsd/4d+/0YIy06enw=;
	h=To:Subject:From:Message-Id:Date; b=Gc7R1KLN5JASGZFdf7SueGpPBGXLVAjujxBERNHzumTw+fBwOqkFU9662PFaFY3v1ItMt8AZOMM7xkBVwK3tIktRJCmrOn3VLWLXbB9zEDYaMRZds3p68aMd5TWi6bEljAxTv/y/0WoCs8ATnGLpV2QCBzwXMBvj/A8M9KsWEiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ls+9zMuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ls+9zMuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8606C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742942993;
	bh=hd/E0BVSeRZiP+flQ7LVPQD2X2dsd/4d+/0YIy06enw=;
	h=To:Subject:From:Date:From;
	b=Ls+9zMuCiG28riahlfRbEU7nyzPbpB5gQ6zwXhK7QbkNNNN/EZ7xYL6vaqvRgqSVe
	 CkEjIOaqlstvUaxiBdZ1dvhuPiFxMNckrrOwxd+8i4WAKUyvwaJOARc0+ks31C0wcw
	 LdJEcHDI2kG+SA3tS3Jcj1ndEC8KYuxSJ//ok6Y9+DMGb3N31PxBCUMo5GGQ1TPPgy
	 kGCdjDPbTAHcHMmgCBBetaiZ3XNbdZ6nJK1krLt5TBw6B00yXlMCZ97DjKF86+DLEZ
	 jdab8w6Sb1Izk9qHU8C1gOWhbc8Bqvhhz1rarfdO84OGoTdUzkLf2ofONUNds4Kz2b
	 xLh5weztylGKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D984C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174294299362.25169.4501869337299467886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73efba4425414948dc59c8e34d228c01d7bf20599d763984188979adaa095fe
Date: Tue, 25 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742942993
