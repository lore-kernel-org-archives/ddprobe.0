Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655B13BD646
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783579714; cv=none; b=FYlMxnza3rp9MEJc1D4dsA8HbzHyFUtH1x2xhlxLNfXC4yaXxFZE0+3S/XQlhJzbEZDBol8oKHsy2FSob3IB/JwMfkKTcRz2zZjG+s+ikj05qupNoTmlGpegnDuHmlhQTwvedYT3dxqeD0GY7s6QRjJFBWzviwIQ8CANwto218g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783579714; c=relaxed/simple;
	bh=jdBb//s+eqwz0hGTnHnx0BwaIiIoRPYMFSOutcolw+A=;
	h=To:Subject:From:Message-Id:Date; b=S9XC4PEiFGNqp1Y7f6BkIrQrlCXhyMuZhagHSA78um/jZWB6D1mUVRj2M9pZeiay0r+o49eLCm6C0Tvp7A8p6bF5Np1kc/tE3HHcu0rCTGvmPtBt40AMr8sCFwLrY5kaucIlCiw/vMPO2OVfpZhFfP/NnRcyYEmYAtR9Rwqvfxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmkvvWR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmkvvWR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9304C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783579713;
	bh=jdBb//s+eqwz0hGTnHnx0BwaIiIoRPYMFSOutcolw+A=;
	h=To:Subject:From:Date:From;
	b=gmkvvWR32QXcNCZJV/vXIPWLI4dxpUAQ6EnIgwAStFiRysiwiq0aR9XZEQB3O2EaZ
	 T6UJsQu+yWZ1z20dH0bpHid10avHkfZvv4vd3iqjcbOHcLqAcinPs/5ChCYL/E/Fy2
	 toI7zaeT0mvLjHOzrixoJxMnnxH5rPYTsire7o76fDnH0UAUkM21HJ0Zs5WiTsn3k6
	 jEdMNWWSBokO7Sku8khhOupWihwOtQp1GHplRUFG5xzDBcsKCY+4K0shI8CCave8md
	 kQHEFY9BUSZARhvzpqn5VVoVhbzVpkePs0yn/4//7vmF8uTQIMUQ0FGRdchoW+vW6n
	 wDjcVzAJkh/Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51BAC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357971373.8214.8505935940872832872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9cc5e035f9433668251a05c35a9c1a6ec9a480ce689ee645a8e56cea9c72f1
Date: Thu, 09 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783579713
