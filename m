Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C58A16FF3B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727463954; cv=none; b=lYA+IkQTnQxSeLeYGtoslX4PY3u4lsp9yzh0ATJUIekxji0iXUjsfvePy7jDRQjWckw6h3/3+xacLWUBxznaQp+JY6tCCSeqA5M3GrUl7rUvBYM7IKwl+AiYK+f1F0li6VpDSWNgujPeYB3khsophpQ17WqNVlUxqCtabb31nyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727463954; c=relaxed/simple;
	bh=9eD3ddjtvT8ZVRMwmnut3eh57gWmN3zqXLlQc5mHE+8=;
	h=To:Subject:From:Message-Id:Date; b=OSPzxQNOQ5CGius11go4ux4sqJHVAN3Wv0gX1avcZGWIBhU6HmuG9LDDb8LqUBTv4VqjO3Vra3sZiNhzvOSObw7ZpGjVUgMQJeURcmULuIQWWB9EkZode5XYIFAkFM2Q/SpnoaP/EkCvbxm03Wj13lJNC9OcxT+yHnzjoPW7XrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1gD2gNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1gD2gNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6158C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727463953;
	bh=9eD3ddjtvT8ZVRMwmnut3eh57gWmN3zqXLlQc5mHE+8=;
	h=To:Subject:From:Date:From;
	b=A1gD2gNoads0HLn/XdhP+wDnlt0Byj68vuwCXJ6ArrlEpwQYFe4JD/tPfJMx8jPLW
	 t0ZXFTSuRqoxdH7bQI9jYRrORL2R4nysF0iaY3CRXEz+uwfXp6b03ove5sMIS9rAcj
	 ASkSLFC/gAOe6JqcQG02WrY/ci83xmRnpzuahlt6EiKDaqlgHeto0GsDJvMI3Ge1hE
	 OZZiE6WmioKKgPfNP+iKnFajsz2M9g48Zb+XsajAG+GAesCzo9AE4o0jUQh5Bc/WTG
	 pjhP4nurcK+S+e3mK02B3Y2WpdpNBHLTfUZrw7pB6DFWiaHhpPuOL7e/T6rAdUCBQq
	 1t4zn1SZSU6pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F4CDD1D3
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746395360.24594.10123861242305272302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75945ba66f13ab007e1f4785395ba9dcaab50e2ac0adb1e5d51cf5f39f31c1c8
Date: Fri, 27 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727463953
