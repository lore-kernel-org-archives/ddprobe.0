Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA7249EC48
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790163635; cv=none; b=uyO0AROjk5ZK8bQCouNiHqTv9QLOCRtPOOLLAf34RHeHLX0nZ02GUn+wCwq0DoL3yo0tWa+yYA1N6WstXozlPEO+cgpWHTVsmmO5JYSFSGLwSyhzAdPFdi2gwJ1vRqGndI7Q57kPfhBxkoTUogCE2QglBV7y+3usYkbWnlfwuog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790163635; c=relaxed/simple;
	bh=HofQid/89n24emGBIE4hWzU06OH5AWy4wealpSYIVOM=;
	h=To:Subject:From:Message-Id:Date; b=IvAX/L6l3gdeAvdf0zNETPtfxJ2UMnbmJGKDl6M3fYgRiEa4MBODFIM7d4PQxWH/Ek5UMRWiL4NutZzkRis1OMpSRQs9kvjfIisju9dABympKuyi/8XeE8KlC1/5WjCHdy3N4j0XMbkD1JC6IQrBJG9zVcc6sjwczp2QBNzx8Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXrWDoga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXrWDoga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06FECC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790163634;
	bh=HofQid/89n24emGBIE4hWzU06OH5AWy4wealpSYIVOM=;
	h=To:Subject:From:Date:From;
	b=sXrWDogakREKu01b+QvTRCHiTOrcgMuxNB4thbwXWWCYuq+XNq9iGKzKS2HCQLUZk
	 sR1541P2wZRbJTDRXlw2bGsaJdvGl1QGPYmaW0hlguSKro9EZ9C+Ca25K5Fp1ObRG+
	 FknIyZ2NtHgi6hHt0jVtbSElLQ1l1SlCVm3fW8LFb1YmADleZHJylNjo/jH4p7mz6Q
	 IgyKpdpIIIWMKXWZXWU5ecLMlINiUy9lK+bOzEdwo6eOjsLcaGN/UnbNbKg6Iltg8G
	 fqs0vuNkGai1e32gkDhsYNFUa0tLfbmDylDVT0mP+NN3nFRhcIK2Q0kGQlQ6L+MiO0
	 czIY6IAyxn2SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69F4C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016363379.20138.4534235961415315869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d98c565a2fdc8b7836a7fae0640f0deab7093f4c5c890f1651a19b7a2d55087
Date: Wed, 23 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790163633
