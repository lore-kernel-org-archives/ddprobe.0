Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7641F8EED
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736336154; cv=none; b=KD/rkhjl50pUMsYiCFkMBgn0zxJr7JSm3LtLW5se86rLqp3JtIzCWlE8FD81c5hRp387O7vkum9krNVtsPUt8FyabxPlqv2A6s6WEbC2ND883fP7ncb8HlIR/J9zhtdOyvcKHYOXjqFacqGYPRk3QORlImxQaC4IdRP0pdUU6oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736336154; c=relaxed/simple;
	bh=1Og9viXr1VjcUbhaPOyX1UQkFWLSqAcDrmOwUZ6SiwY=;
	h=To:Subject:From:Message-Id:Date; b=UvwW/KMh8HDMchzgr9nh+NWx4Xm68TYdrvMRvjrO0k8xvpTgeRZvAyABvKa2Cy5uu4eUeU+560YIKNSi9tQskFn7YweY3U98KERpvbP3J3DBoq1ZENMBETS7v40nUaLaAop+4bfFiJKR67OHyYw68AvJIDFLgQiRFR4REQ4gyjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuM1YfI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuM1YfI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF71C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736336153;
	bh=1Og9viXr1VjcUbhaPOyX1UQkFWLSqAcDrmOwUZ6SiwY=;
	h=To:Subject:From:Date:From;
	b=SuM1YfI62GkNnK44wXnNUi2fDA3smSDsAgu0K5G5Qf5WJCQgACmyKt8PxhL1m2DX/
	 LGvy7HFTTDc5+jC2idziSFoZxazdBJziFEWlQ/uln1b9MgLLAlzHKwPiMtr0gyGhlp
	 Jlj0DnS6FAYgoJpbhWsx8uKgSR/VdV7HumkpVR5DS1qGDoMH+HekPF69hO5oTg8Xre
	 GcmoDQT7Vxmve1x2e280bzFual2Ezc+wc3Yzh7H67kTjdN/jxQgA5NnVOaghZSJheT
	 i15XEtsH1QaSptjWXEOJkYg1h0mnHtxYcusWuVMN3icN1vEBDEglST1BQf8tgfJ/hD
	 U/NgH0KXEQgYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F4BE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633615359.32478.4275957551345728680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98cd773d293e063e0eeb483f1d7d4329c8df793ae74a9c03998adf2b17f2ee40
Date: Wed, 08 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736336153
