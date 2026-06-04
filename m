Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193AF4A2E3E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780593274; cv=none; b=k+7q1riqt57nfMZVEK9ktLX0OLfI/Ep8LWMvkh+6jUcmRK1u1+jRhVHBWygwgAuJPKo2ImUza3Xrudk6ziQoL5BCVemgcyIlD3vZtQOvrtDa27b52Ay7ROt1JIOCtpbFjyu0MS2iex8DX41OQSNLlONWpMBb9q7GzI4Yb+IbRRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780593274; c=relaxed/simple;
	bh=syTCNn2Nl0FuQBo6gMpK5WYAcjfyqzplE7kL72TlCy4=;
	h=To:Subject:From:Message-Id:Date; b=qm8NRPkmMLcsrrCNBFvtDAk5Q+/RA8p/FbStIJRujySTshU8tnphTGxUXbq/FWT3Owd1sRQ00GfvaADVv107cUGH8U54+dLZCpppLGmzvYp6l+ITJourYLJseam29ducccsprQ4Vb1M2f+AxxDBbDf0V7ZADt/GnUdzEasZy5oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M00zwdWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M00zwdWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C9CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780593273;
	bh=syTCNn2Nl0FuQBo6gMpK5WYAcjfyqzplE7kL72TlCy4=;
	h=To:Subject:From:Date:From;
	b=M00zwdWlvWw5+pt4pN1ZQ1vU+X63eEXrSIhgfdY75qH6BbjJF4jhaVxI+i5Jp2xhN
	 WkDvx2mA95acRhhdO2DGFNVGUacpFql2f3iPHWlAcYO2S3WCongXp4AGruuGHXuFM9
	 o/jjE6lab8iVDGMyAPSmFC3GEGyoXoeKtqQCwFlVcABpKlsY6VRkjvM/iXyRTuQZ1M
	 uBGBuG2MA09EsDXlf/x6+Je3H5RG0/Dq9I8U57o6c13QCyhwi2ZhaE8FAXOHoVG4O7
	 ZbR4Pu53/7MYloCJtQwd6N0nfoYmCSJDth3nslLKIys2NX+ImVChxEL5KEkCHJwLXv
	 6Nsa0zWD7IwzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEE8CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059327370.1504.7196139752005924689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89640b8a845df698a7509adb317db16d8463df31f84a3b4d7b472d334ab6a5cf
Date: Thu, 04 Jun 2026 17:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780593273
