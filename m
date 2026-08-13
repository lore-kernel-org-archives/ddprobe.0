Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D15A38229A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786615234; cv=none; b=euTyviBnldR8On7WudkIvr/V1Ro6TsyEWxRrsF7lV1RqJWbY6YSFwGjZi+810Du36izz6ch3tPAGklR7Rwe73WW404Pbdt/4qdqs9F4pG3qOU81PSAx7Kbl8TLXzkTIBABgeNRkx0bBYyGUUA8v2VKojOjWLElZ1SCrSrNFeOco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786615234; c=relaxed/simple;
	bh=WL3ezzm4aAEn0REU7v6wOF0NcaENH3J8N9QveGhf4wk=;
	h=To:Subject:From:Message-Id:Date; b=q+Tl5rpAze72qNss5LVZtA0/K6y+/oPCcj3+jJ4Ix0NO8+DxPaw/CksvS1ybqhL4po5aucB+jAPcXLzZPv25D9+4Wsv1NVNk3ybg/Qb5aw4z41fWWZchMwFeK69fAVUtvGPqPUTkDJPpAsSmxXBWZfan+5UfhSPw3oNnTMxTj3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2sJHsF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2sJHsF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F6AC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786615233;
	bh=WL3ezzm4aAEn0REU7v6wOF0NcaENH3J8N9QveGhf4wk=;
	h=To:Subject:From:Date:From;
	b=j2sJHsF25rsGrxZhIonCr/XGpnkeodEcK4rK7uWiOYJ0W87yRYOVTn2Dmfo856Yvk
	 ZuISxteSxufd8XRlbG70eSKsnFt0tGOwWTSFiZuAehaU0qQYCio3wEZGEKprOdYMPP
	 pQWdITZAajcvcXdOWWs1fBg/msNhKzTVg1c3zFVPcBmj3mH7oe3/F5OgtMXre4bYor
	 is3lDkmW973pAdyKg7IKNQs27R//CiklpzZcxa0tcFXe1or235bwU9qHEisk7WKN/n
	 YYqvcublRjNx+6UBzzv9+U+emqHqoqRxvKR9ueYCkm0LqJU6F4qgehvwVKt6iEExFq
	 U+Rn97gKHmVvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A893DC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661523368.31182.6184696581718906925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d6018a956b87cf8d0b130b0687ae5d7f34345a5cd163a5bad4db3ed26c2776
Date: Thu, 13 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786615233
