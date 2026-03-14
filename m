Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F55326945
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773513894; cv=none; b=lWih+oT1SnPXXWs8MS4E8ePTM/Yjiyg/FI8I3shEKefeH97YEzfTeU6QcJubJt6pOZxhQCBjFAizVa1RzLIKAVg84mqH2Fo6S1scXc5u70rn1sUQ+9MqFbB5OPKuf0tLthFig78qZ7/xKvl5HtNnH+7S2F9xG6V7wj0BCY4EUIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773513894; c=relaxed/simple;
	bh=Tw3r8R3nAJpZJV2oZQanUAsn+kNE5qAv8TJwgr1jMsI=;
	h=To:Subject:From:Message-Id:Date; b=PxSoZOBU/8C+lAQDy5izozO+/wQRIgYsnGzhTifNaa/8gYHQVs/sYNOoIorVm6q9IrHgmMfRRWCNLbscv374IrE3zv44112jqnMP0No89qQqPU9r+lEKKs7Tf92WG8InRxTukxqRzfB9idc0WykZHql7C87J98dHa52LP7WFif0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFL79BlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFL79BlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA8BC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773513893;
	bh=Tw3r8R3nAJpZJV2oZQanUAsn+kNE5qAv8TJwgr1jMsI=;
	h=To:Subject:From:Date:From;
	b=AFL79BlR/b71vWylDxcnJR28953xH9PrEnnge5aKAG5+1uGnrf0/VX5R8NKQjIPx4
	 ZR8Qxo7MMTD/nv1dH9r/AgzSDThBxA8maTRLWvj7mMyxKZQ7lEZ2tMmwjATmkvhhym
	 Ncbna5N2WacDUVBj8LXKY91Hjjsu/wY0K3XYuttDDQ0P7RSDMqFZg9ITnHPCCdf7GN
	 nV+mBNj5v4wLtUkD9/rFaJZIpQ1qgdexKkcKRe3WVODJ8uXGHhYEI6kTqBWGZSBKhf
	 xdyOrdvcOe5K8WiH9L43I5k+OVFTCDa7RQA5XE4q8j5EmMYupsfYnfTu9JyqtQ2F4z
	 EQMA3jg2vlqAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9919010706F5
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351389361.16446.7042690866904507163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8baa593a6de68f4b3ff3e7709b00505d254532b8a81cab88b5f84351f484798c
Date: Sat, 14 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773513893
