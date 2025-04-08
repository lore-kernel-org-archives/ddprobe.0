Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411578489
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744071594; cv=none; b=BtRc90+poAxDd17yJgI94mYMGwJo3D3mhUIm6FyNSe5huRQVhy3QofjZhjstX3zQBSMOc+ueBwaIrwikW0U7gfnPMqb+5zBcqGpj27fRfMfioBlI0TaYGcjNJDzgBtRUpE9Gdbbvr8YHG2W9m5hblSkdeJr7lEdspcxhBNFLFLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744071594; c=relaxed/simple;
	bh=/khVTMtsk5gCBKtrYsm3Q0v2m1v00Dtnsa/JYyLUAyc=;
	h=To:Subject:From:Message-Id:Date; b=QTi9mVGS8CMRqVSz/oMK0DZ4MFflMWkUmf5dgnTDw9ETrt5f/wIQ6G7dJ7dyWHLRZupLoKrh8iI+4r4HWPW5o4keFnt7LKSp2gCh3bIKZfG3Jj+p+bA3ygIphGIdfS5NKhS8wwxZfqb+FpVBR6Xt+ZPE79Pf/NutgIrUw1NDZGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biB+j3JA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biB+j3JA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E69C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744071593;
	bh=/khVTMtsk5gCBKtrYsm3Q0v2m1v00Dtnsa/JYyLUAyc=;
	h=To:Subject:From:Date:From;
	b=biB+j3JAfigiGrXpsN5OnRs6vj6sCMwzDw7oEH3sqJaLVa/vdFnmrVItTZFjYOLgQ
	 yushWnBokP+Db/EPbcQwvgLN51O2skrDrRPgLlfcqrMCb32UrljfQ+m6S0/Ky3habE
	 cCVPQyNBc+rpD+w/sbXAQ+mgqkEBa6fuHp2g33BGXP0wD4n1kxfziGQjz4MtDXnGZS
	 iCgIemRo9GtjNi+BVNXO928wiyplHnsPHBLJZBiAmsNVmOrMNKvTxeaBAk+UMUhEbp
	 omcQDIGOJrl7yJVLxbhvvQmY1OklXSfppM6xqoS908ELYYFU4my4UFa7GscvsfOh+Y
	 UADLSGox/pt8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954E4C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407159360.7325.14075147316036799342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885f27edb06800544ab6b7e7537b1c0425bcdb9d2a2bf7a06e8633a453a8adf6
Date: Tue, 08 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744071593
