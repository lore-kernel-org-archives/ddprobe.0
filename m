Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6551B4138
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743274194; cv=none; b=ZHXkJuy2qtjv9y0iILg1JXBg+Vzn+1GsRavi5uyGW1GGUXRaTIOvMHtPMA918TqVDnM52rqnWOhaHSWpjh+B/4a2ZfDFl6LMoGIkCqKMbaNmW+/N4IBG8SA3ghxXvOTJxHZjG3GlJIiF+PYQc/vhzx7Ie4gGwyi4VQRDBvdbKog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743274194; c=relaxed/simple;
	bh=lHyv+CFWGq/oLe6qgSL622HIVfw6m6AsD6ZGhcPcnmo=;
	h=To:Subject:From:Message-Id:Date; b=iHu2wYPKn3/QqlObvaD/iAP6jHRTPXPoFb2l8pUfA2k7CI5zHS7ciRUAEqWRoff4oIe8Z3Yk9Ghi8U3bgHFSBk2ckTCHoOqbfXrBmtYEUP34MvqQzsgqV0hzpkFFFPXjzw2Hos2SuAZyiMc43DbEFYdYJP/9QnVRsbA5gyrb3Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZIDgyLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZIDgyLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF8DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743274193;
	bh=lHyv+CFWGq/oLe6qgSL622HIVfw6m6AsD6ZGhcPcnmo=;
	h=To:Subject:From:Date:From;
	b=rZIDgyLPZowbtBKNqGNsSYNN0f9VGBa+KXIeoRNuNq7Y9hdLny3ZgFct4OC7q98pH
	 yTtgwVWq+CzSFpUbrdzszzqIms3jZ2DSfqtFp3vR/nqfcqGKRcp/2OKdSmCLXdR5jl
	 8wbt24DyLz004ao3JczQfWK6SEvCWMaCdGtNFy7Z6HcB89dry9y44PcZPopVm6LFcz
	 qQD+um/ZKSxW7aaycKZndh6M+iMa3JqjC0Gp2q6G2DDUhhcq4d10cYDW1iIjikSUST
	 APNLPoONBfl6umtfoKR9VVVMgkTGSejcqFznHi29Y4ZMlh3Oyoo5Bv21KW6MnBoPmn
	 ua4RANsNlwRuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6905C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327419362.19086.7148169329608452559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71307669dad4aaf14653c0e1b7e067cf12075f95d50b73ee1804e39a510ef093
Date: Sat, 29 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743274193
