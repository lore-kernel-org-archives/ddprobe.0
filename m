Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAFE3563FA
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786167034; cv=none; b=LMCMkWJpsyoImlj1wPjRv+2A1L4ZCQbOa/A0VzluwcxStNHjijdEu9c6L3k8dwo1qbHsBU5Gh5mPSASojVKrpyv46MT+bVZbjRtlMLn656WI5NDcQIdL6TqnBB55eChOy0zyjx11uIIpFRGoIMufkir3ZTJS9jYsgxxj9i1zU0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786167034; c=relaxed/simple;
	bh=FoYEmSeOPoKITUx6eMdVGxjaa087iG2XIDTuecUxzMc=;
	h=To:Subject:From:Message-Id:Date; b=sDXwKWkz9Vbc04m5xZGlVIO9ZHLv3UXmDSLqbMPtJTuXY8PEXmia8Y1DGws8U091KdOCnPU0q7/M8Ywv3gla5wiUOPMtw2hxfxwfH5/HLrGUCHblX+Iek4mQ+PPjbVYCdDZEC3BQHIDSEtZVem4ve141lghGxWaGVlRDeDlU7fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwAOOiyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwAOOiyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77A0C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786167033;
	bh=FoYEmSeOPoKITUx6eMdVGxjaa087iG2XIDTuecUxzMc=;
	h=To:Subject:From:Date:From;
	b=LwAOOiyxLJILKtBtTWwKKRy+nahcsWwIE7SYmG4YxBjgpkklzQpDawt5SOYRuOOWK
	 V6eIyfg9lIyGufy7MOtJD/Kp13Vbba/Pn9yFGytrMmExSzfOHJO14lo4m2uMlnlKmY
	 yWvKWn3hOKLcLpUj+T68jToBqF3ZlVC9vdDh3QhIrcei1IndICCDjk3wJ0iYu7fd72
	 lhl1DxJh0uLQ4ifKo5VQ45mSW2YPdtA+L/hZd3f1sES9Qc1aJelWQyUOiHPQNd0T65
	 xAHJtfh/iZnw85V8EmHzKO00eZ6zy72AcU+IY13TRCXEGHPYmQrTYy6MynCWMYjCS1
	 eZtZmNsJeo7mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE25C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616703370.2885.11517844791676321522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e77c1c0d6866ef00fea874fdde9ca32ae76c859c7d39adf61e2afac8757979b
Date: Sat, 08 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786167033
