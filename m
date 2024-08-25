Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435902F34
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724583354; cv=none; b=TD2jsrL89aBYSeEAQfP4yt/INUoz/9ZzyyOgVMNpl0bi8M7LVS/kaeEJ6T4Lfp891aHNTwmOjh1wbZ1vI6a8U3OPAXcurgG0X8qZcKPL4Eq1H/Rw5K7uhyqrqNwzAMAjkO8f01pFu1bFzsPfCuzcUsJpdMoJEcnTcLtLo+ywZsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724583354; c=relaxed/simple;
	bh=zINVbCMekmBbZm0xXTcuV6ymLS1U6cAf1V1TpYlCs+o=;
	h=To:Subject:From:Message-Id:Date; b=Ci1dgRO6XhIkcihZlTWFuIaLFb4QxlOKwnS4QHPN5Nb99x21dYUubd6M1L1KzMZpWdm1+WWpSOqJYR5SqcVKYMHOfnwhTDz6pAVaBF5xdk7JPm6sJL9NWb1MeWl/0xyoBdS6SIGEbnFxpqymodR0b56eSuhxneC71nalQVJOvuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEOOz1Se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEOOz1Se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D4AC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724583353;
	bh=zINVbCMekmBbZm0xXTcuV6ymLS1U6cAf1V1TpYlCs+o=;
	h=To:Subject:From:Date:From;
	b=AEOOz1Sed+sWH0I/NduJxGrBVitrEvOrgQ0mOIr1WW8VJWwW43iS6yMWrnhvg19+6
	 CtnaM+ZlhErMxGu6nINtXXiYzsrUYk7gec2nDbman1afEylsYRH7Aa7xYMsgKc/Vd2
	 daUKemglXlcUAk/9LJjFKEz2Wg1Jz2NrH9+2nv14TcAD/LnQNtw7P526aDfeJEy1m/
	 FCc9xMhwtiUOGcjsW9aXBGlx1hOMlZF9NKSwo7EF34A4UNlSqy6PfJ1FCAliLPKtZo
	 sBbKo65KvPjrxMsSBWKVYaHXEAn/2TmsIpe7sDpbBPPf4kR0sWVPMFRyOYEiC7+coO
	 V4mdAAOP6G82w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3383C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172458335363.3326.16994908888902994618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e251842dd91ce8d2360560d863861e5c6cd2ea4a092e036809c00dc14d53d6
Date: Sun, 25 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724583353
