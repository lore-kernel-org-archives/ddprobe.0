Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1915D212D3B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728414954; cv=none; b=igaiNxysYi4N5hjf9RQcuR6YtCXcVt1E5SP9nsiWt8uJym8t6WbD2+E+ubzbiizU4uDMzwYzy1yJpyn8L02+zqLRa677BJw1OzG7bQmnsyEx3zHRXs10By8AxEygj6DusUv5VcYz1T2mbLHHPM1882jOZu89QYbkLW6j2iodZf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728414954; c=relaxed/simple;
	bh=fPnItYx5rGLO9D7sHkhFVWfC8n1H0zs0tpYxGC2A6h4=;
	h=To:Subject:From:Message-Id:Date; b=u6OTU6PT75fMTFUA8O2vy4pkLwMPu9+KtMbgaH1MFXFS1MXLPFd6aDPZCtrlO0CpRuqiMV4dnTgAN5dFZK8n5LkWzoecTCJaPfl/w7o89zNevS5oJxqnf+RWoGNKpJrBdrIji3sbYdvBgURAA4nc23mTX2z4FzchHuP0UJLErlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cso++XtI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cso++XtI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0015C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728414953;
	bh=fPnItYx5rGLO9D7sHkhFVWfC8n1H0zs0tpYxGC2A6h4=;
	h=To:Subject:From:Date:From;
	b=Cso++XtInpscM2DNo4H4I0wS8VLTnogiMIe+gec2WYp1rC12wtS4Ypjtv4ZxPNAHg
	 1B2WxyJqplwRoBVsX6Vvf6ixU/AHMiZSrgDj1WyWtRgb8sQMCwoRsqh+vYKoJvR2+i
	 BnWrrzSKpRhqckSDWrQpw0aLJMNLkJKW+5Hz6EnD5YwpzWHukImdN3rJUhoUt7SFEz
	 1Pg/D+sqyQXetJz6q6GtOI2P1MLYV9u+h59+zbyL3OdKZQX4GiOKMMAPlVkRYd6F2F
	 uVmVc5pskAFJBxXfr1wIVYBTqnjjvH8V1hLQ+LAK/pBpkfL+jE7vAGdYiWt/aw/sqn
	 w4OBv5hwGqECQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90300CEFC43
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841495358.23474.16235807343262492869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe3db954fa4deaf7f1d437377aacf571a0195277096dc6ab0a67cb0364399a6
Date: Tue, 08 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728414953
