Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C542C80
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741857534; cv=none; b=HA2yR7Eho9G5h7xC4KN/O98XueSlaZeXGGHfeDFy2r4vmS515s5rV4qc8YoRIx50LOyKp1gZR+8cMkTijjuhYCytcy8YG3xCcYzmWACOsGjhiykWsli+Cr17m7GPTb9m4j2EwsxQ7R3E8UzmG0keKiDNAAmTMHuKIykxr+h6TDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741857534; c=relaxed/simple;
	bh=ooI5NR8Ncom7Ygt8f87Uq8HVlnvGhpIs2xoa9ZriLi0=;
	h=To:Subject:From:Message-Id:Date; b=abkni9SjQPCQa8+pfysN9g+ezOUEP3mxkDKJKXhZSRViza5YwiZwUlZTsX7kS2M89Bo4rbvaeIpI/yJmaK/+c4YXmZOJzwrjJl+Eewt//2UviOZDLiR59Q7aRHJ1ZR8QRA4cMx80hUoteoFWRtI5sVwf21ayMbrstxZudmOilQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cG3uteJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cG3uteJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5EAC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741857533;
	bh=ooI5NR8Ncom7Ygt8f87Uq8HVlnvGhpIs2xoa9ZriLi0=;
	h=To:Subject:From:Date:From;
	b=cG3uteJvZ8sGGqBwk4Mcp10igOEfv0mRTTwP/2sAb62Z88LkP0aSQAYfsG257X4r5
	 xZAHz+wKm3bluRrPup81HOTtqOaqdA0AmNCOdwK07bnCrLKeF0t5tdVlIH++deytvN
	 u9+w+B6FrSnwGOzhax4VoLs3YCKgtefg7zeQ6UmiHh/h5+bhXjla6kbJDFbOo2qQCy
	 wb3kjD8jDaVMEiH6dy/H5u1R3nZvxe8Pfo/iIfXxPK4jY1d+Q5vMj60iFxb1pI9aum
	 yy1wQoJha4jV158tsAuDBAv/oAt51CH0bv2SaFY+lQxXfbFEi+RZ9KNowJ/Tdxejz/
	 bv6sbyKwheLkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90758C28B2E
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174185753358.23106.7300773996484537314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e072b36e379a87c22b5626de694f0f4a3326d10917ee4af4ec2274e7d0f8d1a
Date: Thu, 13 Mar 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741857533
