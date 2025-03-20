Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517522F5E
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742471994; cv=none; b=ACJnWGgtfyk/dbbL9f4uNM2pOE043kMZu3jDJooTjMyiHfpYMAlF4S+294ILHNAX5b0UuIzKiMA1q6bUqzgfYInPp7cUTX/U7XyK7uIlZHYr8NxwGBPv72PFmIUNZRf8E71maPFK2z0sMt809VG/bg7Y6PSO3rZCUjzKJUB87LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742471994; c=relaxed/simple;
	bh=vvc1jUTGNAGDVvf86z/o4xFioUyotvdVC82HrSsdkkU=;
	h=To:Subject:From:Message-Id:Date; b=ZkHk7tJLJCVlWbqYLw/A4tHbL00VJCzxWK/30CPffJZYGsdh1it8UzN8NsFKeFb/GKuvdI2rWiz+w43q1OWGhZb8aWvK3t60cP+OkmUS3as8gOxkCMcWRjmb92UalYwbBIQKVANg6nLPoP6xZ+5VHKW4W2MMICHik1iYFJcNm4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/iBxGmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/iBxGmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7124C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742471993;
	bh=vvc1jUTGNAGDVvf86z/o4xFioUyotvdVC82HrSsdkkU=;
	h=To:Subject:From:Date:From;
	b=D/iBxGmAaUSBd8o7BD777UlnJ7ycZo4lmGeOUjEPvDT7LyxEp//WStNgY0At/iYyQ
	 6j3HmXdXbv1buNOUDXBsFV2ICHkmPgZhx1QOcNIyudzwGDkGoYaV83/5pP6p4TlZAh
	 RdrKzXoHUYyyaxehKtOUmw5RCnhE858yc99daIODpOBvvwkA+JM6tu/NUO8Yhyttxx
	 xHkwpSGxyvUYnxW+oVDqxKDUlcaEhrfjAiZfwJYMO/GzWwbgf/O/jvA7kAZ2DXP7kg
	 1yGc8GTOsG0/41E/IJEAgBIpv9xlwjNx1NbOcojkS5FMiYKMKQ+ZtfW1ux9aLtMqNP
	 T2cXsFsJNPMLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB450C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247199368.9806.7172473401284275764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf4924f05192cbf60b040ec90f8615384b756129c7db5a0e8bb9349674e174c
Date: Thu, 20 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742471993
