Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2651E1E633C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775907454; cv=none; b=nN5dh21HNCr1XE0rL+s5SrLqefSbaXe4eajFK2aOIilWdd/rbZnVNt4e7KZIpL60kQVCCg/+mj5LXQ59mreYbdCWxXeWiTr8Xbn2zLbP7aFPgV+evh4AQQyTP/DlwJn5WQOQ4B0IPgsQyn7ckCMfQ2W9OTTwPqhx75mQqKt53B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775907454; c=relaxed/simple;
	bh=xCNjeUajW4XBDoT6HOC76outwwwC8uyTX2DyQ/oghm4=;
	h=To:Subject:From:Message-Id:Date; b=PsqeHg2bs4ZOBU4Sy8SbAEhX/6QthtEBbvHeaaWq5us1+qm2nQq8Vz7SrTKFGZ8Kb40S83dkM7gQi+Z+/3yw67LKKrfe8TvBcgLZ89UGVo3CJ0nEh2OoWnB17A0uIV9AHks2E8O+K7/h7LpFXIMi6AmsYmbpTGAVBZIj3AFxRw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2+ryRfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2+ryRfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C100AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775907453;
	bh=xCNjeUajW4XBDoT6HOC76outwwwC8uyTX2DyQ/oghm4=;
	h=To:Subject:From:Date:From;
	b=g2+ryRfVHopJvah7FcUJczG+mBUw1Yh0LrHbMJL2+o67w7vJPMAvsCI80GijeKZbp
	 EPGZqorr01pPuJ25W3Vri0xAgJEuvfE5a/umR/QCBexsVXUsNr6fm8FcuhEz9Gd8jY
	 kgraV3hoKP+yVgVUagiu9UowqccFScDVv8mWcU0HauEBXPNGrfOB1Jyzj3HuwY+bAZ
	 Kx3LkEOnCDyiVe0dzPU24Z8pS/kqyaamAfUBjWWFqUM2rV5yHpw/EIV9smyu7f30iP
	 fxijwMuEJhVTMQlMpzgEWnrVnL5UV1Z3nUoh6644OuBBs+stmRG2E6vQ10tlnJ+9Fl
	 sZA/xalty3pcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF64AF3ED43
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590745368.28831.6441083554308596196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c61d3c5849de95372a6f0f6ae529b6b4be3576e8b14b044db3b4276e71f0515
Date: Sat, 11 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775907453
