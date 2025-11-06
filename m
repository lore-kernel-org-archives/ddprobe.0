Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525EF2DC33D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762409394; cv=none; b=rxjUtBd3vMo9u2Hw4QQl7O7XowVhdK/hEfSYPOSFv8WK0v8LZk5Z7OyoE97hwXPS67+S6CIgAniGPVEpWboztiNXXuBFXxr9MIVhGD3zobYzL6zYYofFgGjbFHAsMhCrnsOqqMbS1Yl1uEV9UnDnu0KhxGAmWJYpJh+wDQ/rc3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762409394; c=relaxed/simple;
	bh=dLCbhskgii9n34OpnHGwk+MKtkORpmVyMbthjBlBFE0=;
	h=To:Subject:From:Message-Id:Date; b=OnWI6FfMnjKLL2JDBy9NvU+/Og4vb8DzY5Rp75FWf313F6A9z0peHhHXl77tBefIm8pnp9PmsF4rkE3VX25AXhUATrKQdDB3tA9OSHnGJCwY8IbRbkDSU3G2Zxo0SL52kIBsw2o8cMXcPwQCK3lUwwOAO6b/mSKQd99YxG7meB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnpnYY/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnpnYY/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E275C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762409393;
	bh=dLCbhskgii9n34OpnHGwk+MKtkORpmVyMbthjBlBFE0=;
	h=To:Subject:From:Date:From;
	b=NnpnYY/DU+UK1Fr07P2yhTJPvHIA3ohz7OMaiBrA1ubX9iPD6FsTnajf+xJP+yjdB
	 1z7azWEn9Nd3t5JIZtYX9jDrUyhk8YEjkgLwPDPcbOfWk5HniwrMwztY2S+b3vopjc
	 Ii+PTfDNZRrjSAW81SLVg9pvDPov+PLoUKNDYob/xf6hvuRmPc9fKaygvQlxG2TxRd
	 N0W/2djWV5z7tnObCG+BZRZwdGc9prv3YRDnrrdvvk4NRG1LkubydWkXV1sKBRAoaG
	 2cR21skuEcRMc3tTfAfdeUi1p91prCN4foEx1i5fJmxVb2Q69p8lhNg7FPViR7s4hP
	 JZZiTS5SNVkBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905FECCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240939358.5336.11670618662420836300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082cca906da827a67742adea904f996b105c0936dd9a29c56570ae29d3267be4
Date: Thu, 06 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762409393
