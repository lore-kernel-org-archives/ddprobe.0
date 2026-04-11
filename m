Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AF4262A6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775911654; cv=none; b=LcKYjmI18bW9EViFazw7czSx4drtR3HvG0TelDV6x3MSCoNBbBb9dLvqxKL+b9VMJMoFBfaltAM3eJ/UuHs52m1KQKuaW5SbY0Cg2MM9t1sOc+Pm3JWO4dBtJKm7ULXT/mODABKIawT98UxQ7Qtetr2Rptw2zxns3PBjtJ/ECQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775911654; c=relaxed/simple;
	bh=GOcP+LSEiXED+wA70aZ9r+ExSr0h2O5JhiFugG1J1YI=;
	h=To:Subject:From:Message-Id:Date; b=sp2uUYmPoDSpBNhmqmHidwun2BOPXPM2WpcUiNeRRjGV2admPlXGc2GM7WeHDX6EpuNVKSKLpnEl0KHMFqbnMdHkJOdx5Fle8SeW3T/zleeRBISS+aIEj2umXktSJVHG6l9Kk6xD/7KZb0mdamxQhjBXEAtgZDQriGktTX+45bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uE8MVw4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uE8MVw4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8012C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775911653;
	bh=GOcP+LSEiXED+wA70aZ9r+ExSr0h2O5JhiFugG1J1YI=;
	h=To:Subject:From:Date:From;
	b=uE8MVw4Oo/qbKFsTtMVHySu60gAvldzwvs7GoXEj2I6ZSCbnevVH/tzBFqX94pikV
	 eqFTdxJLRkG/o1m9ZYGVrJmI/RezVYQTNkrUJnexZUNfXpuIGa7evTYGEKt1fEqgSj
	 9ptGO3vMF/HWcicSdEc1ZWoUPVlLJ7ocavWyk5nK8uKshxk8yi8o36RQYbMBe2lNAl
	 QTybPUV8WHRvlqaFq6tx6d18pb8yK0re3hkWzUHCCXmPntMTFrptt8NYE21KQCQ8lA
	 iYUnwpJSj9rcSUhOqQJSG/zGpBsFm9Q3rus1ltWWzE9S1HezvUZqeWe2ilUIoe7RPJ
	 QBTdY84VNFy/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB070F3ED43
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591165368.30893.16177003831437243154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49cadd92134190574aab679cf34b80d071e213bc802d41b88cd8be3e3031c86
Date: Sat, 11 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775911653
