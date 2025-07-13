Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1773E23A6
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752368994; cv=none; b=XvpH+RboepgGEaBR4eyyhKEHdo8+Z9zo9d7xiQtjjwVIgWRhY5pv5dA4E1e6NGexEbgf0hwXgHafL9jJCqVbbkDDI0j0bOE+4iaOivwewC3H1YcGe6Xhjg5jGiaorwe9wktFIlVa0D49g3MIcV88p+KvSIB2D6tS1rPpJSSPQQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752368994; c=relaxed/simple;
	bh=/bQX/XHhyruz4gYbzRVLOpsbbIEHBEqYXns71nYUaMw=;
	h=To:Subject:From:Message-Id:Date; b=S7EpwLKT+m3F4T3VQC+r3i73SOS0gMdw/6JjUBlSjFAIvCn9MyaAFNNgkqncy1aLmCXX1aZo/CdVfqY9lK526RsidqHfchTsQNlEdnngSvsRo7kBGAEka7LFYuaaT8nAEK+5RKnwepAg0g8PQGEB6yoaKbkclsFpzrrmytTuzA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PX0/0Q2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PX0/0Q2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5786C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752368993;
	bh=/bQX/XHhyruz4gYbzRVLOpsbbIEHBEqYXns71nYUaMw=;
	h=To:Subject:From:Date:From;
	b=PX0/0Q2MGwviV5k6+KPKtZU8Kj4Dxpk5wo8nl/DcqgGuHTAzi6TubjSf05MdgIATV
	 pyYI+sHWHW0MzXgdpeiXqcPPY6Dd5CLY/SuWNKJMX+KyInsnePuVwL7ScfOXO39EQe
	 4TfFALg1XvTkAiCpaMDJmfvEJSKMOdJypJUlkU7RWtf8HLQLPyDQX5oQ9uvf8VHLoF
	 ZFhOSMIfy9p7hEwgn/POWIuFkO/IdLGacwWp13yz1ZFPSeSLZmYODc133ecOX/D4vr
	 /5ceWOdeGrY/QJ5K6Kzdtj081X+YcmON0BCgM/uTx1cAd8WowkBBE8ypJCuoi4pP6j
	 vEPvqlateFlFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913CDC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236899357.820.3767441288605801629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb26432e1f0e02f99ceb254578157ce79a6683e765969f849987c7556f702fef
Date: Sun, 13 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752368993
