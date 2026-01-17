Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B12F30C62D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768641834; cv=none; b=pmZ10FoPXO+Vy3dBplpOlmNtLo3+BfJeadluu1X/dDIf0hj5PM6n2UPmdX7gjuiKMIc49OYwnGzbxsFQnu3s49yB/dzV1Jh9YEWd3ASU+skm9mnhSH1at2/Xf9vY9QeQLGpxV2XI8RLTiTrXgk1YY8iawOiJ3uKeqwrqyT8MZkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768641834; c=relaxed/simple;
	bh=OfuEcb2PZkuHfFxIpBpqwEGpXIIL0P0/AYgU1aUwaC8=;
	h=To:Subject:From:Message-Id:Date; b=jWozYWp2kxhSw+WN30dPbJcU9U2MpOC+9ywEjCShe7Hx30smaqWRJtcts/35mWSYXNlfP6m7KaODUNIZKot5yIfhvVBk7ADUBYgciNozQ5hKkVbSnRtGJOoF7V/nUpUeg/gdfuayOzZd5tTqdCLmvFHk9O/lGICh8GoMoWW30W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcdT8ljm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcdT8ljm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8300C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768641833;
	bh=OfuEcb2PZkuHfFxIpBpqwEGpXIIL0P0/AYgU1aUwaC8=;
	h=To:Subject:From:Date:From;
	b=XcdT8ljmaf7ZLKhKe82HtX+YIUzGJXCGMa8xBnovo9fRmiHfvwGBiuzvnStBCutsi
	 rATQMX9xBeCTjo+EolAZIm1C6q6f86CTuozNBEyaBLwk/cVJ5zbDe6vAf83qznc0nG
	 hJuqTyrDXAHkV27UIk0pE+YQiBphP9zr7bDD7yS80P4U2f8egtiBQxDWsWspbE4MB9
	 wA/cp7Hm4lU/bi73hKrosWSMqvNbhiVHbvxClv8v60ZFFR88MxQmO2RNqHNWUyfkCT
	 kRRE4qNmDxcTr7LvM5NNIu2il8+TxTWfxXvWlU/eoADxpUWB/A2zVaLDOCjk9FOYd8
	 UC+Vsa7x4Tz4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C32C98314
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864183358.31631.4846977512846086333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e03070feb1894bdb00feab63e53a485b125975599f4ec341c1e5b30a6f0875
Date: Sat, 17 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768641833
