Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8052EAD1C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774887894; cv=none; b=dkaR4k+7fKCAwhRRVInN6gctN3Jaah+U/y4QElhhyr09tjDaqYtYnrxWeSDSU1V6s/w0TRwzZ+wwNdx3HYNVT5kDgrPjxEqZfi8Q/IPgO2PdkQhLBIMPih+pGv3CUgfe4WWRc8ut2tGoI7c9FXvRMmSxG/uTa/1/l/apXYLGFKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774887894; c=relaxed/simple;
	bh=CgiMvFeg1RfPM2/wvvuRohy7V8jOw7HOgnhsAzWhPdg=;
	h=To:Subject:From:Message-Id:Date; b=QGl0jOJ+8khgMpHRWpqzqZfvGAKlmgPMHLoVL0nzc6MdwgBrJKR4qRP8gjn/GHBLSuO8dtgD5rEdb3Z9aeqqjmDl8oBzQ4VTcOumE6HJxw549lSBvizf2A3HrgP/FEyaVXtNJ+nLwcivsKvUJAasg27KJHC/uygxa1/EDwAyZ1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehxfgunN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehxfgunN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E7CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774887893;
	bh=CgiMvFeg1RfPM2/wvvuRohy7V8jOw7HOgnhsAzWhPdg=;
	h=To:Subject:From:Date:From;
	b=ehxfgunNgUPui6SshV0GtJH0j7EctTImLNBlA/ggaGRVT4kp3zGfcEsmNA+rzZiDg
	 Ns5ZNxwO/fVcQrDO7NMQCNXsqMNvEkujyjUd9HMH4HMvTlXYqW4UoEIk7ec5w01oVw
	 Id8G8tHVkY0ApZC/N+i65sX/RIlH1nHjOWVLCJJBNW9driJsMeIDjopOxE6GgaoMeu
	 LoLlqyxOXbWPicsxaSwvUnONVWrj4koqzOGe6hNFAqKrc6t0i7HBCJTkIqkTcVRkdd
	 DSgu8pDKShBRnGFrmzJP0oJGf7hnKfjxitWZETeiePe1u2zROGdRx1pCti1WvZNVZG
	 z/qt/IyBw1J0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C9C1061B0F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488789358.19877.18230396775274569251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6684c5fb94b621c25b0a46c0e58fc98c6ed64a900607598f4c8236951238a73f
Date: Mon, 30 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774887893
