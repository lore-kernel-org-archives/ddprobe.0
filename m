Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73BA881AA8
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786921834; cv=none; b=Uje1wqndkueLcqJlXE3o8cehJYITMm4JE3y1B7HvWMLENlkRbC/pstq0SSo1cWW69lOXOg33kwbxXocDszaQ+OqAFsW32n6jQwEaKy5WoNmN2yVvp23wSkIK8TeQGgWk+DXrUswlafNElAWy+si5f5e0E8LCdP5oaNg5XzRJb80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786921834; c=relaxed/simple;
	bh=Vde+G6nhrLNrnPeJGuxYbXEUHIIjS2NFAwq0nrpFaW0=;
	h=To:Subject:From:Message-Id:Date; b=NevrTdUOTvmlBiNUHlqif5UMTmwOBf4HrcVH56nDsp2JAoxh6QtbElvWQYVtMbcSMktdPTMBfoMJ8Fig9ffHluwuEESZ6a/SEv/qVqUvU2lKUJulNSP5ImgT3Lh7qwBF+tBEr1fcgaFQAoTVPYaHzdG5hMDVhdglDTw03VUejcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTpmOViB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTpmOViB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E803BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786921833;
	bh=Vde+G6nhrLNrnPeJGuxYbXEUHIIjS2NFAwq0nrpFaW0=;
	h=To:Subject:From:Date:From;
	b=YTpmOViB4OVTaL7ZgBWMntpM2OzNACRVVxpvFM+zuH3tEToqskhpd/WsJck2hR9Zk
	 Mzyd6M0pRrX1M9FLMNvqS0Aw+ZGmAnE1e19o08N//Egbl9TQpmm7n6xeySGdpXitsn
	 FCJW9BIr6RPIOWu6HzvlToRY5Jpv8Oqsd3lHNf7qoQXr/vlen9df7wG3VWurGRgRql
	 vF2sOC2U9PRI/tE2HHvzNKdiqyjBnY1EhR9Esi2wXWDe4q1kzmWq98rlsh/1IAcWzM
	 V48eKytFYKEyh9I+RDM7kFCltU/o0h2FI1bm0tkv3cpquk7xNws4b99bzizJ/qGA8s
	 SNDVC3QO/FO9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC25BC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692183374.16556.13520831999852155027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a381980cafaf6e3d8f7a364eaa3bc87d69488d10f2f910a824f35640634f5c71
Date: Sun, 16 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786921833
