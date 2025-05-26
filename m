Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CD110FD
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748258394; cv=none; b=idtn/je6UIlP4/QACA0mhMQ9FCTBNkahTSAThzAaSde2R0eVkhIC51Zn1DKaVZaW/Aa31pEyH0iUOBR1ExjWdKhNCnIFBawTKNxa/6GH/U1yBCGYuiqTYwuJxC9iRUcsFfTobQ0NLcOSee7lPoQJMgWNDqQ10mHyE/7Z5I/2u0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748258394; c=relaxed/simple;
	bh=6vKRI7MSLEtnUaIsGBP0lK20Vs6weRLUk/ALdH9ZGdw=;
	h=To:Subject:From:Message-Id:Date; b=JPjmCH5umSF6S3QVlIUAW0Xp0mvUCavyENZXXjQE7NQJLqIPj6JlisrOlwcqBPZC6ejgn5Q/1HdBSG8gcxM/YrxwmiT81/igumicoHyqefD3pn/LSEAZWOPfTW/ifF5RK4YkzkIZC2VQll8Y2+l+SgLJE7mVyu+FtdRMXonu+NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZJ/LrIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZJ/LrIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE79C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748258393;
	bh=6vKRI7MSLEtnUaIsGBP0lK20Vs6weRLUk/ALdH9ZGdw=;
	h=To:Subject:From:Date:From;
	b=SZJ/LrIPGeAM3VGfBtOfIAOrya4T8R76f7hgskyVLB+K+hDn72NvYoXon99CdEzJE
	 DxDwTes2MKs5WNkjm8XPiFfc7V1HoOa7xsTOBTDIZdDgo/Vs63o3B2wtlzWLun2YbH
	 Cr2sK16VKyFeQuBDLL03UvywNcYqBnv/s7/XcBVodxlvWA3Tho/lULk3JNJC1u8wRW
	 L9unui+7TnSjbCg8S1X7W7a41IJHzFESXQxUhxCP5eog19LeGjXlbqWhcv79+6eTFJ
	 8FWzwma5B/IboJA3RYhe5O/ErdPmYqM59hn1zpYeG9Uto8UqsF/egAHVlqaJM/44ur
	 KAo92SnPp6Mvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F8C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825839357.16295.16280111752786819225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311bdef65c2e912a0ef88cfc961b3574339fde5a9cbf4fbea28323d2c4b1eb92
Date: Mon, 26 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748258393
