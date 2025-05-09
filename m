Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341CD221DB9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746778794; cv=none; b=oAjlhZwCAlS5fwR8rTo/V0ieU1m0lbW7066CDYv5Zbm3ff2SN9OgalamTPKN3yIGmKCGDNCvpXwuz/bhoKqjfLMHeavvCkU7bl/Wj/B7yNIh1u6I7fprUAy9M785fvddX0XaXEMLUg6bHjp6UhR3MGZ6TCqYVYlekcEIA3rHLyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746778794; c=relaxed/simple;
	bh=uqSZQgtTL/tH+5G8eq7Q82HWhZFlzyeFf3aU69FzkU4=;
	h=To:Subject:From:Message-Id:Date; b=bBCQ9au2DfabscCLuFyfuqTB3CBdUNm6pN5QRDot1oAEQNFuMlwdw1azyiBtx/FkOdnZ/xYH6lvU/VgL0FpvBgArm0pCvqMX92jyw7Y4099dZNYQOwnp1HzQXCA0XrPigV5aYLg9Dl5VAnOLKLzCivKBe9yc/S2kj+oFmwlhZIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDphWcll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDphWcll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FADC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746778793;
	bh=uqSZQgtTL/tH+5G8eq7Q82HWhZFlzyeFf3aU69FzkU4=;
	h=To:Subject:From:Date:From;
	b=tDphWcllGvs9gx/6mmPpRTarqXw5KnJsvrmy/HfFOrAhxQgGzWd1L7vVAZpQ3hTts
	 ZG4N0Tivyxiwok2DwWD2HlkZ76N/LNf8aLN3loggf7kkDw+8Gz31hz8sUE7JbPFrAb
	 lo2O3dhE78t4QApOkQwFZjy7fm4gSe60XOySkw79v1w+lFGXWlVrZJsqletRRGKajZ
	 U67IxDcQfR7mxCMahl7o1Vsyrc/+RjwBKBZgFOCUkUHj7/brlqI4W3Vhf38XZirQo7
	 NCAOvywGzoXCGhCiz+2MQa0es3weU2vrZ4rjIDSbexheMbKv8oQOsx7X+xHbunxQAb
	 aX6sy4DlpIFuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D2FC3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677879358.27409.14370090710380722180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0abbd0923a07e4a087cd0a28f0ed87c4d8d77d8584c8c432f7340a4c79ebef6
Date: Fri, 09 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746778793
