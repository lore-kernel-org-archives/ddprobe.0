Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AB03C6A38
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780695274; cv=none; b=eEQOrAnocOG1XHp8QD4w8LVC6GwMobsbeZPxW+PAEsb2pqhuoLVBgNU0pEFtKxMnsc3Knifk2TOa75pW0jTu/Wc1sZ+MPKV09sPTPsy8Rh1GyHuoBexdFqYWTcqWqOLNg5SVSa5Tsw6D8KGTIIw306tNrdKHuIzx5MXCgl5km2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780695274; c=relaxed/simple;
	bh=fjB3b3tdXE9puFzwCK819A0K+z8P8FPJl3SdpE8Fzxk=;
	h=To:Subject:From:Message-Id:Date; b=q2Rx7m8BARSQKrnrrnUQ3g6nU7hjAVANYphEuZKzcXMxGpMgVRWEabuYYCJ3hHhmoSRhL7RCZ7b0Nzm+RvRTQ5WwZ6QcvQuuB1DBSKrh/pN73XoZlvLIKm0N1CK9S55TauRqdL6WcHkRImFGj7jlu4TLO7K2jOiHrufowNSTIsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nD/00Pre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nD/00Pre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C72C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780695273;
	bh=fjB3b3tdXE9puFzwCK819A0K+z8P8FPJl3SdpE8Fzxk=;
	h=To:Subject:From:Date:From;
	b=nD/00PreGIl4CC3XGSn4yRlJCxJuJNynR43C2wUU2HL+gbZF1EGmjFQqRm9CF07p0
	 KyrcbFXsnBgMXOZnGJJrUNq/0k/0zIgcHxdyT1AVtbwnoAB5nfN449ctURz/uDmBqr
	 UzRVCwkXhHunLpH+r/0GMZFzr9XNJb+aAiDRBuuSxckP1pFq8FoyKGO0BdmFJ9PZAb
	 mZ0e1oC7M80Hi9j83sRiGpp2yWeaWP64PhdMX6BGMBQZszVkv7lPYXxYVUy5L7/zpg
	 7mB8zNM5bQo1xj3iQm/L57zY8LWtOGskdsVWpaMiCfv/swiUARgIrAvToAcns2b2Qq
	 78trCNeepemNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB28CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069527368.31817.9689150036949312345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f47f23d85c56069c9e4e4a7d798d3f2cb50c65e523ead40d0fdc48ca37038b
Date: Fri, 05 Jun 2026 21:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780695273
