Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF77F4FA
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770727434; cv=none; b=sad7mXMIo6qPYHOoFw8WWmSp+011GMOlizsQroLGRT/Ry9n4pDmSJMSUuF4/czQCS+C0Vn6/+fr6saAlB325t+JTJdoCl0ompKk1z7PiC/J38vT3HQTU8dP/IBYnOMDgD5N09tP9TWMVvW7TGYgwiNm9hfxrLebkc604TCJU+5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770727434; c=relaxed/simple;
	bh=IBkrAF71krAW+JWJQNOkMhHQZGcAvV6bEaiXuSStGYM=;
	h=To:Subject:From:Message-Id:Date; b=Jd9HKwX4Nb2vCP1PpCj20fuwOCtgvtAo2PP0qGr4cnIrSvtdF85qqMICXRIpT1+59cjDVh495oS/TMg68/pO2LwyqLibacymtiTnmk87ShvhZfyymNRMNdE2p2XDKhdCsj8+I7yjR6dj/dTpcy32PZg1Pye9nlsBLyCuTzwkydw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ovwd0i36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ovwd0i36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06FDC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770727433;
	bh=IBkrAF71krAW+JWJQNOkMhHQZGcAvV6bEaiXuSStGYM=;
	h=To:Subject:From:Date:From;
	b=Ovwd0i36tZ1CtW1DJutCErRwoUFOSQBzZd0wzEgfK83j1WLigzSS8uvtOd7BA5Iy6
	 FcslzNSkwSQE36/dJZVKNL8bu8Kyz1cqyTjQSCI51GdljPgjlHt+yPs0Djhfcfn0nR
	 Jz8WiW02WKJgww3CqgRts8m0Zu9KJ370IH8YK59EksG0Ts6li5/04wwmlV7ejXTjz/
	 4RrhGfirgnl39OCQA5f/qnxzxmS+CV5GXsmwLihtOGMJP2Mhr71D0JFYMA8xj9jhD8
	 DbpDAystTgnSYzIuuLYOXGuWxaPYfPnwQFJ8ETnynI9MtImPp6N9oEirhKSqE/NYP1
	 JDaXkjI1n1Eng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95836EA8108
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072743360.22379.8598456580095980239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17486cc91b879b857e15618240d922d4dc97448c9359d5e0f02a8d8199dbefb8
Date: Tue, 10 Feb 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770727433
