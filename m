Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1D4337B9D
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773095694; cv=none; b=HWGGyxNh44Y5BXE2A80RwG3kTFL6y7iI/5oSdjNwH6Px3vEhSCPnxJl6y2L2ziKocjQ2bPxuhusWdBltuk5EUPeIf4YGuR4YFEaKTsixnV2CTQtoHQWqu1aL2D7KM61t1TTCoje8837I371c52v+2zXkg6Uc5ty4YZDIryKEuLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773095694; c=relaxed/simple;
	bh=ETGB3ftD/JIiuj3WWM2xCZ7u/Vr0DJBa4ICC97Ekyzw=;
	h=To:Subject:From:Message-Id:Date; b=NypGZTRqlz9SiHna6MF0KiOP3XTx3HC2vz0TDlH4fBB+GnydIJIVTbu0mf8PgsUjvnhUgaKIOXtHLK1gjrD38vamn/q4ZkpuN6xkLg09pjPGWWiAbuHdYbxqG6Sfdg6uZpuDPwb3iY/AoQnPfC1lV7w7bVQPm2c07F8eF05pcV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jU7zRa0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jU7zRa0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2289C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773095693;
	bh=ETGB3ftD/JIiuj3WWM2xCZ7u/Vr0DJBa4ICC97Ekyzw=;
	h=To:Subject:From:Date:From;
	b=jU7zRa0FtKXir0nfQ5xvO05cRVOygbdSzJ2hiWB91kxzFHVwzJk7Py8tC0y8mJIqq
	 GPAjaehcwAvOboWtMyGCSvno2WDQpxg7VXXd8yv6N/AQHu0owbpPTxJTSsKrjb78go
	 xyaFOw08UM9mGZYrSiQ4Q2YaDAcLehGepFIS/M71LRwkyDdsTtcyyc2DKl17sViGHc
	 UucnLlIsJKlZRF6OsbjGUz1Fu2VhrTssL4NvYTrt7ou4XKwcZvM16N3GLa36c6ul5D
	 4wqQRkKyo+/qiYb15QHIvDtWM4YppuEx9g5zqBi2qqDO7MtkIf4YgyzTVZIpUN6qF6
	 FJC+gmlMMlcLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECDBFCA19D
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309569357.19031.18164919841299090827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1692b938b02537723a4bdb70e4fee68b0616d1c6842f6782c50628dee1591729
Date: Mon, 09 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773095693
