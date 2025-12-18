Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8F02C159C
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766054634; cv=none; b=leSI6c2gG2OfTqoIH7xUhPkL8S8KZfpD9t/B/mq7Ju+cpCuT9MQJSywOFUO1c3+ZFCGrYaj+sGubLeVke0iWv5CK2rvdDv2E+jiWqBEmSxvRpZ0QWXBBTi15EGaTr2oQwWKvxWiy8U3Oa6hQhI8D3vDrkUYmnxPgybD4c8pWvuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766054634; c=relaxed/simple;
	bh=zXvudIJ/cu69bWrSlT1KpedppMk0WiueCGYfm442TLM=;
	h=To:Subject:From:Message-Id:Date; b=mxac4wHdcguLluQ/FaVQ4vGOqcYuebmGoN5QbvmDsfbQQUa+5IWGNqXyuFeXiBpE93yulgY6wJ+JbS3OrX4t9dTe+X5VRPUujQ7dXQq8CwLw4hAuExPJ+K9YLMBfkyCzZcBeNScjWt6rkfcXBclobYcHrMg2lX6l16n4uRwE7Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9ewUu1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9ewUu1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5227C113D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766054633;
	bh=zXvudIJ/cu69bWrSlT1KpedppMk0WiueCGYfm442TLM=;
	h=To:Subject:From:Date:From;
	b=G9ewUu1kwTfrve8duXVZtJWG7KsWum5QYCjElHGpQmRReI3SwAlnWp8jDCbtnXTIH
	 zA6WdTUgo7eZb5kjzQUz9CxpsuPxKZp51hMxSPUEAOxXc1YWh23goaLqbpyruc/7z9
	 Av6vmTycOMiLIZmqDTE1iH/JahbAwdQjerd4E/JLsq6ZKPDAC0eXPfe+HMaCSMtRj4
	 iNXz2U3ucu7Y7nOHMQ+IPBCPX7FA3vInaAKvSXWsKDk5HIS5qjKntBPSkbFr6LdAT4
	 bnjqLo4ApPwvvVcAcW9WFws445FyawtTtHcx4rMQ3OvXxAhfkj3cDkv+AVCyp+6SVw
	 vys+Oqbr8yfiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9230AD6ACE2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605463359.22545.9755833387945914307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b530384c2af60ee9f7f220717eae9d4b48168909dbe2c9b016d64c5cc1751b
Date: Thu, 18 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766054633
