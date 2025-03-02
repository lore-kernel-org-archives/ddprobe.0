Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB77208A9
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740910734; cv=none; b=Gx/V8gCkNV5DC6kAScRbB9cNVQN5Ral8d+W9ER3y93beihQc9ywK2KCLMBRsl3dVpQwkkpO1sgtDVMF4axXMT73WDP7suBgogahRDENo7ox4y8qSL5lLxYKLBgB5GYmzMjvGxi/BRZWg7sRDRQoOYhkMKSnwK2duOOn/X12Hc5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740910734; c=relaxed/simple;
	bh=iyHBA6NWWZXl8TY6MnfcbraKxM/yTv3DSimaaJ4ERao=;
	h=To:Subject:From:Message-Id:Date; b=nefnE6RVkuvZsKuqiiH3wgJpF0AokAddHTfvFDKt+oUvfCeQEqa3gE9aOKix8fUffZf80Vj7xhak86ugZyN2DeTKisRbEFCLvvixS2+HfipzIA3nfPc/4O8j2Mv/H55XAuKXoHMB/Gac0Cj5HmnraRkYjrUMClZhlvN9kKfW8Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+fBpQde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+fBpQde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F10C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740910733;
	bh=iyHBA6NWWZXl8TY6MnfcbraKxM/yTv3DSimaaJ4ERao=;
	h=To:Subject:From:Date:From;
	b=r+fBpQdeEP/BIVAYBRJFj4/5LKNguJm3BSmnEc/JevIhZINreAOmCsQPjzdUIeWT7
	 dFDcSoaDkBmFKDTrrleHVCUQSgiNWgypPrhFhyDVT6OhrDe9+LzNEASZg5awLch7ko
	 tbQLEhehkS/lX7BauYc75On74jtCnZYmaKoq2MN7F5cUrnjwetDBNVZn9Zc5hvSZZY
	 Hm9ot6IAyjFEy/8HpfQ+n2oUlk9bTqpRbbQrUDvfWeNAVuOPaNuVteGs89/LWghVPt
	 g8jgQQ0c7nHK8zUrGey6Jd09puk2k0DPBCBOzOcjL7dLi6Lp8ESwLTh4Lwy8WKD0Qr
	 If3qK2RskV31A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2B2C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174091073359.28481.2654751251510147375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad891ac7347141e5e0ff05e556607077677db7e8ea8bf99e3738974f1a57d02b
Date: Sun, 02 Mar 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740910733
