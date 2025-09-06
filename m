Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333891A3160
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757126394; cv=none; b=NVdkat/nmJxubOXKwfWDqcorpCQ8lktxVr3zlfHOh4GgbS5g0ZJDlOddFWe5lepPQeKbmsfS0fqYSNY0wmbMj9Fo3P14wL11IhbyhyqzGJ46YK/jduomXVAWJi5j84dx7chb9sUcuFddgjvsgyNZVkOBDVwBv6cEGMEgr2Z1NDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757126394; c=relaxed/simple;
	bh=aSoLLMjfmkoxtgCArkMm1Bq2g5i7UDROLGhN2PQ02aw=;
	h=To:Subject:From:Message-Id:Date; b=lAVWCDMdN07VdD21g+C694EPWdCbwNpgD/PlYFhlWHbu7hq5B1a1ubu03H0s/d/k46IVbItKKLuEkIDUIRHc5xp96Y2oJ3qrFUlXLoRxkHRdk04mPAIUJ/1e/7+OExZGGGOWEdGWn3m5MzAwgBT4NonoHFHw6CO+5jz7rTeJC4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZr/mOlw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZr/mOlw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C9DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757126393;
	bh=aSoLLMjfmkoxtgCArkMm1Bq2g5i7UDROLGhN2PQ02aw=;
	h=To:Subject:From:Date:From;
	b=OZr/mOlwYAfjWL865scaZRINKsG2e9kCKiDsL+e5lEvwVzsn4/TWaYDJpoN9j/IF9
	 2XMUyFsuoM41s58HjVWfZWKMALgT/tNjbfsbHsdWdjVrjlIRHGpBOB4/qCP3YxNxDe
	 6NYIV8WcegExiHTeAugzxnrQNjhJHfFnVDYcKeT3NzE27hKUK0YRVWAVmgOrEdfvx0
	 PhEg/zfvlBr5YGyqVJ01lmHDoAoGT2fLP3fWExBCBtQAWnjaOhkvPixt7qBIDwmqVF
	 vAr+TVIty5joExWH+DP6wwwZhsO9PL3JUVC+8wgWG9btMjBwlqKr+hRF9bCGMKaglg
	 NYRJOUd8A6Diw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911D1CA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712639357.20051.3497080803868712948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4faf0994ee2dac4213875fa30c2d7e69e1d0807f451ddd6d946c457bcd219c
Date: Sat, 06 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757126393
