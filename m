Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F5314D703
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 12:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715257343; cv=none; b=sdIhssG55kdKhwUlSRf/ex+EykbOaMiStTx/r+CjDWyoMKr6oZ1UQE7CMrLIxIdYVVoPlr0i7iIdtMcj191SpgvgbPOgTWJ4e19FuJxienTuPaS1hCYpQXLVeuVhsdDv+w6nrzkR40nAD+BWA2azguNT8QumR6GMUU97i1somfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715257343; c=relaxed/simple;
	bh=46pwdUp3kayzzxMTNxq9J8BjWPcSPKcHcqO0Ryp2cFo=;
	h=To:Subject:From:Message-Id:Date; b=NxPoP5tyiuxsIG1IvrQWLEm+aqja9FdSzYMc2vStDfUOQ5nnJkSQSgAjc07j/FI5aTqfAiFEE6ttsm9YiKXjqv2l5zXylOxDQ2j8jst7qa/436hl+IVij45/EolAgKjIf913xsCD8BfxOJEg6TrWHi6vP5EcpcOLS689dewQQb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHv9rkr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHv9rkr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DF3C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715257342;
	bh=46pwdUp3kayzzxMTNxq9J8BjWPcSPKcHcqO0Ryp2cFo=;
	h=To:Subject:From:Date:From;
	b=YHv9rkr0Oy8KvCIeVzE1t8yaHn2NnpdXbpEuOVYPr2novpiBlQ9Sg9QA+Z6BSl7Yg
	 xcCFydtydQ5sE/YBiGW6wocBR++z9V5Yf+IohbXIp38N3u++3NOiW7B9Dmw3HrQdaY
	 sbEImrVS6nTi+9SXiHg6ja6UCeujPsmUlrS0C8asllYsEUVe7ZVfKw0PoIWcevwvIb
	 eSXg5TsL9Mf+wbOUxIBFqltqktpl3Y2Fmh0Cuk4oAWx7qcV1fewSxNKCP+ps9NeM1R
	 iWEirf4EME5xAGewbdozPWDgGbOd+DsY5ZkOBSZoKCCK9cdjjInPHP/7vRrariU51L
	 RrWjT1jsLireg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD477C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171525734282.7849.13916371973470877117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cff10579b2c00d4158fd5e35013f1f09596133d186c2b47f754ebf3ba932440
Date: Thu, 09 May 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715257342
