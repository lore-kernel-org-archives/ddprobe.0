Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32045AD5A
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733067354; cv=none; b=bwqfuc8hIgU6WVuJLPnQVDfBAENAixRfnSaiK8FUH3Bz1/RnTmUqf9GAHFCMDDsv1x2cFnHBK7rtXbvcYTRU8OMAxmqIe38vXGfGEgcjcAajR5C2n17jVqj++nwjBxfE9lXHdWIhFTV1dH7vDj5hwGbtfleUUJPRKSDoBunTuRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733067354; c=relaxed/simple;
	bh=TuRkOe6L60i69Cj64+6PKo/Di4+3CbjRkDuqpvxgf64=;
	h=To:Subject:From:Message-Id:Date; b=EpcRn+W5aQDbJ39i0QoD5ULdfXlh7PXQHlVDWRtos32xRU2ka8/TB6ySTQVviBFfs8ljLYQeEI9nlsz4tHhoyVE8Yn3n19hVoL+vMCKWfIDTRQao/fPixonmnKKefGFd8r1Vq3xi1tridXRdtauuXfR+VhRYGl7/FzFUxEudfjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACKxPRK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACKxPRK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8BBC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733067353;
	bh=TuRkOe6L60i69Cj64+6PKo/Di4+3CbjRkDuqpvxgf64=;
	h=To:Subject:From:Date:From;
	b=ACKxPRK2UX8ZNL7wbc+gmNCB69UFCNSjtBTzIuuf7QgFrZgM8npV+djGaL6w0n/Gi
	 m+kaBdaYQgZOJms8Q3wDIsNOLvRkKz+VxVYC5STjOHeiVk8OeZryftDmYKM49spc+t
	 2gjJqXRTLuxrKQkJtTCHbcReQyuZnt9TsOS6Y397hTRISY8KXewxS6FDyoDAiW/H7z
	 BjNDyuw+GswK5xRUQevFYaOD2sh/m48trxfnSpNwdIUNTD5eQNqGxJXRlC5vKnQoW3
	 Em9u71WbWhKs8yoJjaR7ZAoO1j11MosmYnxz2OosEA9q8fHeWxhK7mlktht72PSFL/
	 DUnuEVGQyUdOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4101D49776
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173306735365.22628.8160884590233839444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5630d1f61167e15c07f0093757b0dff362647bdba68c270d2cdb9445170285
Date: Sun, 01 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733067353
