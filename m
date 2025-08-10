Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224A120A5F5
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754834395; cv=none; b=NdkmKeq0eY/9wcxo8RlEMSP2Wyx5j+ozpz1ePb47igm5IKMbmFaLO0b00pTmyR3DvVitD8qd8VTcT/ft9Pfq15mHlWYlHDJPjQZt+1vGPR2yKHtDf/ybiyYKvUIe9y75PYz6vDTHsCDQWsClSyoT5woIP2BMLh26031i3enIBhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754834395; c=relaxed/simple;
	bh=BHgipp5M7UtC2MCgZZtvK47bA8NanQGLJIWSLt4vvaY=;
	h=To:Subject:From:Message-Id:Date; b=am9hRBPi4+WsjM+Tfo7GNSUxW/goA3trQhAwaXtzU89gjq+cBvWXZoo17rKEnWeVMbGOT6Pp1d72AsFNDnikLCePvJA0/JX8s79sOoP51vjfIw3rp+81rXGARs4DrVK/sEhQqyz6DLzIZO5ru7uNxJ+cVSTFk1tyEw1MGO2SNQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vH9GnmDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vH9GnmDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2019C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754834393;
	bh=BHgipp5M7UtC2MCgZZtvK47bA8NanQGLJIWSLt4vvaY=;
	h=To:Subject:From:Date:From;
	b=vH9GnmDDyqmS9wq943M/sGPLi6LQFyNjrW/6BTnhVUPRXQ1xfVLx9KeCzXH2GE250
	 ZJX9WSL4GYLGQWp3M757zGYLbrNdUQqh9yA5DvBZSxzFJdyAIAxy7is2PuEhMuD44w
	 xZwGadwxvSEApRq5SttLHR3F+Tf53q1GIUH2bmJ41J1RX/TaqGD3lxx/Ey9HRyWHqM
	 Zjzj1YsQwI/1am2HBz9poOmYntLCuWeP1Ik3C0Qw533l0LxbBOQMWde1MWHod5StgW
	 DFB7vM9jjuv4t6QfW16QfJi94/5dMQgTka10wS+VGLppoz8p9AQ3l+Re0XRuNBYiyz
	 5S00gnyK0p4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B26C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483439357.21118.7203249390080662728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83b3e5d5f1f696e34cc7bc35c45e33c0dfd401e0063e0a22e9e47728bdb0bd9
Date: Sun, 10 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754834393
