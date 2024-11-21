Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E7F156F5E
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732210554; cv=none; b=UNSaalrHgc5D7eJDeBhAY+mRhC7GCxqj5IN9lYPZC3x39O52wqtdeU1v7s+Z2R4FaxFikA1+GN8LtxnLvIr0+5YNhUUMs6Cdkjg3+AYPzsHV1sX0Xe66joF0WbyHl7xZQc0/GC8DVzlyFN+pHo8C7hUEWmaF5w31vQC2NTQaqek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732210554; c=relaxed/simple;
	bh=kCZ97OdQ1ZeTMT7UP0mMWbIKSTF48MMoCGuvxHLDWbc=;
	h=To:Subject:From:Message-Id:Date; b=X3edUMzNIhziDEs2HLx1xT1FrHts9bZdK7hEsYnJd2aIo5FceoflWlNjwLa1EpPlkuwXmHUeI8dC/hklx8InGd40XITa5sFhBaaOqcNOKViTOzf6zzGK1pHjOGMmWS6oeI6F79JHONltAglE7p90uGWr3Yd5oKDMciEjOHmtYI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poESqai/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poESqai/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7872C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732210553;
	bh=kCZ97OdQ1ZeTMT7UP0mMWbIKSTF48MMoCGuvxHLDWbc=;
	h=To:Subject:From:Date:From;
	b=poESqai/Gk0hxURUkr4Rpx33v8ss+22IhuI/X/CRJC3yP6qte2t9jmE37Ce86y3Fa
	 4l5uhDlmOck/tIPGzfpxLoTF8sdGwCLXq18MXHNR4IX1F51Cdzcy58g3vnQ8a2C3YO
	 Vd6j37fG0PBit0bRTjwUGVC3u5wm+ATi6y6B/BQQeyFnQHFndX80TKWU8MtvwFz0ng
	 VTvXIM+3uG02VBKuG8sXtrZCxVegYc1YISFf3sXfip22r3ZZQOtbJyUpA56dryqHTw
	 82EEsDvOhj1G/43uHNlLoVobrSX5ch6cCYz4JHksPu1AiAL/wQbRuXpEeC1IgQi3+b
	 4X9nXOYq9vZcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D1D743C9
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173221055358.3671.12789317314022364810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d907ba48132b80dc5ed0c61cbb952f20e7f4a147a827052275031b06ccd5bf4d
Date: Thu, 21 Nov 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732210553
