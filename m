Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A48822EF0
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723382754; cv=none; b=YSQK1T1OQMIJrVopAwXBaU8XRe7b4qfzvNd9en3UZm+TETEcKJtY9hUWD9MkPj5wZ7dHU/wSTyEC6PX8uV8+ZEI+r5+bVLv5DAyafQ4x3alI1Dqwq+DLWDcgywFsy0c+0FZwdvq9GF1GfRCoOhUWALPDR1A1dCVeT/8xvT5EbX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723382754; c=relaxed/simple;
	bh=bm1kq4IG8iZpdiv3l5cNGUdIRv0Kmms9E1aR+H0iJSw=;
	h=To:Subject:From:Message-Id:Date; b=i947yiHU66ftOTxCXWEL0TEry5jumE5+rge+ALOUQuS0k74FuzBqpPg4z2FW7M49fZToRnex1sSjPy2NG4Y16m+51fAfsREwF1S0w2vGLVkAvokYeIOqHr9tskkM9pn2mNKzUpRyX3H5lUZfZXFyNJubedyKJ+6ETF58r4MIuUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJ7e18fx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJ7e18fx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0ADC32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723382753;
	bh=bm1kq4IG8iZpdiv3l5cNGUdIRv0Kmms9E1aR+H0iJSw=;
	h=To:Subject:From:Date:From;
	b=IJ7e18fx420h4tvahxsAEpZ9o/nS6hUQhGgbZF0n/MM44b3DGlPs7I05iz6t+HA/y
	 7aqxdb6zSxOmAE78mfZgpJf4l81I9Gsyryvex4K49Ta8Uu/qyOAocWaCKEaBwpLmL/
	 s+bcpa1+myp2+exouiqIgYvRPDVs6h8wO3sD66Xw3n5o/QS1LWDq4JYCXbI+fNDDdJ
	 nX1Ro25DIGPj+7SmF4z05DS2e5yma/a6jXZJ5EVHFFiDV/5UBgub0WEO0hJ5NtisuB
	 02MJ04RX2b1Zmt0JnPZRP4h/yzM346MxucNjwhnLl3W+6JJLrmNRbk9FVRalCKumc6
	 UG/GPdx0LRqoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91181C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172338275358.2604.9364627764246186588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f2ef92b1a0fb00745b662de69d43887dba535dc08e36a0d531bae41af01b47
Date: Sun, 11 Aug 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723382753
