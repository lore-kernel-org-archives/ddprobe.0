Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABCA42077
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728282953; cv=none; b=qDSSS9m+1gfqdReLpaqlvXpfF3rYoqqszKZ2sJztchipdwyNb0v1rhKS9akL5tvLLGphsvfiSnLTCPSlAfNW6zkGbAvdQ2AuSIcu9Jd1tsbRDaXmvYCgNwxwK0P+KgPPlii0haJ5t4pZfbA8QxKwqa47JZlXsWWkkcaTBC3gvKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728282953; c=relaxed/simple;
	bh=Lh9cjCVORms8/K1ZmV6sKTcD8y+LoKDCoKc0pU71eCo=;
	h=To:Subject:From:Message-Id:Date; b=hyzRjVwlXDX2RZBaEpvjovNkDMRqhacHy+dLmlcepcfGqJgIHv2uxOp0rO9w46AK1L1YtB4Fp+lx+JB4WS6zE4FB2O+k8552r5dwRJrgONn4FT7NqM1D3ZDaICUdSFtCtetSLo6YXdybYCwpAsiFte93qX89id6M7p9ke7IFMYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Onl/mYOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Onl/mYOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3570C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728282953;
	bh=Lh9cjCVORms8/K1ZmV6sKTcD8y+LoKDCoKc0pU71eCo=;
	h=To:Subject:From:Date:From;
	b=Onl/mYOTG13FRZY5We+QTFMw2YvKFUprubXB2aVXJwnB+8W/g8jmCHIfOMusAWGaI
	 EE6JBvgeRpS61bEmm7XdahC/j5bdUDC5Y/8EN3zpLm6U2RnMfxsLJJsVhhKVpJQeDx
	 YG8xQ5Kc0gzo9VHbUb0B0YJ+shzhI0sfOkUBZdK6W6nw2FViMqipFnkKfBEPhaLZcV
	 YbFjs1y1KAwIW4pBVtTzWXcOmy/zioVhSf/u6YpVpyocmfjs+gATm+djdaIGX/As7X
	 e24bznxjNr+6vQ5/GtveKwfXxsHDamFTskJPADX1yxGkGPL35SFI6oWYTlzOB4Kafm
	 ietWzehD/gOog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9394BCFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172828295359.23800.14597391719435900517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad8d2062d7101aa2832966917122a6d22210655fa0a1483a0e9114eca06bf06
Date: Mon, 07 Oct 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728282953
