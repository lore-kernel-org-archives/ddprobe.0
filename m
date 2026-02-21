Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9CC2DB7BF
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771658694; cv=none; b=hRgi0RZ1ZP3nJKIZi7sScIIB74nWKv6ock8NZpQOhQlc+PAAyywdadoETUVEOxDLQpeGAVMVwWKuuTonspd4SL+uOVLi3IaTSmr+oi8d093HQKoGhtitVCQ9voClBRGdZRQksfYQ3hIKK7X3jIfV5dY09NtSsvSDegDft1z44g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771658694; c=relaxed/simple;
	bh=NmD4+lLg3Rq6z/6yrOr+jcWSTR2mMBQ1hfu2veU8G1A=;
	h=To:Subject:From:Message-Id:Date; b=GbRsCi9U216jymtfIUxqJ5Pof/qb38rxnGEOeNChch5dIOnCCuXB5lkeMo/aWTWuQT9msJDOyUcUa7RZgzpHFut6LViLpdzv+o5S5R05DkK7UQrDIjAYE/4OahiyFi/yugUV8f8khJVL+sl1GuF7PK5lVrACYHVdVwytzW532kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSDrQQCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSDrQQCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CFEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771658693;
	bh=NmD4+lLg3Rq6z/6yrOr+jcWSTR2mMBQ1hfu2veU8G1A=;
	h=To:Subject:From:Date:From;
	b=fSDrQQCcv2wrOe6V4NcUB5NRj0WiUZEXlH9DlcOuZUlXvdT6L4ioFBPAFA2a+WsJq
	 iZpT5LR/sbpVso2LnGpTicD1TGDv4ItTqNx3epPltMd1DdPGeVjsvuHjIemYOPLJbc
	 FA6W+Pv7hAUz2cwkkvdrxlC5dPycMVCAHaFfBcGk8duMwNN0//xsB26J/Kf6XvgBpZ
	 PlY/wiidnLEkAtdW5DdLn/gpcU5tfmlHs6UpYesTUq3HQz9DE4O6/IhszetlaZYm6n
	 q2PrXpHcb5L8s5EeKjFL1KTtouaPGgbFX9w4E+S6tKojdSj53zeGMtCsdq2CNQsMG6
	 Ai8AU+PspazEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97016C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165869359.19263.11968577620313789037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c4bc195a90a84fdc4121e958d0b01339cb0aa895e0b26131abc1d03a0a23bf
Date: Sat, 21 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771658693
