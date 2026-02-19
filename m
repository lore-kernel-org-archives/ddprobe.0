Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A87D277C9D
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771471494; cv=none; b=BDEDcNmKfbn8XrVpBOsRPnnrhGuaQYmoZkNePkOdFu7HEmIpWgu+2Tjl4E4cT7xIcQjgA08G7aPRq3fisOIsZl1FGq9N2BPesLhO0p54PppzDeQtI+cSKrMyGH0vxJNnywEeEqL8skLvvGTNw1xD2RATigOsocMHQGqVksmnOp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771471494; c=relaxed/simple;
	bh=GVVxfpCllFQBoEMiNSxIlEXm7wDzlVpp2GacZueyQPM=;
	h=To:Subject:From:Message-Id:Date; b=JsS+uv631nZqZWTuCms38gKwq1dnigUiZhPtN3NjiWG05lCqsrNULZOppiBBFUMn2ybAvcJi7MCQ1nw+A6+68gCvoDMEPbgRHG7199idXNCZ7mpKl2O4sSMWTGbaxYzmYgPNNi9wbnk+fQL8kwMXnHmpMnsci0rFQLpmJ1SJ2Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kh5iKb+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kh5iKb+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6810C2BC87
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771471493;
	bh=GVVxfpCllFQBoEMiNSxIlEXm7wDzlVpp2GacZueyQPM=;
	h=To:Subject:From:Date:From;
	b=kh5iKb+B2RF/odz7RfssECEes1CTAE+54PWU/JmZKFAmY32aaIqsT1lQ5Gmu5/6CD
	 lwr7P1Ufi7f2NuJk//EzKW4WCksGmYXVJUzhsdskdYsOC1O0frwkAhWXrg+AKKZT3z
	 hLsBA7qRHfVz0SjAV1VsHsE2EG3cxMDa9DeOR2wh0E461BtwljcdwSyzAzwLTEvopO
	 qcfxuhJnnB9qHPleGkxtgY5zPKGMOfEbqgHSP5CSTzFOZ/Ur7khoNvV35tBd5uyZBl
	 r7pPM60GhHil4GeOoc10kKk7X/8jBrDQjjdUnaIiHPHAMGAeb4hTWOIlgYI18wawYF
	 WUDQ5pLMM6YuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C38E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147149361.24167.6713668884707146180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b059e55d3c930bcc73c118b0ccaf77d97fef6a03ecae81d19078aa15a962cd8c
Date: Thu, 19 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771471493
