Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2299038A726
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778764234; cv=none; b=i1HYKJrli0cKmRidD2Pqsx4XOMr+5O8AXLDIP/ZhfxRSB83oGvB7bZRxf+VsaJWYknyL1XT/vxOhrH/TvlLMFTSI9fln74OPJgjdfyaj7tlVSFFdW6qRsw1y3bJtYlPVKq2Rlpi6IRM4Vk/t7WXLDJqGkVI/KwnZ95WRI8QzOhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778764234; c=relaxed/simple;
	bh=BTXlHeEGK0NRy/ldeVDKmaxuf0mgXQICioPn26Bh4nw=;
	h=To:Subject:From:Message-Id:Date; b=Yl3eV9w9tSr8mD98ymkI9TH/e4oSHmShn3Eua/3ZpicmbWf/5k0F7NyJzzOUa4lMJHGlEVI4hihyuDvZiNSundPVbrU/j6Xgx35mGDISbTFd7ex8WbOZ2DpiALV6KN79/A69JbWmJhbXdAHtDi0UN6VnAuoIN+qFr7Y8dFMdaYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtNq+qE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtNq+qE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02FAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778764233;
	bh=BTXlHeEGK0NRy/ldeVDKmaxuf0mgXQICioPn26Bh4nw=;
	h=To:Subject:From:Date:From;
	b=CtNq+qE/u4MRofvjlNyMcyR/POJiRCCTZHTfQz8aIdWmEUBNo5T9912Hmo4suXltw
	 QtQf8gaWFL2PTCR9ni93V0VRzs9SakNsWjBbvoZwNdfotGNEksLMmu38+Ov5lMp7qI
	 21jxx9czryuduKZtgWunhN1en/B7gaGD2fr1J1X97xiLxaQuGumETQatCc0y/I+76l
	 xdtu2rLlwWvbjRnj4RMkSXvFHo8x3RUGCubAx/IZw3NR6Z0X3EOmWvM9UvI+rRt1Mo
	 7ROOzg9jNxPlSlsqOApDT81bWZdwBuSAeSiV7xO7LeeixiTVe5gZrzZhrOsGlcHjgt
	 kIqmjzmnFo2ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F63CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876423369.23112.17511386778417146194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4128495de6f8ee9ae0177ceb9177789cd130847131166bba8922e9a5bca874c
Date: Thu, 14 May 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778764233
