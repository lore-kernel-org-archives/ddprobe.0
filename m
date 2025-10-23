Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AD730CDB1
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761215394; cv=none; b=JsgA79lmZ6OMSfCDNuVF4yt2fOtzY5qHxLc8eTBn461+RcfXc76joFq7Z7L76ksQAaeN1unny1h1cO/KmTiZayf2+YKyYtcGydem4zenG05hDgDx4QbqwNK26hoRnWFBWidtnF85BUZ7cCTyRMBzxgPKFFwUemWwWzyqhdhx6TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761215394; c=relaxed/simple;
	bh=84wXQ+hnGAXE4Z7ADSqBNnad4BtiI6bQwqum+DaDADk=;
	h=To:Subject:From:Message-Id:Date; b=lp0IRg5CIMdWUO8TcXJnLocpGfoOMoaxWcTQvm0IFzxLjDRl7FFtFYu9CkzkLihgipDWun81AShwv4/ZMUe45vwE32vYZdFlMCqAdDGhFd7u0tDCZIRTvRYk4JcWlJdyio4t4ZC3zN/6HcedF0pVASdu1Hah6Rw9llWuuoG7T5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bi9uUULe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bi9uUULe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C1AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761215393;
	bh=84wXQ+hnGAXE4Z7ADSqBNnad4BtiI6bQwqum+DaDADk=;
	h=To:Subject:From:Date:From;
	b=Bi9uUULeqdmhPb8sqWuAUfxU9kcSAT/NHXbdmyqQspCbWfNhf/48dNy+44ETX1esP
	 dhgz4GRr5xumDZNHq/oFZr3Owgiia0CamGOThSmQKf3CCUk5FYJ8SCGNN33VXt+n2c
	 1Ay4z0d6oEc6sV5sHR2SM6JD+b2+P2jHtVPymjc/oPap9+KvCI2hHYNBsUWp08kzIH
	 MiqhXCbv1Dco511ISjjz54zxFZ1UpRTgQ40Tpco39/P7KkYjlVr4Mat8nZdULUnFk0
	 5X7tVN0l1Hana0GaE3c+Ds1X0hJfgZcDKrktoZFpOMzqS+yQT/j2Vh2FQYXVDg7y/1
	 dLXuT0j9dr64Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9071DCCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121539358.22520.4290634175098626816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ae885dbad708afd101a0dbbf658fbe2dabf87e4dca80fd5c199a623533953f
Date: Thu, 23 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761215393
