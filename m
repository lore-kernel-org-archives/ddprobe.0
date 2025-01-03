Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EEA1B0F15
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735899954; cv=none; b=LUde5kKtZMB9K+0jPZSbppLOhN6JdDSc2Dr7QTHT9/nQE4Vd+vI9Y95A2gyRInHH+hUXFNKVT7S9v5OxUa0yo1BQo+mcbJm4EIVu5/1m0ZuZZgzDKjhnVYsLhrT2dl4AQL0iHPSlclVKUXJ06ETBENu/XYAi5NCGK23tuvjCgPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735899954; c=relaxed/simple;
	bh=ObmCR6nt8StpBItJNTSE5ZaSFla6oJUThfgv/F1Xcu4=;
	h=To:Subject:From:Message-Id:Date; b=lDkRhM6L3AIT/uC+n/ekxf00BfOx+feQ6UbMuuj0PmSOjjdxm8dgkJ6h+PN+tyqM1mpf2UUU8H3GkY6GjKPH4DfH1na/JESBOgEMt9Lz0DBnJ35zl8axDCCkok+738tbrXIxaBzfOK4H/TBT2XI3Zfy9Ppg+anWj6mpM3MLuXgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDNCtfBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDNCtfBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DC9C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735899953;
	bh=ObmCR6nt8StpBItJNTSE5ZaSFla6oJUThfgv/F1Xcu4=;
	h=To:Subject:From:Date:From;
	b=oDNCtfBZSHPTbZJNLPiYclFQGqLEgf7iApjxaqIDzSvaby7lAZQ1b7+RDM3h4vpZ1
	 LuUUv52hd9FCqqoOSfmj4AmTQ9jx2kGDNUyBd7LLw15bjfY0JgY4gWg4DLroPDMLQN
	 C5yLiSwduJU15RgJAROrnMXMhQRqyPfy2cdhC6/yPEY3/+At9U0+8u70aUVukQpeBl
	 xgurMQsSM0ZEPwrpYZSwK4JuXLFPcKCKKp+gnIFFggU/MQOsJ/Kca9+rVPnfEqmq1/
	 sCrK/WdoyuHnBwOMbN1xFYIU/OYButl8Sgt0Uap8DqzAYzXu6LM0e6iNLt3UY0Q69x
	 O3gY/NGJzHZqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941D3E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589995359.3796.6176724661639868664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bad0c7547ab1684072fb49b4ee2ff881bf5d8f41b76948cd5a2a62451634e29
Date: Fri, 03 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735899953
