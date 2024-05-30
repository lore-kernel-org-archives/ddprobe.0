Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379D83207
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717052063; cv=none; b=uhAzsKiEjOxNGUau75CdvBKo9XhI2l7zJfi5M+GctSHMNVRyDlcGE254/zEzQWX1GGKUzKCYEV0imQAmOLrWsMAa4ATUOaGtmjbcJphn6xMYAKwvqjeA6Ocwl6neDv1QNfjnC/jk/3gNVWDDl9lutDO+L2ZcMo7s4eesfDla/+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717052063; c=relaxed/simple;
	bh=doMWEFPMOcKzpolImHsCkNAyJx6Va9GYOQTATmoF4rw=;
	h=To:Subject:From:Message-Id:Date; b=l94vM4FFC+IuN5FHASLr7r4unOJjJJyVph6oGm6Uh/5XXVKkNv6A9o6ox6J9FqsloahzgLzwHInCfYmCD2ChKlw6uNvfHbLuMm/23PdYrptLZQsRG4l1kLAk9Pqzo6hc8QvxuHg2Lo88sH4cLzq8qr7gYMR8ce0mENk6pKAUHZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uA6oSiMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uA6oSiMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2ADC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717052062;
	bh=doMWEFPMOcKzpolImHsCkNAyJx6Va9GYOQTATmoF4rw=;
	h=To:Subject:From:Date:From;
	b=uA6oSiMWDRGd9swhU7fOvJ2fEoz0igeV0/FAjKfqG4GTKldQ9BOYJxURVpA1uMw9s
	 9nqGxqmEnn7K8dfctL0Q+LpWadVg2wfpWxKtTkGgeqeurB7icwDRD3QB2n88RGYF4x
	 Wnh3SDKcOml5RSCNPHt7oABTzzV5BbC/k+BHyqoq+rC9z05n3N6fhz3/FD/VBRquK8
	 RI2CyZYY3gqxd184YVJoiCtFqfORcOLVT1OHnQa25Rj/mGRbc/4fofHnf++LuzRmZy
	 ZJutI0GFR0FHfxdUYthB4yZtfFwpvLwqaBdGFTuXdEqUjFSkMdSc9D0H33DtEAKtRS
	 aw/F+rc3ElCRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF00EC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171705206277.3886.4504913793867543515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30bcd955961df2c5184e910e5f4ef4b61415e14bce5f8edb93d636311c4adae1
Date: Thu, 30 May 2024 06:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717052062
