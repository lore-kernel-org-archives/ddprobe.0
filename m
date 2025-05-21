Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4174228983A
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747846794; cv=none; b=MCoewM0tUCthz1f+lGwpopE7QP6ll5HZ5pHQOIpOaYti0H/Ea8hICp47Yx3BeRDwET369K9CS43Ypcx6ojgbI11McHLTbwewHJo4ekriVSAB80YvtUB/v2eMCZCns8IS6nwz+XmbtErhfoqlxTI5nCBbYGSKISwIPcnThlhx3hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747846794; c=relaxed/simple;
	bh=QRbJFrz+p1u6vDKSeqpo1sBjW8KpARjXSz63iYmvK+U=;
	h=To:Subject:From:Message-Id:Date; b=BWBSAXU6wg2HZJ8F26TNS8Pc6ihL88Zb2GfF1nANbibda/IG7YbhD7f1n6w4BP0CDqv/e5KEj6E/PUXZ3y30REVgZizEbcq36S2AEDXLOuiy8yETJ1YQV6QWa0EXSQobzpEYuR1h72xsDxjBgQNOTL+meI/outaglK4xRT13+Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChpDqfSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChpDqfSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD55EC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747846793;
	bh=QRbJFrz+p1u6vDKSeqpo1sBjW8KpARjXSz63iYmvK+U=;
	h=To:Subject:From:Date:From;
	b=ChpDqfSg8u1wAACrw/qJlyZ+s/rkVTwHnTse+VMvNwRUg5nRpAXWbvJQA/UYx0DZJ
	 IOPfFdilSPM907MI1YgFfaqPb4ZjYJ64Yy5tYPZToaoDodAQMQIzwEJlPqo9P2w5WX
	 0hmDJmUXusDzopKBrdXwDcI/JmYSpJJGiS77l8RiBGqPh8+2L2D/0O4CzO6hhDJM+0
	 SQX2lVbw7KgIbj6OaLcF3nlwcC/gXcxLOrP32qMMl+rne0jEB4Y7+VNDexUry9fPg7
	 PnUDGD0aVBQA/yBXvAsDnXZqp/faCfeh8g8AbTxqxXPqddIz3/4gJ2oEmDAm4RDAP3
	 b5Lxipb1QM30g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E762C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784679364.958.15452919562689238243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f34766449c1d8d6c09f0a1535d19d08e58e946f793a82ddc268cf7fe6e6134
Date: Wed, 21 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747846793
