Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307963D69
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723512954; cv=none; b=AlhX8LfRPvHjTBEbJMH+DS7s50pIE3f5KYmUSzPYzz/PCr/99GdNyxZ6GZdLsOF55lpHMhxbfwlx75kHIFQSu8ealXhRfzXHk3yYdfTWNlSBcbjvMyXOYLzDSRE8bxssiGft263298E6gBKugkoeDa1sEmB14m6SsqiGpD+9uMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723512954; c=relaxed/simple;
	bh=225TQ48t1pzs51Rt6WKAcIguFgPYGRwDSy1M1+vGsig=;
	h=To:Subject:From:Message-Id:Date; b=jqZdvjdMZDcu8IQO/XEKJB58CAt6bDKxMncV+YiVdQY8oK/yPBojAqeQj+Sj/SaiJaYDLdz4vMoFAD/ltcGMBvj17c0Exl5lHgn3CBMObRGLLAutOq9PVdssbIkY6VuWVJhCNA5Maixg7K4VhXlSuekQ7M54G7pMNW/WiFAE9eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etqQNp2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etqQNp2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB4DC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723512953;
	bh=225TQ48t1pzs51Rt6WKAcIguFgPYGRwDSy1M1+vGsig=;
	h=To:Subject:From:Date:From;
	b=etqQNp2yLyPJgzYy8KWVBOs5m39M81n5LP3/JqAw5qBy1TriZhMBdOp3Q/n1i3fCy
	 wTg0lSMsg5iBlz8KBXO/G/xrIS1MY6MOexW91X6A+2sAf78tWNNpQKtTvvOnOcnpPZ
	 N5ZoNoQ30vzdq4G944Y/uXksPvC23xMLWpCLesve1uRgHwaYpoVvxZvrrHaI6X+i89
	 kTR/quRvnKKuZQQI8rujZnyM00ToDyMEp9TTFv9s9V+8tKW/LEe4Q0L7f851VGdH4g
	 RN/pp9fGGOZIrMrtRU5BihDddROziGCkXpWsymtmGnj5bdZ4FFYFvMP65DCKmz9v1F
	 m10pDJoLsa1HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98865C3DA7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172351295358.5951.6057764483407972848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa777c7a068f7b018226f2039485c4d2c2e0b11bd372ddafd82a106228f4c912
Date: Tue, 13 Aug 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723512953
