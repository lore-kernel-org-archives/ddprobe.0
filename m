Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C642AEE9
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718357303; cv=none; b=pqA2aIrg0Jmr0L9nz1sThKLakreJtnR4zhzw3sUOLij2CXiBL1cr95Z8dASv3iD1D/1BArWf/QiVq4Hix6InXYi5GyoNmFv/qb4TyxF4aNoSd18nvyFr1LLocrdJ33sK8EzRf3AnEVXfu446GUpvLukfttbzVW3o5t0kYhubvz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718357303; c=relaxed/simple;
	bh=hCmvJY899MoVpZ/YXrRQVsG1xBMtQ6vCfA2u9iqgdzA=;
	h=To:Subject:From:Message-Id:Date; b=dnn8lmF5OfOvdClyx+PTvldGFEXa+sglF1wVC/kj3s4jvYl9DA2PSpq7bIEwHyVRN6FeBvlleuFcBEcAelbDhIKyg8u2PBn9r1loLWewyQeKa2BmSwYMSxPFhzVxeea6K6U3e1lddU6gsihzL5Ob5KkAVIPX5pD0yde1j9/i/tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olet3kEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olet3kEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52CEC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718357302;
	bh=hCmvJY899MoVpZ/YXrRQVsG1xBMtQ6vCfA2u9iqgdzA=;
	h=To:Subject:From:Date:From;
	b=olet3kEIUs2rhJKAf46/mQxmXJM1G5yxknqBzJsUPmYP9IBKKeasGZ9NGX2WxMO3H
	 t5+pAVxAmLciOd6fx72/ijwompK6KVC58ACiDGwLtdo7vQMiwPXbixOFk3ccfiTnpZ
	 rV4lOKSUeK5o2PwHfbDFwhQRwFOSjTLZFT7nHKlFvvcZ3wle3UaGQO7OZUrpgxpELY
	 UKrYXTuoGF6+9vqUjButq2dNW0f4qVl/5PaTYM9iUiZWkTljxfTm09s+klTLbveQDY
	 JTPhxuL/pwI2ywovLRVae8ls3x4pWr29Lp4bZ2ExyCdPRkaF8otznB4yzPEyDT3GXy
	 Ev3Gs7pJxQVpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A44C27C75
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835730278.18349.17785927844608639435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55022e2bc8036a68f6e6d8a6e91c6f0fdf5b694f3ca5a996e5acc8de3797bf1
Date: Fri, 14 Jun 2024 09:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718357302
