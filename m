Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA0E23CB
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705780697; cv=none; b=nDhgSQ7/XzazF1cOsxRAqgW9sPro+6B0dttjjiN7hw82nSIAqzZaPshhO+PFhXmUKwfBfv2Ldv0B8WfH8Atzk7SWO2ezSfkl1s469c4o7jjUmbouVx2v9ZFll4RxRUFoMFXUPfRHRhZwlSRtAsYzq6GunD4U59GTBev6n9al/Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705780697; c=relaxed/simple;
	bh=432z8WlP40ec1ScAqnPRKIaNNMR0LJvU2p1CBwbuSf4=;
	h=To:Subject:From:Message-Id:Date; b=RCES/9w8kC1e0xkVq7Zonb8SDPDDy0b0tyOnX+3LTLhmnnvJv9Z4VYSTWO5AfTK/ivzWUYBHgRxv5N9gZQmHGpSkM8SWi6yJj94ACuYMsWYNR5UVBV5TTle7HrsLQ68T6H9UI482XIKtmrT1AfM7DTWM2TOx9t6WEg3Xp41LkUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUt27qa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUt27qa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7828EC433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705780696;
	bh=432z8WlP40ec1ScAqnPRKIaNNMR0LJvU2p1CBwbuSf4=;
	h=To:Subject:From:Date:From;
	b=kUt27qa3mJuC0xWFyFFI61xdjmphdBrgsPO07XC/EdL3OECK/DbH6fzuUQgvET8cn
	 rQzma6ryS1VboD8D1E4MlzRGvkjmGf5tPVOfsBtivbuii0IfUlj0Gi9Igwd8OER702
	 UCsEYYkqFTz29B7LMuLa1A5yHcDOtYM04S1Hm96ZmQll6gjZsYthO4PRRRbAu+9a4n
	 lJyZ/AopljU5xwF1jFxy9h1c2ZqD2kDWCymHogLZqD5nMf/AkZfkqtuBrWFFT+PgwR
	 XjOeP9CEmUcimiaM7beO2pGDUILqHh262VcIYdAW3ZVRBWrqtXuIpzBtEh+cRo2m/g
	 OisDaILMJTcZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6080BC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170578069636.23907.6956772757455775307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca761d004e23f733de8c205740e9cb3343b464dd21cd24a56715405ae3fbf9f
Date: Sat, 20 Jan 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705780696
