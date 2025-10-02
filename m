Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4689525A2A7
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759414194; cv=none; b=ehymBhF5Pdixs6jDJHjFwBzm/q0jauFRhsXS1cb5WqENSnRaSumRbSW3JIY+2YpeyH7aIIIRWYAYjDOVEQbiUA+a6b+j3n4/WThdeLLElGk5r8LTCXvIqQA2KRrcvQiiJu+Up0qdoPvfxRWiZIr914vE7Yt2kor8eAfYI/S0m38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759414194; c=relaxed/simple;
	bh=mnClOu6FOgcBi+57I8yHsfdpgip0ds+Civu25w+LkOo=;
	h=To:Subject:From:Message-Id:Date; b=LG0cgDsx67IPySsPLbjZAXLbzKXzEX7DldzuFUKeRPOiEceQr+2A/2NYfj2Z6RtZSM3rplYZAFv2VwMCGtJADJIe71rfDxxQAEQ5vzMZSxcylHIlU/yFMHFHv0yUmsSyXbiZmlkvb7udaOMmi0M7mu2OrRpwtfA6QShIiJcH+yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUKzGbqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUKzGbqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C29C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759414193;
	bh=mnClOu6FOgcBi+57I8yHsfdpgip0ds+Civu25w+LkOo=;
	h=To:Subject:From:Date:From;
	b=rUKzGbqItb64jPsHgWf5mQEgt+ehIxAFjKbaw8BRZaQWvaFQtlmXtni+Mc6Gmuwgj
	 ErT5AfGfRMWJuDWh4qNKUnvnuZDhYCd1HVvOVpeVFFsdXdrPDuAbI6Z8AIVJayXXRd
	 Q35bhciNz+0ORYltoF73isRUwUOn64x4pStOQhr9hQcUHOX1Mz+mR7m0g5i6YTYxRL
	 vKcpXrVrkNhh4LsaLLt4bHO3ZsrM3F6TOvKi2G90/2Vr4/NZwAyswGNw74XDV5nbWq
	 lNS4i+a5GKzPFuBL2y6eklxP934L69RGjd3NaEVvpWhB3hwi6xTXZsGBw5c/JAmAVf
	 D/8I/fhnQqNjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F79CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941419358.29129.7712532404533214668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91eab8e7b367e89fce7c208f2b71dab048397fbfaf1c0a5bca2def69c644b83
Date: Thu, 02 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759414193
