Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B081E9B3D
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751566194; cv=none; b=rE9uKCzf0C82aSxNVgscK+gv4So+rz46vaeyfivx8oqnl3LusM4V37aGijD038IYUULCZmJLd5mDFI723K6VViBr/mkkJpBBtX0vW69N+g7rqgh1OGPxBG1zEmPOToZry1AC+oxaUMcN9rQL+5SvSZtBeYvb9bw+BYW8diFXU34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751566194; c=relaxed/simple;
	bh=mNRv0hiDz6CitOPpfzwgX5ENc7WjehG1Uoo/56GQYaM=;
	h=To:Subject:From:Message-Id:Date; b=bavFCXUaW6Nvk7voD+rKLL6H7pOhLVAguWLI242QtukVLu0IFi9FrhjO9A1Ql01U2x3vAfdvaPrTHVNsoQ4w5H7lXxkBdgCaGvjzZu+s01r+gSblX0WlIkbf+h8W995kNZlJHZ7RfNlu42oeG7pk/wULmASbVlUgIGTjxI3F8HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJkF3hHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJkF3hHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99DA5C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751566193;
	bh=mNRv0hiDz6CitOPpfzwgX5ENc7WjehG1Uoo/56GQYaM=;
	h=To:Subject:From:Date:From;
	b=MJkF3hHeqnktImSIo1L4NSH0O2Ed7mOCBl/65ZVjt6QHJ8YQUB1RdgkKd9GIgx0Eh
	 0iAQt+sARHf5y5eoxgOpiCzIA4qQNHa4c8WouCUlibm4WOWURk47eEm7D4SX2USq4Q
	 z4b1hkmRb/9cuwae1cP/OU9NQkMFHcG83hMrRwSEk+XVscOH43FMSjMmTwoCjjRdhk
	 HAvUV4a2szdBfcvotWqU9iuEDgLifSAD9xFu2jVgTJJVbzUczGY5CAQJHQH+C5wXsH
	 L0rFQ8pKZv5OGT5P28BnjQz6oUwowHyBcpedCgSgwB0XB+8kn3PfyR/u4zjEUSVaSu
	 xbiwc51uoVQWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3DAC83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156619357.28892.13418467458544933645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fabe9e3f650f766c148a9a0ab366e60a7ee518f258f12cba42ce3d9f293e65a8
Date: Thu, 03 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751566193
