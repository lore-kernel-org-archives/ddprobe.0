Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E19288C9C
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744652394; cv=none; b=To7ms9Nr/UONx0dgVXkQ5W2dh47SXfvNvGCL8xzf1xvIchkNiKcd8JrAZlkGiIKsNb257uSSx7paDjKubf98uQUQJKnBhhaNoGVpPwfvjifVVRzODeaBaLVxWlLLvrXjeAa8IG1R3YKcnO44QsDLO3FUm2Nd95ABhTZ53z1Bwl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744652394; c=relaxed/simple;
	bh=PVNkAgIsSsB0331jQBbbRfPl/tCoHtdtFr5iY/UxxFM=;
	h=To:Subject:From:Message-Id:Date; b=KqqCXiPqgu7if7DTHiAdSU/Mw8ODPYiPfyu+75zaAi/Io8Pq7Zd0jPcFW82pD4GOQ5kLBdP5pRn0LKqHxoafcauzb3tg/XumYDx2L9kwoZl4Ys4VviI8DOjjLLM6eg56TmTRqNIMRnRiF3t9a2wrbdBnRaORsZYHuNG1R9PcX/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTHP+RIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTHP+RIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0438C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744652393;
	bh=PVNkAgIsSsB0331jQBbbRfPl/tCoHtdtFr5iY/UxxFM=;
	h=To:Subject:From:Date:From;
	b=fTHP+RIuc1BOaHLFh2O7Rp9t+z2p8zge1Mis72ZrhH1qCYRNA/yhJrAuBVU7KGFXl
	 0uhj3LJFkPbroFOqK2kkmQ23y8bddJR21M5eoRFm/hnIUDU7QltRDDputMHhFHCjBZ
	 1JOzKWxFi5vvqBtXBfiVKmiKZUh/C1MX5Rmdc9YeRdofTPOk7YF7MRuxOpOaAadSBS
	 kKiDxvEXZRTX+PW/0BN10fpKSUesAJ8fYsX3mmiHadqYPOvEKRYk+IHnF5HiU45lMm
	 +tKWmrerM/ayVU6HPkizuaqWkyyWm5HJ+bnMnD8BhOcHVPJcXImxm4UTdujCewKSuo
	 zKKQYDQqBJ7jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9A6C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465239361.9123.17878229315805104742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a50a20b01ab4b878df95e2b4423c104de08fab60bce97bb6ceb4647429fb7d0
Date: Mon, 14 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744652393
