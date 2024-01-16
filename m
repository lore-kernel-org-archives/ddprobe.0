Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57701CF98
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705431497; cv=none; b=L/ekKDxUtAmX7OCgvFSY5MEGEyoQpASGwtn+vMFho3ZmVPPn8OKVDStmVJGeExUgXGkRBmGAkIGEFc9jS0okx656MJeDFyOsTpzssm2M3dbH4V2MUygKgomoWrlJjaRZQDR0I6aEQx+TZepLo55gFjVnGQ67bwZyQPU2kcYL4aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705431497; c=relaxed/simple;
	bh=qVQ9Mm4JxDXJfMFobprJXSggAs+CrSEwTXBbTTxOQKw=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=QUlZjc8HOKTqr4MuJ3TFrOTve2eqQmM85MhFm6sQbrnr59vjR42nlRjQmGbivcrmiv9B2o+2PN34sZ5ANZIpa8NXnTj0NWh/Z9BQCZpgs8kdmtSVk5YSlPR9kJ3I6+mVW5jQ4In7Kig7d38zAFH0t70MaKsHBnvTdmIh62I8pn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhUkHnmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhUkHnmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C68C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705431496;
	bh=qVQ9Mm4JxDXJfMFobprJXSggAs+CrSEwTXBbTTxOQKw=;
	h=To:Subject:From:Date:From;
	b=EhUkHnmMIUuqrr8Bv9o6X1NQfc8Km8/QPmliKLy/acV0RQ+axlcUClyiIS7cjyn3K
	 VjO+xYfoVQGQZ/P/LO0OmGmNnIEX8RzB7wnZZUCSQgpBevL8t0gUELXZBLaFbBv4St
	 1+Mn7f6rr1IwW6HkqIYmyn2/tIirhgcymBTxH7XSfcCqN+pAyuMqDKzCX/AI3tXNT0
	 2eadgX2HD2mD/AE/VkxBn+19Z0a0+yn7IYxEkVQ06zvDVl7mM3X9TohJ3mfTUbWQN+
	 l/4Q392dedx2Htu/YGDTN1lbkzo/F6Q6judLtrsFRTJVk2QnVg4duuyoAFgNNnDT1u
	 eD3TBwmscIHiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC68C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543149637.14703.13549560524581728072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62f3cc861611b8dec3f7b994e9dee9ec72e5a3dec6f65e98aea1c7b0a08eb0e
Date: Tue, 16 Jan 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705431496
