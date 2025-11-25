Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F34235045
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764088973; cv=none; b=B/gULtVgLPCzTwNZCIiLuwn+kCchjWeppnMBWjE2WKCe9yRl9BuOer1jbdq0CPx+9TYmXbZ+lWxT77PmP3P19dUDMyrQ90hwnnwrWvcWcZts3nYH5Nu0KeQ045+qq+fS0IPRU6PZKVbFJCmtgK8HMrGy55T8Nx9H3EFDImCULiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764088973; c=relaxed/simple;
	bh=Kdw5ok32z7Myr23H/etrOcoupNnYwEKMYeMi1ETRjio=;
	h=To:Subject:From:Message-Id:Date; b=pjIT3+zN7X4F2iKKHpN1KPnPb3j8+aTD0utIGn4oLYA5lkzwjA+GxLmoa2HQg6Wvf66yhZhfDPCfV5GchoC1CQA4O2IHrcSFRacJ0WcaOJXgtQyULtsNM4WwOf19tKa9xaQ21X5/eMrtKACijk4ZvBABWScEEXix4QKAy1WKRdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHwdpi4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHwdpi4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5453C116C6
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764088973;
	bh=Kdw5ok32z7Myr23H/etrOcoupNnYwEKMYeMi1ETRjio=;
	h=To:Subject:From:Date:From;
	b=sHwdpi4w5QAsDHh0Hp/08O79ED6vUGZ6Foipo2MQ+/YgW4k8MbYvJYIKoWyWxOBqx
	 GPmCK0xSPR9GY2GWqigt9osAt6wEbFiip4nlNWPvW8qI8LWsE3U005uQULDDlxIZl8
	 nR2guV2w0x+X/SUfencVModAv6jNbFYypOT2J36MgmIW5G0NGXNVD/rOp262NCl1bA
	 SWT3PZg6b/XHfM/n7BkBLY7c/Kmzwu4/rfHX7NSthmPiGKagC9ZYxBWj4djJmNfYOV
	 9DO26xboedVjRGn4ZN/ry+2fRcXIBc1Jazy7dZcZbRmgk+mkYFUWaMFO6iqJLsCjA1
	 HuuduwwFyifjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B40D0EE00
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408897359.2176.4280724162576195584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17285dca071931340e31db323e42b104b6781848475bd53ab9fa054635834d5c
Date: Tue, 25 Nov 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764088973
