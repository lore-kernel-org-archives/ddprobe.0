Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5669F3542F6
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787505035; cv=none; b=MTOTjFDZAAjX0g03AadC/ciZzXPLfKFW7lamj/2diTtX55CZJKnhdYhDAeYG3dJoNngv0wrsMNgjsJLAn/QgO6g3g4ssTlyr4WYMdXESMp8UppM7Kh9IPSGmaIOC+uloRSC2vOgE0Xta0EGkkJVNPek7npDodkmO8AxCQCe2LPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787505035; c=relaxed/simple;
	bh=rvdEDIcxxPa4FiokOnphrp9eE2PrwKL+gTJTyl72ks8=;
	h=To:Subject:From:Message-Id:Date; b=sWGaHjIQxfX0HLsi+b/LJrp7AYoPbJmP564N8552WVZlWjLX6jT7XPkgodxpDhqtWL7WHxkI2etvo78SLSu1S0WE/mleZnjffjzzfDIc0sIEHpqA7Z+uOHaI+2N77f7AGRQP9/P78ZV0OHwE6t0yKflhQ7JfNQ+pN1KBeR3BwEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DogAttuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DogAttuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A0BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787505033;
	bh=rvdEDIcxxPa4FiokOnphrp9eE2PrwKL+gTJTyl72ks8=;
	h=To:Subject:From:Date:From;
	b=DogAttuFInjwj4LDWtVMJCgMyPFrROVDKtTK6qLlF9cSNyvLiJXnzpTNRZunSjBXW
	 Jg+L4OBLoRwC7TTh/QST0CQ04T1ynoEgPj2c8c+czcmQKjLr/nRtY2DXMsb4JiWZHS
	 u83TlOw2L2/KbJBIHha/BIpV/AM3HNJa12BnlOMAnQmtQD4YyzEC5qgxLNQK/Q6ker
	 A0B+psqJvcWuPpSiMKFjE45xVckq8Wlr2HxnyF8xrjPGyCGe7Uos70FU3aoU+iCxAe
	 G6p7yP2fRllriIKSQW39K8IcLIWvzSk4E4P/HGJITI6zk1okwmgrFtGHJBNwlSPz2Z
	 Y3MVV8QjyfVHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1880C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750503369.15701.12613803450155272198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aabb5bf1e00403028ad8ed98fb8673452a80e9d4176394d14ab466a1a71c9ce3
Date: Sun, 23 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787505033
