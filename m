Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1766318E3F
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723602354; cv=none; b=W6uxbdy0De6Vit34YlGV2caAJMhhU7nFwtxdyhRXXw4fG8nRS/KfGd58+FyVR+5cgXxbdIAMuaoVHBGXDqnEtf4SAriQD/KNln47HSDTFN3PGkRvyrpMhnwFHB0RmJRYXhR3fcS99YmL2UoUMGqylEM37b211Pe56p4gHH0X3ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723602354; c=relaxed/simple;
	bh=1nCFZnA6SFsvAUGYYJCCq3qM6uF8AsH95LKAhlYpQJk=;
	h=To:Subject:From:Message-Id:Date; b=KlcGHyZM2sPoz3MhtuR/DKg+787t6wwprouk4lZxa3OWUbkUQiXrRTUtUUsWGXDbT6gss5kis0jfArZKE+fhok7VwrPTrMJ1HVgJ0n79HaZuF/yx/1OtAB/TsWaatkQUqbqMz8dP4S6lYczf5qj4yxL65GqmHiuhI4H81cu7mrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtMrdBmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtMrdBmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B266CC32782
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723602353;
	bh=1nCFZnA6SFsvAUGYYJCCq3qM6uF8AsH95LKAhlYpQJk=;
	h=To:Subject:From:Date:From;
	b=gtMrdBmq0T0ZI1oSC8iuWVmgrnNXk7a1UYPUG8bOjBf6vMN8gyZPO5yhf+iBzkSsL
	 dmcbT0xtV7uAfj0YNl2ISC9CmgBm+Etbxa/cQbP5LxADlSfbWMOgQqCq86LIAgN230
	 Bc14t6V9sfAcaRylIovanxNnjKHYwBVRfRznJsu53LtgoUgaTRE8+qxoQP9RIXPI/Q
	 XXaFqgnDV5dDotfPKGHYZyIW9xC01WV2SiAC5PQi4G1ZOXkrzVOIhUkaFP7ic354h/
	 iPVkMvMEUtpB8VipGLi5GRawjxBk/+8O7iJkjlLtrVKI2g58fHv2Ck7V9PYEJNO33i
	 vPfsyPUj8V2Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29B7C52D7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172360235365.10003.7781277162795960056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987bf7de9b6579a1431723d590b49557c26a6f38dd14461e10b1352cb15f7229
Date: Wed, 14 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723602353
