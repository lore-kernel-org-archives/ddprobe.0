Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E09330B0D
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766037834; cv=none; b=b11TEeuaQWXHVqn0zEHSSaVJ99+jvKupRuuyH5cJw4WUy1dxIq9Tg6qnIf8G/6gXzPogwbeRsVw8Qezl7rY0hXCN2lukUqLVaqza4k/2lteY919elyqav9Kvcg0MYYrh2RtglOpSyyJSGhOnPWIrwMR9zSyFObMZh1O7auC/1oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766037834; c=relaxed/simple;
	bh=Bg+gkCFotZEnGkHiCIh+pi/FhCCpFzUuHqGmRY182ss=;
	h=To:Subject:From:Message-Id:Date; b=kQsGnI8B6uwcbSysYnV8K87mxA+whY71aWEgB8+Nu3qegouaotizmA8eTRmuzTAZX0SdxoT6e23PfxU5wLMsKIU0POA8uHPtB4KYuYjOn4fDo+YMHAWCACQ6PniuDTxhVfv9gdSR5xQ4Zl7pFm4ihHjnyZVRxA9k0jQmqs2xSns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODKdGGk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODKdGGk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4C1C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766037833;
	bh=Bg+gkCFotZEnGkHiCIh+pi/FhCCpFzUuHqGmRY182ss=;
	h=To:Subject:From:Date:From;
	b=ODKdGGk7f4oM/4IrkvGKrLi+pRzI2U4oJ1zvpdel7beMBeMwvoreaYyYVXkiglhK0
	 Lfxc9utVcYTX/VKbSbxA2SI4vYFduVjn/1M1qg72GdTOatPup9XI+BsTLz7eDdcaTt
	 wxvxwqL9LvRzpzI0vvUEdn+OEf6ZcEnvsAat1sSmYEmXryxJb6HD/SWif2GTuaGWiM
	 z0IJcSrDe6ybybg+Q+Z818mSNTb0ZF/gbxTYoO0wen+F1rZWk2Ns6iqKrdQeRKw6IH
	 0T5ie5dU1+wxLs+sgPiaiPd7nKlHli51n9mx6KRJseuV9EK5va5V8JquiXCnvDVUzc
	 qoaXpSjHla/ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995FFD68BE0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603783361.31998.9680904007488396790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2ea79e7672cf5bccb05c68d7ec753c6d365ee163e247926ca679f024d8686b
Date: Thu, 18 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766037833
