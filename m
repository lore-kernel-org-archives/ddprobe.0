Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F7B54782
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743117594; cv=none; b=FV4Ate4g5L+nqeZfHUhmCmnssFvkGDzxXGmWmH8eq2rPr0/FdTcUkpoUlq9L8ocoR47OHOfH88Dqaf3N0jvmTrF39BWbkMEldmTbV3uod8xaqsOdnxuvWXNCbgNVOEyuzbmdMPx88ZO2VHnaeK7KhcAQDKDFKjgm/9o6Y/cSviU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743117594; c=relaxed/simple;
	bh=mq4/j26uUG/eFoqn/YrkpgLZxYMKDTjaV8MpnchIlg0=;
	h=To:Subject:From:Message-Id:Date; b=nsAhMpilXzFd1EZriQkDp5U/cDSFtc1Zro0aa+NJaKUkcrOPB+l93QkxLyJ4fMZ71YS/7I0KI5WuXslsJbAIwvJiJ468HQEnOGCFTXxGqXaNlwdy3tAqxBSI7C6jTyJq5OukTEy+jk1DTj1w/M1txDWk2OL0vzBc6s2KsgbgYz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q15M40If; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q15M40If"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B795DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743117593;
	bh=mq4/j26uUG/eFoqn/YrkpgLZxYMKDTjaV8MpnchIlg0=;
	h=To:Subject:From:Date:From;
	b=Q15M40Ifpp3pWif3ID1ED/ozPZwOU2lWtj+VeSuHguOMrfkU74Xg4HkPbVpR3Oy9X
	 Lqzu0NOcAnCHhK/OS72XnmuaxuxEflznDdayeTosARIGP43qwGn9Tlo80O3x5+ufV8
	 jtJr5xWGQPeGl7uHcLxpVs5f0BZDasLgHUeVLWhRMc+KA+aZn9TLdGH0mORxeYrJi0
	 GRX4+O543yZyQueEb0iDR5vu46ZnQ+H08Rsgz1CwZTtZRRoDykAyuUdWwedimsA0AX
	 LRyqidAEvI2JcGSNJtTPOSe4WXszsIqvhqUmhS7gjkxeuMgs/62NOsKR0s/ZHKEP24
	 pkMOygxt9e8hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B6AC36011
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311759362.1814.14478931765953096101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8cf435b369e9c807099bbf5bd26f9c7eb50ab89144a3a1884ddce99a6e113d
Date: Thu, 27 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743117593
