Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABC879E1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735758354; cv=none; b=uT/lkSo2NgDGLVIXov+rlGJeVzsivpmFvdDDsfF4PQeuWwhxx9TGvz8jQDY9YLbPgzM3W/kW9Dhu402a0adalgga0FhBJzRRc+w9kVdVpXezThdt0CGQ94TkHmdWgOJPs6IWJUQKBiDD+rJUV2bfqpVp5lo+8Iq+ShT/uhfkzcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735758354; c=relaxed/simple;
	bh=wKR3FBlRqBnHagQAG//nYXnkLAphoYyXmK6bptu2emY=;
	h=To:Subject:From:Message-Id:Date; b=tyTnTHYjxYTVUPWfrFF9RSyGCfsLDCvDunWKH7NeOTJ0ptJT5RbdFWA70ccrGb6A8sDoLFKUrtj15X0Dkev0pjd8OE0nKkYTmmNtgmKg4MYDrWCur0ll309rjXHURp2YgpJ/YGRf7Q21cO05j/Wu2eReevjHR4XAs86lkSdgQK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmJmtkiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmJmtkiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB42C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735758353;
	bh=wKR3FBlRqBnHagQAG//nYXnkLAphoYyXmK6bptu2emY=;
	h=To:Subject:From:Date:From;
	b=pmJmtkiyfjYEZevZraLtKcuRnKrnm98cD2EuG9vAtsAullN3hDfg78zw29SPWBYq4
	 xoGMn+zRyHFcmRcQI1aPpkKtI36sUP/EKZIoZ2h4+7Obd0Fqjh18Yl2zyYTXnQEiZN
	 /6Hx3tvMeVqDG3qZ7QHC01rMnj7gWQo7dbRvwBPoqGG0hVJJFvpdXIVf0IyAWp4CtD
	 XhYF5bQgMMrFiA0UE/cmudsGsmTQKPccm6a3bJ+GsMkYLYNPLixd3LtHZS2jrI3a7R
	 LY5aqbXyjDxt7agn11MqTGUcJGEiXuxZUYOOEPxTGaCSLyicbcqAISxAKAxAfssuyd
	 Gsqn428oYk3kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98291E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575835361.17704.13360503306792475546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11e6801c766250de2ee9c33b4ddfef23df36e7a810e62b00c22f13942d797cb
Date: Wed, 01 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735758353
