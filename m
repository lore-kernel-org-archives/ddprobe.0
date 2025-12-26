Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1132110F2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766791434; cv=none; b=H0DcjQTVs7o3ZhZuilOdK7oRffDC8rNaeamCb4ry+Qm081Y3d3Gxo1UOxjM1vElD75cbK0k3PISPgCTqHlyAmMuMGpc1kw47yXDgJsK/X6lFdLlRY/JvqMt1g+dUmi2l5z7KL2pdNpQ0R7MPGKW5nmkL9IF3MBDYSwV0Rmg19jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766791434; c=relaxed/simple;
	bh=RmmHFsM1CWOvjB7acod2MjLbH7c9Xsmr8XCHJnPonEI=;
	h=To:Subject:From:Message-Id:Date; b=BcDFXIiXhk8i5wM1Xjw5RC3KK0fc0uW7/OFLRhi5wYEMIGJ1/0mT5Zbrdv2ex5oU6sipbEl591Vb78yKHNA7plfdbacUSjoZOnSbTEOwGH1LBvH4wMBXgbE9kDeIHO1e1gbAaQWfDJFOG0D7g7Sd2ZjwXATekiPcnVmgFnoQ/eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hj3SfiN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hj3SfiN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB947C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766791433;
	bh=RmmHFsM1CWOvjB7acod2MjLbH7c9Xsmr8XCHJnPonEI=;
	h=To:Subject:From:Date:From;
	b=Hj3SfiN3jv9yhQtUxMqwdVzNep/rAQzp/3e+ZBwWOEgczNOBDMTcQ5fY5Xb3nLICw
	 B76enV3DJ+2jhWQ3OXXk8fDTzFZAFilsltHBZXMoqa2WKqmDMdXI1csqcUlQ+QGW0g
	 y1UX6gHxCoUabBXLwL6Tce3v5l6n49TOwwcS4pJ3KilH5VON1KhRJCOaiw5E2P5RnH
	 +LsJmk4JzzrFaJugnQz4tdNzVQfSX5FIe9Pa/VPJXITiLZxRHLhKNQ9E4P8jAplb8T
	 Uzemsz7W3Zo5k9bWJAo/vJcj3GZzFBtE31/bW+sj3qPrN6RZfOkCiocwZ0gERi/x55
	 KNuQvLqbFrj+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C92E8FDB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679143359.3257.6553508809471888228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1fb5aaacb813526c44bc4858ae270b9d782684c3267617d2552417a535c4e89
Date: Fri, 26 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766791433
