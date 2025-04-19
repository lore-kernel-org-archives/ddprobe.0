Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EE81B87F3
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745107194; cv=none; b=rXfRo2D6l1MQ2yWIdRpl2UxyjYOS1XhtmvZpdsb0bxeqL4gd0Kwq/nKW9kbzenAB1Bjob3zSOTPuwAb2lh33aIzkh38W0s+3b72mgz97yYPuthoG10UoxCPm9Dc5qLxGRa5dFBA4qfjNtVcm3FompVW4XAAAUmw7fecOnP5Eg+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745107194; c=relaxed/simple;
	bh=p2flB5K+6Q+WaP/Fj4JoPzfPWNGnFbsOumoFNKRShr4=;
	h=To:Subject:From:Message-Id:Date; b=mg7vcEiGu8vOFRTgu0ACD8Kq94URW1KappJziFasbaIRSHoqGrRbaYH2oQhcWWk3eawWkRpEz1KJgcy+SNGHiLjb8Ta4rMvbfID5XjYu3IPLuP5NljPI7tFLcb12+dnCzKjTj1BvpXCOqsv9RXFiG2c/mDS4TeLfxTgCrq+8p0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6LObdxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6LObdxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB66CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745107193;
	bh=p2flB5K+6Q+WaP/Fj4JoPzfPWNGnFbsOumoFNKRShr4=;
	h=To:Subject:From:Date:From;
	b=Y6LObdxMPHrODu69YM7uFlYpuGvP7b3ymSimdgNESgk2wRsnx4thXEpvkvbCpzZkv
	 BKMjbkqxuRAjbJjnpS/5cnj8Hv/A8eHQGsGNrHEN2ySRml7B37rtdowQOPaKFUOJML
	 BDdayBMoSqBkwoeqkKSkjouz5raJd6mDK5nv/SixJnWU4Q+XSHQeO3kVCrFa3noXXJ
	 v3iRZl8DiL5Tb9cKXYIIiKrZE9TWIrsbP8Db4dj3CfovYuxhzLWxMpSYn2J1tae27y
	 1u4B6M+PWQ8scRtIMPs+GrjMTmlN1Reth1jb1h36zsgPfCT2w3PDJ8ziezr67tSx59
	 WyfF1378OOMuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973DEC369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510719359.2828.14501168932017538710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96a65b9842cbc6fba9d8075503e337af210ae6685129d8f395800ac777f2848
Date: Sat, 19 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745107193
