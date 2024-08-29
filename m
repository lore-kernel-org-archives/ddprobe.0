Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304C6364BE
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724942154; cv=none; b=lpWkEHWzZ09n40t2ia2AYip7D8iQgPUdUQgJhnlvMyM3PKDgC7t1GNNG9oOwRcfrzOHHZKOgx6lH7wS7pGxBTECUi/6QZw7iiQKM1CynkStL90GqCS/UVVwG3vkjRZ6muIVTIH/8rUndOPRlc3FADbfS7DcTOMeS7um+tuVPbkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724942154; c=relaxed/simple;
	bh=kBVHaG7zvmVSUxtZ6LK61qveGj35z7Ikdm4jPZCJgcM=;
	h=To:Subject:From:Message-Id:Date; b=Y6+5GdMFjfFKlY2Y8gYMM14Oolsdoxx01pTEAXs9SuQDx171NqwRSjaklKrufkTtqgMfNBaEcXBbLgLI0sjHWY+yg7XeJqnYEm0YGQXqIGs9k524A6HWgxDeRPodXKdmcZQ0hpNtArsHqQ392XfrHdB5RCwyevM2HW5H3H/TtGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYRpeWLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYRpeWLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A764AC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724942153;
	bh=kBVHaG7zvmVSUxtZ6LK61qveGj35z7Ikdm4jPZCJgcM=;
	h=To:Subject:From:Date:From;
	b=mYRpeWLFB27SqXdBf0qCmo11J+Vf/ktBaSINKglK65A9tVSPjT8FVAVbNFU8X8GHR
	 Qrh472EoqaFOhZummKxpfHK9u++GLjXzRcgWG+NTVhKG2iJWq8GcRTB6he8uvdOJ5h
	 gABfai9VVbDFK/6+66pDDOPyqtm2uWQ8Hfl6T7AVAQB9zItNmYuWKPKtCfE0ls6F6e
	 AqIQvGYDuzNHV81LmTkIQrhZ5jV1Qm8WFQTwscWEy8j5FapKLbgHAnSrla9pXJfq9Y
	 XTaFTFbvIqsu2u0wL88bhS44AstsQB1jnWR282buApol51jpjk+W00Wac5fwoO7WoL
	 VwhABrIJBFrwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96326C83F2F
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172494215360.20437.11239456173260926647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7189b26af7781df5d4c6ae32f39e0ab62dd7f35e4bfc9757b34685ca58ef19
Date: Thu, 29 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724942153
