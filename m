Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364362E3AEB
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750254594; cv=none; b=ZSSpBf/WNtkys370hF1H4ixLPjPjFWCzhr2I6/IEavFxwF4oftFHEh+ppq4avDCkcUyWBADvVyrgVbAG7/ROPaFDciG/HFn/A8gzEJL7ypBEvAHLsfRpQFHyhP56LiZFVulWSbjxtI1y0deJ5EhOxKdsCL9iF52TOUOiA+KgEZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750254594; c=relaxed/simple;
	bh=7pn1OelfPucP4WSTCwywLLLNz4q+HJewFoqeiM8S/QU=;
	h=To:Subject:From:Message-Id:Date; b=EXEoRD0m7oCbsna/LycHv5qOio6OgUrVqByp4XoVdcEKsF+UHh9gDhtQU9XanzayoinYiu9CDSWqrUieQK5AbMvieWKnr1ULNd4qs9gDUJP23n6UzzPJp10v99iK2ewJiiXa7Qme2tplPN5QVxe3q4iQHn3Omz38LmM9/2efl8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYafMcIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYafMcIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD89C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750254593;
	bh=7pn1OelfPucP4WSTCwywLLLNz4q+HJewFoqeiM8S/QU=;
	h=To:Subject:From:Date:From;
	b=BYafMcIi12k2FJWf1hkDargKN1vwemso4Pv0eyrwfeQRQVopzMtxCIwDaH0xzjUoF
	 v2TvphRGPecvroH46yDBBku/c95NA8PbZJR9coq/LKEYACrbj5feWopkNw3QsE7JD9
	 z/9Ur4VmXAIYIj4o7wOle/sorjxWl4a3PnELPK31gpiYLX8AGR7uWO5nD5vbOkstYG
	 McCBlU7BZejq3ZoK/R96bAIYovbJaV0+WuCbhbdY18TmgkNIoQZWS//OutjGvW2MF7
	 Qgi9FqoutL/hK72TKhOZSgarECsfzfF7yjrFAyFa46MhwBxQ8YwcMbrs/JBWDfOXiT
	 YieZwHkz/KpHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E2AC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025459361.9772.13701907994160969927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f3051193792dc2912d18659109a30924b6058157951ff8ef7e36a0b5b48ed3
Date: Wed, 18 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750254593
