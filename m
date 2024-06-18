Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FDD7347F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718697563; cv=none; b=eIJloOAsBxajmVzZv5xuQk78o5QoKE9bkh2B+/T5bSisy610N6avkCM3oJA5X6OA5wNBdgbbf261R5TOd2wp8BwCcrej2lHt8StAG5vZEpL5eIrbH+hnNU2JufbvhZ/5wK7RwUGI2XSUIRVCcChB1h2ZItR/1UdAh3KSChYtEY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718697563; c=relaxed/simple;
	bh=aR9lncSmdMC+7GNhDM3gKECw7EnMmwczGhUZsK3kjhk=;
	h=To:Subject:From:Message-Id:Date; b=EGIdL+1RqDVLV0gUpIFIZXPcRs29PSFNEVuJVMXOoLFvafBHh9QetV0OdNPeTzdcMxF9nHfWmG+usB0XPsFiNbxl4w6CMJ6O2ef9u1qNNwkaBYuKw0JPJTsQ7lZVhxk9Nn122iCFcmpUqFbqeahW/qyYUrqPqOMhQV/xuSsEVyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYKVwIWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYKVwIWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB53C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718697562;
	bh=aR9lncSmdMC+7GNhDM3gKECw7EnMmwczGhUZsK3kjhk=;
	h=To:Subject:From:Date:From;
	b=gYKVwIWf3GP7UId8+s7kPpKgt9Uk/5ZLwZJiKs4JCenIK5VJ0SApudlRLaGhfTDh9
	 2S6aQ5FqkFZdfeVWcww0gTWgrI+lqW8LN2fSzhUGA5giaCCRSNPCFc9/B5NqImjaYL
	 4okMmoU9ivyankTUrqOGRZGJsqG9Ux5okfg7RwDWvnQrN0IrW33+cLenRzZVa4X2gv
	 rWTThQJul7rLlhSd48+sK7f8+2Ekl8qh/SzkWNHpjsMQFrJPbOyCO3ws66BT07OPbR
	 qpZY0X7SAvSAwtxzAMRT144Jhzk4VtzWAnEXGVbIeugjWv3MzeF/5dXWuCgfpRfeoP
	 ZwGiT33BgSRng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51F9C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869756279.5438.7849988825752394335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e76417827d31a671e95f10437746254fdc83d6e0acb94c1bbcdc31a17483d7e
Date: Tue, 18 Jun 2024 07:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718697562
