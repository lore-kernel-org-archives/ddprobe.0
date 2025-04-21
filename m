Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33AD17BB6
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745251194; cv=none; b=R1Bs91AlaPr+avsDOhf1Q2pTgVEX0X6jfcrJsRadhci7p9mDKpGrjEW0PAfblVfThIcn1mqEK2q0FIWSMqcF2RmL/qZj4ZMMkKCmUam38vAcjVBtCY/LkgzGLQj5Ks0vQE5O5zklhxo/0Fmdl0m4Wmw3Q2M1cZKR5lykHLLQQO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745251194; c=relaxed/simple;
	bh=XvWzUQ0wtjsG9iqCM56jdkUYW4PH0auJ1eq7mmsX4YY=;
	h=To:Subject:From:Message-Id:Date; b=q+F/0N0jPdPFCjJDgbWQOmXCyjAiDR07E/TutIbO65t/65kYu97LHdr7J4Bqffwu7Qp+WQBa7Z+cnXcszVRijQE+E5svGCHJqi3MPxhOGIxPR82ml0Q3ahQq5bK1Gv7YByX3ZsRRDEPYI9ZeOyyhUAQH5hCoAJ+c5BSlXtbrsXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZhCD7jA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZhCD7jA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7B2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745251193;
	bh=XvWzUQ0wtjsG9iqCM56jdkUYW4PH0auJ1eq7mmsX4YY=;
	h=To:Subject:From:Date:From;
	b=HZhCD7jAUd+2dxbCmGqyiAwOyfnMQgR4x7Te7rQaIxbQjVgWt2L/tDEH+zqMp3Wjb
	 6Yf+lQGYP2J1JjSC3VKQL540rSqXZA16Gp+jggX7jeeMGRXJJbCLHImlZr6nfy44l2
	 O9gZ50YzgxH5l5scd6xinbnJtkjDzyAZNRc2W8JSL6UEC7jo18Jz8ZJE0fa0g63qlU
	 EGm1FhVbF2F6g/zGUUX8wGnLYnh5cLsTwQRQbPy0SBqzQCI9mP6cNhn9E3uL5MmX6G
	 gDITdRUPHeYvaHnpvcr2Y4esoqj4PLQrJjOrKli7wbbLJ2+Ds64QuxY3+dJ9Gv1/jp
	 gSqPrB2Pj62lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B36C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525119360.15808.5306178645419387019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b2de0d87d7099f078a5165463fb4e45d6117c9562d6be8387218f95013f962
Date: Mon, 21 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745251193
