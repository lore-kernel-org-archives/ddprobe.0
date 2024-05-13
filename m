Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F007E58E
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715635943; cv=none; b=ryxEy2PqwT6dQWU4kuki91nVvvdt4gXqc7DqTk+AW3tSmBn2xMwSJGoSbFMxcDOOKDPrHxU8sC2b7c7DciQAiuFqnYd6dI+CNLuMluYDn8BCZoqfDi8gEbUzfm9ZffFoGp8STKbgkToeN9X72TSeWoeKCgjOPTMBMABinO/twcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715635943; c=relaxed/simple;
	bh=x3TlKHI0y9oUwLLq4rUbW6hoqd9jYkOF9snvTwjCDQ8=;
	h=To:Subject:From:Message-Id:Date; b=V3Dk6KbTa5mOjeNG9Tf1e0gX8DrqhVagwdH9uT7oR3Riz6MELMSmfPwDCuzNVRGARQ3NNlizPFT42l7moWdonZ1EEi2M/lMA6Ilh/8kl8682BFDwyU5NNetH5jGcgkol0a8c0FIWxl2f9yUroKH9ASs+3Xepb47TOpSiTvk4mtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LN0ddUey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LN0ddUey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D617AC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715635942;
	bh=x3TlKHI0y9oUwLLq4rUbW6hoqd9jYkOF9snvTwjCDQ8=;
	h=To:Subject:From:Date:From;
	b=LN0ddUey7iR9d4usK1V/Nhk2D1etJ6itFF0JLxE/v1p6rDkGBYQSclxuGsaXhXviM
	 U5IQKYFevzh4uQx1xkgpg6SkBXP2psxYz5540CMdgoi6SkLDY0DkXy/UEmwLFY8VuF
	 SV97s1iVLe6Z9NVsAW/HdeUln2kd2PC9GsEDmGZrdgVRaeOXKKNwQOlYgu/wOS7Nep
	 aSqrjzvHNm+tePYM9k/QeO3kW0nEi1u+2dlT64SSij3F8sC1iCWhCZUPQ9aVDhWB16
	 OBAYZqSnQJCsTYkFsXCXQdNqucEVC5Bnj006ZclbeYv2FcS1eMjMIJhZJFtZO+f0dr
	 bm4YUQkWzO1Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE35CC25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171563594277.6138.7112648341136615596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934af3e4f512d28e7cd87ba676e441b873bf0dd450f2ba20c1d27f444bba7110
Date: Mon, 13 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715635942
