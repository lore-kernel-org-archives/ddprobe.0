Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9BB8467
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742173194; cv=none; b=qD8D+beZMmGkg+3iopmWsmch1oDfrPY7rJVpjLxEIomizu1i+2YALr0JrZKz4e91niScizpImhOASIbq6QEnMY/yMrEwMTq7ululrak0N6YDpUerb2BUUsnnYQhRrUN+St12SR2bDeQ/UeZ/HOIaDCbX2/zN1AGYmNPQajEeTwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742173194; c=relaxed/simple;
	bh=YErMX7t5S1mPAkEBVMAtg4XBvPSoWeFH8NmcTSw/J4I=;
	h=To:Subject:From:Message-Id:Date; b=WQrfrFzbxOiqxMnEaJLJWrocGbecIqm+uarIgzbr2oncwozqxMUgoeSMmnCgv4fejOwyg8QdKht9tkehNvZU72RKYfcpWcGdKOfabdpuFXXgmN6iVhjOZO+943jD9KeFB3LjC+VZa/vn7q8niQBGcNAHwwCbVGeKqxFa1keZlkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFd1Ka2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFd1Ka2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA09CC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742173193;
	bh=YErMX7t5S1mPAkEBVMAtg4XBvPSoWeFH8NmcTSw/J4I=;
	h=To:Subject:From:Date:From;
	b=pFd1Ka2sBGn6FcI3QC9rI0NotzBahHEr7zsTMjxPVPz+2hYenelWExiu5mP9jPvW7
	 PGzPgpPx46jFpPY8MqNPzkbupv6xYCRlmNIaswKUeyYczqxTwMsla1AX/ZdeZeeHHO
	 Tfd+lEDtXyWRyBBCm3owuJCryfFcFG6IJcItMzVVoZE9r9ZTtawmbrPrM7a9DlyZ43
	 KgxMkvX0jjxddwhOspovwmU/7KJC0+78Y/+bwZp0jCDHvF+XuotPrCj3K3NwZCmarT
	 sZ0Jjl3wOqCGcVimAP+bloHV4ebv8nyELzamyczR5c/B8Nn21SbQk8yUF+m5R0JAnm
	 obxjK+GEWGwhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91759C28B2F
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174217319358.10182.15478837484525194738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff431c728561e6ea3d2c57dd26572310f653714938c63108083dcf7eee56dd8a
Date: Mon, 17 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742173193
