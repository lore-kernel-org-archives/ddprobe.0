Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F042E3E5564
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773756894; cv=none; b=EMUJF2T6KqJtglcNoafLxv/Ogg8D8UghI+7+5Wfi7UAjzx8Q6faR7eRwaaj0zFIGRaenzoXW8mq1txyhIKJQp3VzsmIJ0bH0qwSKvO4QXTJAZDsMfQ2Y4jOEReSuqYamzyMBweWI8rIizcK0zROyJV6acuvk1PsvHgCXNioiSFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773756894; c=relaxed/simple;
	bh=hSxdHXqBQT+QWX2h036JRUz0vsr59t1Arb0wsuwG1jc=;
	h=To:Subject:From:Message-Id:Date; b=L6PfYyIPLwVIRoKcg+gcEpDMMJYcnb/VLMhxbqwgGrnTKSAJo1L32Ri5KrT35x/azxQRj/auQH6sCo2q2qAC5UzZsmTMTQ8wd6CKtAKNyRYvwHBtBYAwOmGQVOEbs2NnGwEsQiPVpxfJPL7V0MYrlKXpXAMc99V5aiBNJt6qEBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isStDbuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isStDbuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1E7C19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773756893;
	bh=hSxdHXqBQT+QWX2h036JRUz0vsr59t1Arb0wsuwG1jc=;
	h=To:Subject:From:Date:From;
	b=isStDbuFTLxoDzLay0wtxeqikBobKYGDNHTdpugMcqNDR4tMUu98gg0an42SCbueg
	 TvQ3rY7SXbQbY53pJ2Jjm9GxgA/pOFopvY1Y7rlg9LDFSAMRxDe964qP/GnYqCBiR5
	 2lOIpAOdCWSe+XDmsQBd+WXGgg/DbSIs4BS1pCekLy7Qgy3IL2lWuFnD5GOPWKmEeR
	 /EWgx7ZRc3VLSxwbpx98mp+Y9vyPX/AR130rg7Xsed97NZWalMO5BE3AMGuuScBlxv
	 Tf97XMsm8hH/H2n9Cln4vycFbonW0XE9saNjUwU8ksvo/nXotlZ/4RGy22xvhiRNV2
	 2QqUmf1tC9GVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF85FD877B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375689358.2801.9893744735101801353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59721fd358bfd6e2f5843860e6fa1af38a7888bdf81f13a7256b97eeeb2ef81d
Date: Tue, 17 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773756893
