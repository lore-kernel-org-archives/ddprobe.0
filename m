Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962DF2857C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763815314; cv=none; b=aFSz0rAM9wQ5JgGg103H5IB8xO2ks7E4oTUlKdC6R16ejqu9ftX5RnvgJamrxDJ+kh8kXObVn+DRcYx01UWR/YTIynBBbKrR8Q8CvxFFAIgTo8+sZ6iP61x6ZPOQUP93wD/+rsbi/n0RixEsPN+kBlReYh/t4IvbQp2JoJEIrb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763815314; c=relaxed/simple;
	bh=X8mNJLaLR05f1won2j2e361QPU3NCmvjsNwYfHiMN9Y=;
	h=To:Subject:From:Message-Id:Date; b=jjyM97Lw3jz0wvZ4+3ftIG1q2mFi0+e0sQ2vgTjHiGs2ymD+DLwU6Yo84MNwGhyHYsZImDkgsHv0h9kJdn4G/N6D4lnWYghsij33FGvpXbRbZIeig/BQg0yo8pR0E/onGTWtd3YZXTA0AqV/rZXn9Rt9XzHadEJjfjpM/9Jyys8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZgnFKvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZgnFKvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F522C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763815313;
	bh=X8mNJLaLR05f1won2j2e361QPU3NCmvjsNwYfHiMN9Y=;
	h=To:Subject:From:Date:From;
	b=PZgnFKvklUkFswuqVKD+mLiPyg6EMXGkBcx65+08vNVBUDm5ucBRPl17XP+pOOzv8
	 8VXo4qZ+RKKvxj/mDk94aUHG9ohL84lV3A1g0ca1S4f5ZMf36/1qdi0nAdZZZgqQO2
	 Lr8E15IAB7qhuMWrr34679gjy+ss5UPulUJDl9EqeDrHab7IbqINHk15vp8tRMC4ES
	 er/QEoddVKMEK+AnMaH3dvasCHsYy0XYV+ofjPVRer/6Om2bchDw5795zAfU2c7PbR
	 HgwnC00sKmeaco4Gfyddq5kcQVEF3KzleG2fWiL5j+/ewWu/CqkA/E3712BqLrBu1K
	 LX1z5mTBeZ99Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BE6CFC531
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381531358.31870.17440403204756556638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9852af7425dbc218c821d80efaae44b06eeb85fe9c366593c08f4b6d212ccf26
Date: Sat, 22 Nov 2025 12:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763815313
