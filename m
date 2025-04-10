Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5078D290BCC
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744315794; cv=none; b=XMwiKL7zFXTI0S4TL7PVLV/9BiWBkbv/6DMw8IuiNgkKthYIVAOcv/rj6riF+M9gxmLOUPXkikP4E6IbLGkqaLPqhvJD/1LG5fOCr2y5u0rNojv01w5EzkUkW6vi8rxyE3NL/UahfvJDuZBm0f77vdXiy5Nth2ZmT9mFbPaT8Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744315794; c=relaxed/simple;
	bh=WXX4zQR0ZX7hBR70e6GseqLPrLVufu6GVAwXg31AquY=;
	h=To:Subject:From:Message-Id:Date; b=qCmf5RawMBzngr6vu1jc/TPHqgeStsW7lY/ZVNyuplJNDK/+H+PuwzalLfTSqFJ+vtQ8KL44f0GXldVtktlWqBu+oEYL0RwjIDukUVD+agPPAIpTG0HYiZ5u4LRs1vbnqqI/vzymEx/S/rZ9r6wdyKoPCAc+ju7lIEqr9dc/7Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgsFydcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgsFydcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE518C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744315793;
	bh=WXX4zQR0ZX7hBR70e6GseqLPrLVufu6GVAwXg31AquY=;
	h=To:Subject:From:Date:From;
	b=TgsFydcKeGBJ3OA970O02R8rnYCEin5JcGLBTFl/1P9sljLvh1Nzi/E0t+a1CHqCh
	 5rznCW31/9QmlMnpseQnZlINCXAdwwBBZhcXK4azfh85sDUIC4kagdQgiJUlR2bBz4
	 15gHr7wizyXI3K6jRoJj74/T/uzaDCiHb3mNN39/QeozV4iH+zMvdDQf9sEXRp29oF
	 +1KHTOHtCJnOmjMzP00is2gC+sy5N17QSLPIyokB7b91HqyNTvSLJm2IJK4vJKuYTq
	 GfzwakAvtiPbLpXAdJ1OcQ0ZLxaPwUWsH3KH39A1DoHU97JTrYbFhu6Jk5G2Ranxlv
	 609WOJJzf1XFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85A2C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431579367.29696.8977976576223878331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12a4035529aebbe49f515547a97350dad43c6f630166f1a036192e68ede17e6
Date: Thu, 10 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744315793
