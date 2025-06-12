Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B06C235070
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749772194; cv=none; b=n/FPfwhhnxqqiP6LcX78/6uPAnK+LCYBOOp/Kdiz77ccHVcnRHapN/5apS3XOzvemIm8aYtWnPb+9gsXPK0y06iiVSycVykZbshQU2kindJi8LvwDZA34gaByMKqVaT/DRAnvDvPjTabumtnVNLMIeiorakM7rCmmSQbEB6rvEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749772194; c=relaxed/simple;
	bh=0vZlq9QKweRkoJ+i+p5LL1ZH3t80BkNvRgsGcOEDpJQ=;
	h=To:Subject:From:Message-Id:Date; b=WaGRRyPKYxkDvRbCtahDJl6EESxO5/4H/po61w88c0K1aGRJ39D5eEb1GhdJbyzElGYjNw9TE4ueGhhr5uLIJZOuGARG9bl9fX71niPKfl0GZDCbqpY33XlNgWgDotPqAdJqE3ybhVHbSlD6a/E86TSOdiM6yJ5D80azj7N7AVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tjt1Lc28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tjt1Lc28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F632C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749772193;
	bh=0vZlq9QKweRkoJ+i+p5LL1ZH3t80BkNvRgsGcOEDpJQ=;
	h=To:Subject:From:Date:From;
	b=Tjt1Lc28KEDhIyM+5OWDmrGRdUBpK/TN5kxOrk4C6PpNCvtWg0dDD6PeRGD4gqfQj
	 PLZnK18hFmg6ROeqEjdXdAmEt+HMhaKjCbCPuwvVe/IQ4lx/wkfaj5eV6Pk10VLygb
	 WiP0vUAZWU2B0N3xzF03T4uZH5I9UNg+ep2ZKO4qWZdGQDgNm8My23TAxF9+n2H/oR
	 i3rdTsIF3WG94Zrw3+mM0IXvrQ3vqzStOSFBBcLhxsYAqjuhLLDHP+aweHRcTn+9kE
	 h11ieP1eEePNBMGPokh6Nz8qx7/cAk4lUWJK+ja/HuHot0vkYVUVQIGQ0oiduEPn4h
	 At6D2byb9j+fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC76C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977219358.2284.4661845053811214472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca3654666eb3500ce71414518be9745c4724c29657afa2115110b4e160757c5
Date: Thu, 12 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749772193
