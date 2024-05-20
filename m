Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABF914285
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 10:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716200543; cv=none; b=BRLegvE93xh70SaGQIb+jLN+I/jZMowriy5mY/bcesjbZFUZRlhwGDIPDPrsHSJwyDFRSNxGptaHGyCbzhjBN4+BidUD9Q2fagv2AzYDTi8q0lLONVxuSX7xrfJaSAgVxT7ypkMdQ2QAsVKn5DMtD1Gh9Qd9tTVF5/6l/BSEBZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716200543; c=relaxed/simple;
	bh=7X+MV+MC+GC3MwopDxCHdaeeDL5MqtO3p3HU8kWiwm4=;
	h=To:Subject:From:Message-Id:Date; b=jXJ9f3fzEZhRcpxNTQKOjAx9wH4Ei0pZ2ItSJuR3fvL1V+zTQqpqH6lDdKmHt4rZ3yBbsCMN+yZNc+B1Ubi2LqeuDVGRLH9euU5uGc/6S9Yc0lPbfHv9YvSUaPhDnavcW6LnavvTv7h5B5QbmOAPxMh0S6UHwpz9yubGgJHA4VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdeTDuNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdeTDuNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD755C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716200542;
	bh=7X+MV+MC+GC3MwopDxCHdaeeDL5MqtO3p3HU8kWiwm4=;
	h=To:Subject:From:Date:From;
	b=TdeTDuNw3H9dTqd9OxLtru+C2SKEMhaEabPn10jZH3yYwC31gFOjpxXml7V3eMlPm
	 ZqAPXRBO70f0VPN7RR5UqXungV8JvWM5PdPgzy8z+3vlbZSXMsqwAGGNWKy8ki3Km1
	 vQrvcJap13pBivgpRrIRNwI/G+iNc9HMYvFfSQh9ySqCPR3pKiS9akC9EgJapDjFJx
	 Lem8rO4uWyIG/6MRpw/K8BP1oasJ51BT/sy6Gxg+PS6+VC7xRhxb8QOoT7nNdmRHkp
	 dQ0VyDbGdk2pB7cmucvQcHWE4xZBF4MHcAuoWoq9bhIXfhiERfPKI33rc3MjHtfrHW
	 pxMAolF9mzJfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC98C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171620054277.449.1208039074264668882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3507e0d98a5ce8a2ebc212c7818b8b55f5c2a7bb456aee9bc3d29d9628bf49c
Date: Mon, 20 May 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716200542
