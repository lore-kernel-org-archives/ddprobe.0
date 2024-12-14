Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2599F1A8F7F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734203754; cv=none; b=YW0r0qLHETk9gLFWm4YiYGxW23iFtFwN4vrnjTUsBtFxHIaAqrrAiHqJWRNG2zTFhjfHyNueMnnjrrYjWgiIEuwzuMZyXkLUcc6JQ54dUsWAqvDazguovh6PKvVz/G5DbOk1c/Zijg0CKJxL4U26NzwIm+xT7UXE+DKouFDpiO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734203754; c=relaxed/simple;
	bh=VQClwOfUj0StDgqFFKdW/Ns8EpktGHFHHhbBffl/z/I=;
	h=To:Subject:From:Message-Id:Date; b=KqeFWTsTRy+gjTe9SWMO5Bu4K6dtj5K5PdYAHSmm70f7u6S78N6X0cMJma5owp8PGQCSGVsPI/l7bbtakEy4A4Cai+GaNMBQsjUMhxyLPB6+851gvwqdnqbsANTI0AxzWNdiMK/Ndh+bZz4Umsjq/Rkzdr6IWUUlw+g4R/AylrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiUSzxER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiUSzxER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF16C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734203753;
	bh=VQClwOfUj0StDgqFFKdW/Ns8EpktGHFHHhbBffl/z/I=;
	h=To:Subject:From:Date:From;
	b=LiUSzxERFiFMHeUpwuT4foicJQ4nRAIsDN6fsOkPNjnYfNl2c+YqwPI2wc0CKZoFP
	 +Hy2Lc3qzsriy24r6YKvOA06LTPowFB16oI0jxUAgawQm32IP9iyw0hcPsqZ31KkqL
	 TX4HWZyMVwHGKnGd6nSzx8lZGUWa+KG6vjP5ceuV/wSB35zifa0hUcy0T706hEt8kM
	 YQ93ecgUQRLHwmIyxgmgtGFXST1Q9YiZaHqg3BOu//XdSGWj0berefghCtLsf8a4RF
	 RG9Fy6p4UFHdf3X20rQcinJqIptVgWtaNJBeOfnpSLrQ3w6TBcyI3DJcZz42wQKonZ
	 amkKF07kTPVhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D24E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173420375359.32526.6631524843991236804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b0e7e6845e734dcceb16f682962714ad43ca7bc1498737f9ce502cdd15397d
Date: Sat, 14 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734203753
