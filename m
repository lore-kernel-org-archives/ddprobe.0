Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5AC227BB6
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747381794; cv=none; b=GRrScLwekCltBUJRnsiJpJfI0vAx7nt/3VfPVo118ljabZuG3TDXF+2JcpcDzrwNuFHpV5Xii9JXlZsAuvexO3mxzeCGVLwNNLRHhKn68U3oLeGErssNqYfVs6xjwyrGah3yu9UtBoYKC6zO7YxxDw3MoPvdAerxr4wxU/DHMWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747381794; c=relaxed/simple;
	bh=IysZqpMy6XPbcho7iTaaCtsIyyM7pn82i2Fgx7aPxiU=;
	h=To:Subject:From:Message-Id:Date; b=hIl95+7P0shK7Wh5k5tDMpOmRHIiSMHZP7aq+qK/xK8PInGf7e/f22S5xORGAUca5OWmidyjynxb+vt1bwOs8sUC3YjUW10nbui2scVqIyyyLs0ZJbCmdHsS5rnfG9YdgVDAstH8yYmFdMD1R4EShBHCHsD/MGTG84f140nLzyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVoalTRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVoalTRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAC8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747381793;
	bh=IysZqpMy6XPbcho7iTaaCtsIyyM7pn82i2Fgx7aPxiU=;
	h=To:Subject:From:Date:From;
	b=AVoalTRXvU3V8cYeLenedY/9umlBtO18zjf7GvlUS8uzh9tDbGc6NudbQdAidViaP
	 25luM4ud08PDJCXKOxNRztOyDYDO8W6PAWIo7EjgpHxyTBESshIv+YCQLDvf0/Dq+m
	 GO1AGx3AK1aLbPrP6d8Do85AWYA5I4hYEAbAtKNDSpJe4s2+kPzqZsSNQTpPDUlrK4
	 x1b10KztOHZHfLprrC9Ke65u4Hgj41IaI4rZiahp5ztU5BvdBsblgj2FFdaCVtRFS/
	 sSOkDma3Pt/7fM5Yb4OtG/P7J+8Tj/1TY9D2Pv6mTmilvNx1GQhNwrKADkhFssy1fs
	 mzvodPrrpLtuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F280C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738179357.12370.949368162443545565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ae1b8781d1f49fe357ddf9c02189748f3e4b4528366587a8b18bef9f6548cf
Date: Fri, 16 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747381793
