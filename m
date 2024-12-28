Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327E878F24
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735416354; cv=none; b=SO6mdSfg7w2HArbTxoUh4G5yrebeknsoEeF7cGE0nXPhCE1nLc0j4PF8FjP4OXjQWVqhL42cA7psk2rgKpCTeZNmzKaxVmDpvkjOkTChOVLhuQnPvO1uPqOdgqRLou9ebbQRwg/rljsUjVe8Yf/tvDz8tZIpNR1cji+WAR+Kcn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735416354; c=relaxed/simple;
	bh=gjSBeuFqt5JZSSyVteHrBNZVhKC55FlV1gEjovQItI4=;
	h=To:Subject:From:Message-Id:Date; b=DN4OTOdi7kVYK3QkFowWrb2gH4usop2Iuj1l8E91T7qibifY+V8D0Wg7arYLhT2TdtzEBIie7goFJYIvwSXL2dGA/c4YNeGe0772IKiRpQ8dVCuhuczsdF1iySyYjoSQ/HbTNtXh1vNb7TQI+2sDycR+VcOfWURsu1REa6brVcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwCzF+GW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwCzF+GW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2C6C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735416353;
	bh=gjSBeuFqt5JZSSyVteHrBNZVhKC55FlV1gEjovQItI4=;
	h=To:Subject:From:Date:From;
	b=lwCzF+GWWMjy1KP9u9SRzPxw+dp1xIii04wkBVAi/7fyjFZWJWP78Xnet7Hoy4ash
	 anVkZ4Qm2MeXO6PSUgODOsq65SFnRO88OZsqNQWCqtxI1/8FUrtbVvCLQuhk+foq9+
	 1MBkVSJjLHAJy6nIV/U+wtBXy5qfB4GKpAEIPrnwWFF1GWVj6mfHA47ZRpNtQscZzX
	 NWnmdBhAYFtPUJZIbxMhYAUa4MRWWeoSYQ5lvC7fBQb4FV94lyxjIgS587CTwEHEmB
	 ebmrsVv9+YnsPzjFqm5kxMRV4YrwkTh+0eX1wxySMAD1cHMYGtzBTorHhxrUSwbPy2
	 3sjhfTkSXGwdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9938DE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173541635359.20351.1232066934724835948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20227018c33577f6acd8875aab626be4abad755d73551b9a722a95220524ebfc
Date: Sat, 28 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735416353
