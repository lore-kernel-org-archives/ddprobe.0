Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1515D2C2346
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771313094; cv=none; b=SxiMjLGibDWaAO5aebmDPsIzX7t45O7URtoDa/bfRY/PSqrf3Bym81ivLoVkkWquFNGkweAz8Uo/XlwHLyiTk8lwDPTW2hfiXEXW6DVBeR2Zip9yZu3Am3PtQH62VyoSscZNMgB5VBJipdMSiCYVtCKEGFGtt7NAa55SMSs6BNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771313094; c=relaxed/simple;
	bh=uTgma9UjdyIlYPCcQ+yIlFFUYKKQk80p9RFT/V1/jQA=;
	h=To:Subject:From:Message-Id:Date; b=ctxH7Kog6mNPVYumBVgRyiaF+JSQK7b78Wj74HE8iYopAYBEEvv9fie8UcCwr//wgiX0x+HEGz8dz2izm8SIc7JVdYBwi7PaFJcqNn7LICnHK9rLsmzrD8cfk12nNS41yb9INgv6Is1uvPB5peexY/p6Hktb7QpXSC9UiyAgqDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+U4aySM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+U4aySM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86F9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771313093;
	bh=uTgma9UjdyIlYPCcQ+yIlFFUYKKQk80p9RFT/V1/jQA=;
	h=To:Subject:From:Date:From;
	b=a+U4aySMsaHZJ4nMs8mpt4X6nXa4cteGjpAsZG9pP7O6xlkJ/3W2f6B5tOU/dRtac
	 clT2yQxc2l0ueVZTuAOXfvyS/u68CEfh+BplGSVFaKuHFPcXOLZgwjBnpGHujlyvkv
	 3Wh254e9BUKciRSi5RgVWyoJ80xP459KPbgArbJ+tk/uSu3mo0FgUR3DAsxoYXZab9
	 oOfy9R9evablRWmVeffJdINKdbbOe5o+D3qIxx+n3qyC+MtdyKoNqgCBd2PxBcQttQ
	 XNz2lrp4VsJ2K3LNNj6XAAmd+a7hHGb7Oeiy1qJjmJH7n5WC/2Sp2ALnsY19dwNzvP
	 OPyV92HPwItkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155FE63F2B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131309358.21784.15341541047410649287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1161e9623b736154b128475eba80472853ab998febef13ab726d6c78c408058b
Date: Tue, 17 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771313093
