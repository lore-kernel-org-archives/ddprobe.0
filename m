Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285511E1A17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753510794; cv=none; b=sPpytd8N+JQt9lU3MlvztTHvab18ItI5LXcB+doeKu4+U96wtfvfg/SXIwmI1scxoaSx25gyC/j78aLR8NncEP58eCEpgQJ0yTlJghLmE0Mtvt32mLqS+U/yf1IyaLEsF04dFTpabekXr8kYR1nehgkCUGT23zktHmlzoCnilrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753510794; c=relaxed/simple;
	bh=Xn24FKydNgv2Bi4DRHCeYgoRVR0p4WSzwPbMvtuxhQY=;
	h=To:Subject:From:Message-Id:Date; b=mq0/ooH7WUbk3wR60YkUl/B/bQ2BUn4kK1fdew6QEdQtIP8bO837xz+wnKgFMgboBKOVQsRBnyuSBz5KLP4HEjKpvYQ1AqW8SOYefEHt3jo8rpbut1B1uGfJrnLmNhFPdxJ0i2DwweXm+5WErLeBmBIGbpMMZn+chGQwcrB+PfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXz7IqcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXz7IqcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A426BC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753510793;
	bh=Xn24FKydNgv2Bi4DRHCeYgoRVR0p4WSzwPbMvtuxhQY=;
	h=To:Subject:From:Date:From;
	b=oXz7IqcGHfTjAeUxjWT00TIjL6TiTs9BDtKaNeiIzmVrbAJ3HKXZid+EHILBRGy0c
	 5Spx9P6NzZX+HhsW/8r0V2VNGQ7+QrL2/LlvuFa9hMLm60z4VYtX37ew5+/LcZxnWQ
	 zfg78AgM2JRF1gLuQ7CPiylaFnAa1p3xCFpk9sw44R3l24vh9UEVe5cD4MR7ykNBSP
	 7lymlWpxxugVLSEYaPwbKL9Z+X9PcM9jwn0vYedM9qvm4E96nB32I94OMV3qLGVNXn
	 O2WiCKuSiNFoD6Dpxw5aM4kaoAmNokH7OAvkEIGsfAHI7Xuxc3MsSSAqd5aAIi4ks4
	 N8HV7GhlENXEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92201C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351079357.28206.5194058379333152523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305b48c0254be91fd4f718330352b5e799a242f5a76c47a0e8bbd2199719e259
Date: Sat, 26 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753510793
