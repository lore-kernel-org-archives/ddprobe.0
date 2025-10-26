Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136D5611E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761439194; cv=none; b=tL87lTgeEmB0SzHxyO2esdPEF3AamtYDIR4TJNfMa1asD4pEZULWElHFkt6mxPmf2Puo/O6+SfM17Dj6GwEUcl3d8T63gKZSyR1Bkk75JEZEujgsJVa1YH1uf4yqZ4gb7rDYbqFzVAzHFKt5rEeAvQOG7/MXcpEPy5a7d+a6IGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761439194; c=relaxed/simple;
	bh=Ckyy9Ybdr3iFkP9pgLEMTcFKLAbBq9PsHuTUfEtx6Bk=;
	h=To:Subject:From:Message-Id:Date; b=YJE3DyoiSM5AOyb445cBjql8w/assUSdeGJUTSozE4ywcbKr8husCueRzU8ui1jukEGHUPB75ULp8IxuIEx/34KpVyqzmBccD+1VIKXpYbHm8Smypg1E0TwZvQXuhe8/KUbgYylRg1Fah1MsdKkJIAMsbi8gzY7nslfh/MC4RaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBqZWGDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBqZWGDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAA7C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761439193;
	bh=Ckyy9Ybdr3iFkP9pgLEMTcFKLAbBq9PsHuTUfEtx6Bk=;
	h=To:Subject:From:Date:From;
	b=eBqZWGDGU+mnGSnm76lMTNedgFucxNa1w2o2cNwvcUKvS/qFVexc7Tl+JWbbv/cHv
	 rwNUMCR8nI8sGBPk9HpdeMtUlds0KhZ7KnxS6J1AA9dImYcx0EsvermZyQf2L2OR2W
	 eU4IKJHJIY8ILFxF4d5ny7IyFB0e2jpN20GcSgkMJv5ImMHJhyr09bezLYg4t3OuFB
	 oiQ14+g2xfKRnccIjKbI2zYyPKRNyyTOXW3QvvB1oJ0Koc9mceW9Lgjmjjdy/kMc4j
	 kMTZYpsGuwoOtcEQDWO667mnZWSo+yW5OJ/ss1AIPoSO2knFKm3Ks9nqvK0dn3lOV9
	 Il/UT1dp33hiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9388DCCD1BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143919358.8307.3079935624655493742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9c6aa6509932ed90be98cdcd95a78fe7fc6b8ea66ae5ba4eca29d211b85486
Date: Sun, 26 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761439193
