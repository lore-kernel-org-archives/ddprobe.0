Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93AD17B507
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712768297; cv=none; b=pcZP/7yCvrLALquCdx0AhJDdZ4gNtDBFVRkattqTWdJanPC1cv8tsYX5WWqtw86HaKDCIpwMhjXZm0tWKrzk/T6sle9vhoCRymCXg+BsIWA/Ttn5Qr4IfgVtUQgsmFTpvER9uK3YySJlH0qquSQ/IXv0ZxislS+SXZiPwvsTzaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712768297; c=relaxed/simple;
	bh=S/iX+JAR5PhqpfeMFGVIxPBGFxnp3iyE5FEL7311gKA=;
	h=To:Subject:From:Message-Id:Date; b=mB4VDdEO6QWDqfH6skSa6AJHU0Au69az19NNSAISMr2MYMtPSO9hc3hoSyCq5B4amc1UEtEgjs+p1V75J/fRydQWoOF2uDuUCi3iQRl7xDqPksTKnr+sOH5nbSpBOo/O9KDZ9emmJGt2pflf71rEAakhgh8xoP//FktI7AcWZXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e49t3XjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e49t3XjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D085C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712768296;
	bh=S/iX+JAR5PhqpfeMFGVIxPBGFxnp3iyE5FEL7311gKA=;
	h=To:Subject:From:Date:From;
	b=e49t3XjICi2GmiPFaOS0Ajr6VUUT6Oj5ixlgocNMMGVo3NtO0giqfcft5N5fW6eZ2
	 StzjdJwhNwLGfANwwmli9loMRH4KXUISonMEQRrB3P3G1LRbQfzz5hqTaZ0SNJRLt3
	 8dWEuS0yB2omgwOzOha/pZSZbR4zSYdOy1u/gOn3krSkRiTxlF3kkvvKS3/2SY9ffh
	 NTo65QkaCV9yo0M0cl/9FnfOAySQteIeFzlC6dkHsYwnC4SQvS6qNvA3KVEOej/2EY
	 uigpuZQC6SerF2ou1iyQ7dz2JD2feOUR71eeKIoj3qN7Zd99Ed/93StwmXdai6yMcd
	 VaqaEP7VK3SOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8B1CD128A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171276829642.5070.12830169530990847058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35858704878afccc93b2d628aab46491e78857837dba2972f067e0a4dc8a9a83
Date: Wed, 10 Apr 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712768296
