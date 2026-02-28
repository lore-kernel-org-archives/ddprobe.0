Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCFF2BE02C
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772248494; cv=none; b=pj6VyMtGrAKU6wZcDsb+7c2KC5mDyJYdzovZXTNHipCTw+z2QZmhSRisJ7cCYL8T98IYschdai5i+IDv3JgvsFnTJ6A5Ip7nUgICirPCPXm9nRYJ52D5poiom/dwwmu1nDhhpU17ZKmpy31wUcMR1B4eqVFThEBnn0fv16IFz6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772248494; c=relaxed/simple;
	bh=VM4d+widUyqSvdrT0o+2D50p6+kcxYVzjzXh37V/SZ0=;
	h=To:Subject:From:Message-Id:Date; b=c3jom4Jr8M4k3sAeihq9VWKfJ2fLRSyMmPDJBB50b0+kfUDfjeiVy7I6S+PoWB2hieO2CJR4FBliOBBBsz80SAaeNBOX0m7qc3HixYbXDWlRTKrc5ISEyND9JM7AqVJiDim5xGU2NCd07kqYZtbzDAv+K2gdAs5ejE5eC8tFgD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyBSO6Vr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyBSO6Vr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE73BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772248493;
	bh=VM4d+widUyqSvdrT0o+2D50p6+kcxYVzjzXh37V/SZ0=;
	h=To:Subject:From:Date:From;
	b=cyBSO6Vra0N/NhaRexlZ4EsJxo2D0Q28WJja2kbVtzr89Oz/JNHW5+strjmD+675Z
	 rm0MQmxJKAlGmxCWYnMm/tqHiLrQPICa1ul39BE72/yBoIx7Z2uSuSBfxOarbRgNNM
	 +tNKXum3zxy3K57Py0R3cEmv7Z1bu2qZAdJ/38sh0Smgqb7ZL+whDiTbR3tNZHPPrF
	 t9uUUFPbNplTcgcG3XS7G+l8IAyb7pVmwJcux2ky9jTcTP3ubi0fKB87qr3rmgOdRu
	 RBwWmHnjhsSjF8puUaCwxoueiuKSRezjmfmgjt4PwZeqUmkEaNlZgwRNdFhOloNfCb
	 YifpM+r4TqV1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98759104892C
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224849359.7180.363323096053284739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce399df72a0568297855691b0319a38ceea40cb854d6061375767a809309929f
Date: Sat, 28 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772248493
