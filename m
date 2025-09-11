Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F97620E702
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757630394; cv=none; b=mpjLUC0M6jh8qBKN2CXSXaq4zGQxj+gtR9A9iucj4LNIZHwTR/wQxGs5irO7gCnvslSIcd0bE4KT6dumpvNuxN0CUcUoxbR+XZyXUo5iZprQAM7u7bAhL1BAhNHqc/1Q9BNJRPVCxr/HBSn18c/T8t+Za/MoGaGIzU6Qg9S1D7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757630394; c=relaxed/simple;
	bh=klnHLUIK6nRfzuHfBiiaEG/CQui0DZQF1aE2gmVkTxI=;
	h=To:Subject:From:Message-Id:Date; b=oFR6MvUN39oUkjP7rdxOcFywl3SwP0KfgGHGzla439clfy4GDfo8zaDyiaroq2wWkFwVwAJNi7pW7qerB/4EW/5uFRJm+TCRqsitI0G8aKFyD2xuX472fKv9V/F1uMPmW4+ikFggoxHppagJPlg0d59sb2u4NTVmF3sLtPh9Gp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2ao73yh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2ao73yh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8680C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757630393;
	bh=klnHLUIK6nRfzuHfBiiaEG/CQui0DZQF1aE2gmVkTxI=;
	h=To:Subject:From:Date:From;
	b=Y2ao73yhIxO2QMPolg41uYZxk4gz16KwTSfq12+PZeRT/lOuAIV1t4NroXWwzTLp4
	 B+HdEprJSnVDdYyiRCSD9clVGwqGSQcdj+orGjKT7RMsoxKSG5HNXGMZ7a5Co7Te8H
	 fGaElxRTvuTR6NHHQz8fktl4HwjGyE4ti7dm8dMtAuGSZdap9pd5CJHbINBuEJq+xg
	 KqZGSB0jw7GKatLzMOKGnCAV49GakMKbt/88jEDCAA9ALXA3DAQkOLlgfakFEchAgX
	 XwtVNpFMnjvIe/NZJoTuBiswkiWXA6tNQm6pUZ+4EGjABoHObiXXF4bROSKXmnXKpA
	 kkrZ+SgJ0JyFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9580CCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763039358.21397.17861557867535213080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9448eae9036c66acb1a79b0e379b8819d47066e5f904e2170d7adfcccd2b919a
Date: Thu, 11 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757630393
