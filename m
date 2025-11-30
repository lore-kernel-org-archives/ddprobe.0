Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27258229B38
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764535374; cv=none; b=DRz6h4fW2dnbqaMGtNXfIVzwa9vmyX1QX/HwSMRNNpKlhoo8D2v3rZ/7ZB/LeEXsicpNGhDWl0/87Nw77MRGyBdMprrxkfxavMa9q9FVBR8hqRFVux7vsJ6Du+O6FMtqWQm18Txq0VSoMiYRmqzJQxFkEhtmE+d7+fBH1OAd2/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764535374; c=relaxed/simple;
	bh=v/rCravMmTxkMPhfOZ0JT7k72Adl1Bul+qP3AqXA4QM=;
	h=To:Subject:From:Message-Id:Date; b=fBQdUGX3KKBqQ+k/3ML9wfL+HUlS02dEerj6Lp+ILAsAuvcPQjkNXXe17bcCGxg7IMLly9yRtDPEnQMFbzfaJDCG5HbUTpYJRqWDJ+IS2WN1Sleuw6rpoS3TjMvG5XLcv5abhIO+qZFGIRU571tbiPhL0eonvsmMIvk3w4pCuo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiNVl6JJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiNVl6JJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BCBC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764535373;
	bh=v/rCravMmTxkMPhfOZ0JT7k72Adl1Bul+qP3AqXA4QM=;
	h=To:Subject:From:Date:From;
	b=AiNVl6JJ4Jtpo1a8m7tF3xqoBUlFdTxsLCDhXLo4haCQzoyL9eFU7i5rHlZeBl1g9
	 W0oii2koK376h6GlGZa/DQbplKVTHtf9JoBuEKlC78NbhalMWE2gPlSTk/QuuMI8V9
	 WgniYYE40qDmuSPkEjbKIhJ03K3TndSdBq+dZZnPSkFS8GIKMMPgPQgLrVerzLVXJ5
	 VwqeTenGchvH6J0FxnklJpS8tfnMq78jka7tNAxzp+uwZ7BO0e52b82ZcdKpsItdMe
	 omwsHKQUPSrS4Y42+LEzeqFGshJh2YxDlQGkovBrUoXAe03AswKt55yMrqLdu3yKuN
	 h5dm9K7lLgGMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9411FCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453537358.3800.11420872112046895404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc392a7d066a0be2fad6fd68c60c8e455d08243a26102f1ed99f1b95038815e4
Date: Sun, 30 Nov 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764535373
