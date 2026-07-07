Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441D82DECB2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783458514; cv=none; b=WVuy+dlMzNFr23Bx5WfkFCF2MzrT44TyW9iuKuU/XBeXo3JeQcvtNeNyjhobvtyWVeJE5mDZYKp9GjLp55nFJW4MFN7UTBbfY0hIX+xGGpu3bV/R8t5sty8/5Mb+3trVwrLLJteF9K+nT32ZebpqBe5Q144ra5l9y2wvbLnuOf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783458514; c=relaxed/simple;
	bh=zjxMoPu7caM4r7FJL2ucfF5I3GqnNpC0QvvujaKCGRo=;
	h=To:Subject:From:Message-Id:Date; b=CH3IP9neru5bTD1uGot5x7HIc2cB/g/Mc8lE26mvwG/WVk8mho7Ypl/QrHht1HOfuF5D2QZ3wkxfoQ9leRtTlQOKLR9NgVWhjG95FKvnWAk7fkNDSt621oimVQcO7+t8GTKYj5/gKcpgNr5BhPZULH83GIITMuY/jaPHCtXNTvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdkqZ4eS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdkqZ4eS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB456C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783458513;
	bh=zjxMoPu7caM4r7FJL2ucfF5I3GqnNpC0QvvujaKCGRo=;
	h=To:Subject:From:Date:From;
	b=LdkqZ4eSk7AF6hZ6cieT0OIytkT3AJvX1U81bjD2hbRPwJ5rCBM95lM1rAguwXvOy
	 VOwETVNkhye8QXDW5k5xNi0SFXRzWAL1G/n+pjhKD/BJSUcc4CZEz2Oaifi9dBiCF9
	 lhnQ23CLdtaiL9y3m6/cgn51dQCYVwEwlanr+tmWuChrCZGzzr6Ty6i08kB2Vdxsuk
	 02VZTatdUW96r712GxM5mSH8TbYBf9HRZHPb/EZmDBlXkcy2WMkT453wvIG7EntkTW
	 xUbaivj0Yh4tT1KJ7Q3xKa3SB8S1XsHaBpCQrUazXu2ggZYugm6iCjKAUMaL0pX6Wc
	 mi9yE5Y77E1ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90D7C43602
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345851368.16703.12847394598971578993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545ff79acdb7705f0d4a80273ef43617c9fcf02a6719aa9a614bd539da0b5c22
Date: Tue, 07 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783458513
