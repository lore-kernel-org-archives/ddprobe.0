Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7DB10F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757273394; cv=none; b=lRNOv1vWvvUIaLGA2wGDO7HM5/vLBOU1mCtdkemqSumwis8cosT35jTzGWPhDB+3GyNpJ/d0IWTaYKM48uiYoMFmTKX0Ayyp6WEWQ6khtCwn6Ex85oOJyPkAWDcqFjaE88eI3V3Oj7cauAe7nLyP1zxXaMXtAnIg8uIDTRzcM8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757273394; c=relaxed/simple;
	bh=/YlGTxonI01tErq+8oIPwfAjdPfs7NcVv9TrmsCDSik=;
	h=To:Subject:From:Message-Id:Date; b=QbNxl/LlWyU89E8U3BYvQDmfPe6retbtlcIzEq3OLM8QDAKIWnQ0UsIeavvQQ2AoRlIlDKQSVfBXGNzvAM7NFNFgcRm3jNU42nznLO8GJKtLYUfa5kW+hE7rUwv092Gm0sXSOmp9hmBj9X2VNcThnx2QH71019uu2yvATFVWpTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0lNf8Cm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0lNf8Cm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D27C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757273393;
	bh=/YlGTxonI01tErq+8oIPwfAjdPfs7NcVv9TrmsCDSik=;
	h=To:Subject:From:Date:From;
	b=S0lNf8CmcCa2V5H8PjAshvn0bnl2v9mtcvXjitXfdC5rMGEXRbAlI6jfRM8dEoSVT
	 HqocEDq5Yx/0TqZl54FlEyuSbH7V17nbWzGIkW0x5mMZM+VPvYxBfpqwR8SiKCds63
	 bxyXnTcTAJPCyii0mhMVvDGwcqd81yaLOlNUpTHj3e+wFc4iaA35gNrTwS/kmB9CJH
	 GuIRCca4cFyxCavSonqmfmibAm+s5n09+JAxspE/4btp5gckr3KnI8+Gjq+jwNdcen
	 iZEgsZrD3HzpwkaHz3K9lsGMjHdIoDjohDvP09Y1nnfY4CvzA/DRmhxBo+DMTinG3u
	 arGbY3OeUwkrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B49CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727339358.21457.18788715510605802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c66a70d3c769b4e57b53e4307e6881c2106bc828f0d52cc2c032e0cc177e65
Date: Sun, 07 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757273393
