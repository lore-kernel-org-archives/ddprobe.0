Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2703C2F19B6
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752659994; cv=none; b=hhzYqGy/FjH9/SwvOTVMIRV4f/gMNANFbmx4EJX/9qBb7HZ6EmG4SdsQ9C/28emtdzi+keAsBRn657OQDGM7qyUc/zmu/84NzQsVt6rCGn739BU5E+N3GixRVpdQfgPvIbbGn7FJTGVxgV8ZCPqYV9A/Rut9UW3ZzPh/DRfNzok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752659994; c=relaxed/simple;
	bh=4C4D/5YHR0PurCGeA4kk3Zp0WJYZAg4r6VVQyYEVLnk=;
	h=To:Subject:From:Message-Id:Date; b=pnu14gV86426Vi0jSB7JZRrMY0xVQSaCiQU48iW2/i1a2YWZtKtrVu3hFKSzbnJPc6JZLdjNKQm50OVjgmoodL0uurHIXMipz2xvEsUNFYaHcGVOEN/uxdg2D+Ka9u7s6HwbF5Ok1X2DgL43KIqNFTozW78KPnqJQaoZy++LROs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRSts4NZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRSts4NZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D1C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752659993;
	bh=4C4D/5YHR0PurCGeA4kk3Zp0WJYZAg4r6VVQyYEVLnk=;
	h=To:Subject:From:Date:From;
	b=iRSts4NZ56EcW4XYjNnGt3Ppdk9H2VEq0yIcYmSHfoNOGbIsMGxsceroSi0gE7E4X
	 o11jp53kwF6eyIjxOsppaC1z6ssZ4XO8VNHd50L4TDex6vd+5gkcEve1T/dLSoSFQV
	 MhLv5CfuzvTzzVTEDByxcZhDOe9qWZLKyZufzLzoX6k+ipXkYR5I0S0TXzkPpBKhDR
	 aT4i8xCVJClY2RjnLTBpw6v3klnpAEVTcFaL8hx/01nTbAC0UIP14ryK4MBEgYf4ja
	 +R7SK9/KCEEe8j8NF4BSyXR8qDN35vfunLFjnQwTZa/GHTsFpc9jfO2B6FDqQaHUDc
	 bDEv2qKoOwKdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91306C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265999358.32488.3589443082044446558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301d4b4ae96acc051633496c71a5a862d079b8a2bac55b2909e9e35459d25529
Date: Wed, 16 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752659993
