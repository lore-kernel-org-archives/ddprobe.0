Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B586239E97
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765500774; cv=none; b=LENAbZO6qIscDKPAcirk5kRzg+INgqF16b6o7px3jTjU0SrrQVlc0d1Uq/paEaCApNjH8hJAOH3DxN3CCfVwWMLJy1Flah9snFzRTIZi9oV83GBFTVXxi9Qgn4XKgY4zwb3rtA2Ey7yTLG64As44MFdtBD3bNbJJU6hJSISF8dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765500774; c=relaxed/simple;
	bh=FjchJYDWiLjl7bOMQ6RN2H+NJYDqisI5cvQhnTrq+kE=;
	h=To:Subject:From:Message-Id:Date; b=og7KawB4Mvfn7fD/qEsA80EkEBt3y50HT62C8X79V1k7OUlqmxwfHiKX+Q9+Xmo32QTcNNeBtvoCVHoFY9+m1brsQ3bthDvB0WRe2uimO+mX43daFoKFeLTYWEA6GbrmMKARCppYwaldIDdXqHIHB0dGscCRJpro8QX1KPLrBH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkG9VkAS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkG9VkAS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0490C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765500773;
	bh=FjchJYDWiLjl7bOMQ6RN2H+NJYDqisI5cvQhnTrq+kE=;
	h=To:Subject:From:Date:From;
	b=SkG9VkASXw4P8Uzpd3aMVYeWu++mS1eeXjbOlcO7Ytu5UFIXQn1TKhY7t44B0l1J6
	 QdwSHxYlsPvDX2MItjxeSvj1FIVKtG41fk625Q0oCZw8yjUMjkrcm47pqSG6LgQBrQ
	 qT7IodxhmfKvkFcO3B0N775OftIVPgbB2OQ76EMcEofc6riTiUkuVpI7fWO5SO7nTq
	 4yFVXkmArxpi0pgrQgvJlBbjN0IfzQWeQEfemB7it5DOYz9T76AFUoHYKO5JpPaXBA
	 ZnW3c6SowWUmfKjBEM7cffidqX9V44vQct8/An8RcaI3e+Po2gQZW2zkbSt2ySAXma
	 xYAKxYNXjDvpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92200D41D74
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550077358.22122.14333270509491951028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8548f8e488acaf43acd04d58296b521156a15343e6af8a9b0e729cc434d7bb
Date: Fri, 12 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765500773
