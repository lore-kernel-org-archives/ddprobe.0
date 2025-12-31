Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F804227EA8
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767144835; cv=none; b=T2wXkSBKdB9kp4WUUiaF+oe9dYxyzOFZk7Wg7CTpupY2Hpo6OtvxJczF99vax5hCquvXRNybRdkHu/WIvQt2T6qz+btMnkOANY8MpV84NGHFuPuod+I4DCl06aEps1IJ5uhCkEGi6PTewZFueAjWBHvTqxHq28BijCnN/aLcqxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767144835; c=relaxed/simple;
	bh=Zxk/ROJmlC25oAHjwRyBHRyFT9qkBAyNYsZVoO4oDug=;
	h=To:Subject:From:Message-Id:Date; b=da0w7t2vN9H2IfGuJ6FmMsaoLlYKQvuUmVwq5UsDTxVqFIgnLGHfZ1UiDmUiD6Y3axA6jdSKXv/AfAHxh7Qst6duXXNRNnlCGKJVWfHR/Fpqc1/n26D5fmyfOPSEUwiojTDRgL+KajSBFiObbsLCz2E61hxKNFlzX+TNQbWASXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6qt1TkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6qt1TkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1927C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767144833;
	bh=Zxk/ROJmlC25oAHjwRyBHRyFT9qkBAyNYsZVoO4oDug=;
	h=To:Subject:From:Date:From;
	b=K6qt1TkPcuCHjHWrXURqT6DfCVNR/B6D8NuzssQ0lc6JL5tuEX509A+hbgjxUXNLX
	 hqsmt7MzmyyGe84qbpB4YHEZAt2BB96IcgmxjyB7lqlkIidwC3PfdavuZBU6nt337+
	 ZKjE3vTIDFCVwgdLPuonQsR3E7PQDiKrgGWPS+0I6sGsNegPmE+WmE+Sakt1GHmtdK
	 fFLN6UzNU/1MOtpdLAiXQ+5mKYSSaNjq0fF8FCVF1/Gv0JUDmW9Ww1foDXF+66mbRs
	 jZMMOX0xllxrz+G+nCxtmBEgC8/NrHdSgSdnPhL2ylVWk0+OK5Y3ixcuNdPV5L+5dw
	 0SpkyxTS7YM7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F340EE57C8
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714483357.29030.2784989578576658805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2daa73af119f69329dedb60436ff9b9403148eef61a787f4159b2be700e94a9
Date: Wed, 31 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767144833
