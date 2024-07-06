Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F135695
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720251923; cv=none; b=A39g1R54oVGmLaDtr4zDLgsT54YOW7g3hvtpYtM1cwZAlwyqyFvpaeKyGFOaXHTuzBpt0W/Sjm8TTe4KhhF/1lk9sp3yxqskAmte1/I2BgRMzlYo5OsA6kpTAHo7x/kU/QMuSaAH8xlie+Oo0XLqLNUMPW37WgUqmaHY3z+GMOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720251923; c=relaxed/simple;
	bh=0vy7je6sGROO+r5Iirxd8O8EuYsyiSRUcAda8lnd084=;
	h=To:Subject:From:Message-Id:Date; b=MLmcpMCrILy8kl8r3nIIGzUbaL87YyalEaUyeC+q4kT97MBoIM9zSMSAQsvUFYd9XYpWzPij/bXETRaBFv+5PM8ApWbplwvA5UP+fmWIoF1nf5l268NmYuVQ1EJtt57edWDk3cVaf8fa9VPYAkf1rGE09OMCXou+OcSPdYoCO30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9qxGlr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9qxGlr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29BDC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720251922;
	bh=0vy7je6sGROO+r5Iirxd8O8EuYsyiSRUcAda8lnd084=;
	h=To:Subject:From:Date:From;
	b=R9qxGlr3gCKt/2t338lgm/yJJV4S3JM+CpUJVeZPzoe6jusXY7ejAdNOXqxyoAqT9
	 c/4/pC3NBssqbIw9qsqz4LwUzkJ/pQBhEC8fINX1IV+O5Ewm3kWuQRofy0GtfMTL6k
	 1aYNXng6bhCDL2aKkR1Q/cHsVqoUsO1AnXB6fLVmbkeN77l2Km5iyhIV96l5GwJ47N
	 Zvf52N5QQxMXZnru6GGh7bM7m2Plmbudd8CtzHJAGalOIds4/WsB5Kr8cUkfn1KbAO
	 xeTMmfPDcnRBU3ZUklOZBnSeG21PbywHdf+FNB69cq7cndxdzpEN8idMPgxdp5IQF3
	 kya3MavYfMjcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98B3C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025192281.24979.18217723223740618697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 360a15caf92b9878c8e253c26e4bd8ae2a6d12711867d33418adb3da5910fe9f
Date: Sat, 06 Jul 2024 07:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720251922
