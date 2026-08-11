Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732F643B3F8
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786444234; cv=none; b=i+9INBn496/cX5ow5mIKligr6GW1TulG/PYMzI6h8vDnhgaru+9j0fkr4pNPk8waeNkfz3St2MaWad7So13N6iiT6PStnnVDfK7uslnYDSbXpF7S/e0S5R4ut1b6xKjWSbPfXVLb4zWAYovUPbhpDzqNVCKt76YZbwtuoGlQF8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786444234; c=relaxed/simple;
	bh=+kM+D0F+meKwmFGsnNGYXr1XTbVacabZRugyxsirfl8=;
	h=To:Subject:From:Message-Id:Date; b=ZuHI1GrS8giwXUjSyf7ljq5hOBlPt2Ng+wxapZEM/tc3AIQkgMKtcZ06m7Hu7cVdox+ZQwpq4KqZYAPX1TsOsCjEoWs1sEW398zPaQkj+szO9k86stIthMMErzwboYedxkoVITaaKmmVjKg4Nmf3U3z2b2hn2dVsILwb7bDLQQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LD9qhHrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LD9qhHrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF85DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786444233;
	bh=+kM+D0F+meKwmFGsnNGYXr1XTbVacabZRugyxsirfl8=;
	h=To:Subject:From:Date:From;
	b=LD9qhHrAfNWD45Q9xOAbLCg9bh6lw827ndQX2aUZTA/9vjlQSCmjjGJFmF6S6Z6Jy
	 aZ2daCs3ECa5E6/eGgbgZKAzGBaIWi0c+ctTJH5rF/yRZXDzjGASnef8fBtxYFpzoy
	 oSiVkmKaPMT4V7ZpTXnnpO9+xN/eTggwqplW+O2d4H6mK/4vlf7cfFJx171/xSFxcw
	 UYM789WtMlJzhDjgYIexFZS0zteeUy2VxMe+W5QGwu9h6g3cKwmFS1NSLOPIvXouaB
	 v/j359jKrjHFBdsF/rBBn+NMeNq1HOCUQioXDPizkWvQ+knuNNv3RMMHkeudnYfY8F
	 rOoxAj5MBbotQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5C0C5CFCF
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644423368.1086.1428820715216645014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df79c904b1d02a33a2313a527e592f6bb84f9d1cef18d2c4d8f546f35c1d4ea
Date: Tue, 11 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786444233
