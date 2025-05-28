Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362EB207DE2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748414994; cv=none; b=G18d2Lfx6VZfnlkg5pBB72QHHB238F76UyKK5zqsrpzjzjusXn+9gCdytWmbpggd5HABlFOPEd4SdrX81ZfEcZ6hzfdp1Bh2KgnV2pF4P94iXiySWrTz36rb+bRwLZHex7NldUYJna+r6gUDeW53LhroM8vXWItJtxrFMMRen2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748414994; c=relaxed/simple;
	bh=2wNZbdzffeoviwyF9IXEpDxwNT1vdzv8VQJAgI2ctTg=;
	h=To:Subject:From:Message-Id:Date; b=ofKfTXK5uzy+h+kKG7VNsX2LotRreBIPRok3VjYD2BwoYVxpd2mw8TZdffYVsVhdrBbmaDiyfuHLtXpfltFh9c81jjdh+i0MPLeOEtSyL2rSrhynQsvmpbyna79w5YVW0FUTnuKJptop5p/ywcCowg5lt5mFJG67OhOpsOWdGsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hd/dB4eA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hd/dB4eA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3564C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748414993;
	bh=2wNZbdzffeoviwyF9IXEpDxwNT1vdzv8VQJAgI2ctTg=;
	h=To:Subject:From:Date:From;
	b=Hd/dB4eAc77f9t5Pqm07laxus3gYgEFYtrOYMPzcmPytKjBmJulvNiE63w89cNNtD
	 FqZjWi/qcE6aa+U9urzNi+9GmG11YF/wEaBAzObjnP2zvRnNYBOa0Pd87wZq2Jtb5S
	 STl6VKqIdatjabz2s1hCzICwlsAv/WMYzjQQbAirLmIqYV7WKtqeLiYi7XjynZ4qrk
	 0xbQ/AK08jF9J07FCXAWxozkIJXGtNKGoKDeG2EZ0QsMtRpFihjaH3ItH6LTybvIdc
	 RRh/tPhVv5W80k/BQ6eseKWf/M/wTvvubY9AdWYs3m5ZesmzpKV+357PAViBUn1gUI
	 A90SocrTV2H3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90517C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841499358.1542.14148998308267874422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0fdce5330b66f533a9f1e3663ce1c0004941037821f9817fa8fb21f50a5fd6d
Date: Wed, 28 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748414993
