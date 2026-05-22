Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BD8377567
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779434554; cv=none; b=Tb9lMo73cJX5SstzEmqWAvWnNPq7Wx6fSbGPo0a4NXA/t3SxaBh5NmiY9gq2axLd87cFgTZfU6v3lrRdIzdnuOEcgUlmy85/99sgM8viiXo9g38Yft+xiHAIOsiQxFNnlbeMKR8dyAPw43shBKLvgtYFTITl6LcUehnwCrpxwOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779434554; c=relaxed/simple;
	bh=Q3+FpulHOYdNLJUPF3f/Oey5ym4lfh3mS8PWKsFNoII=;
	h=To:Subject:From:Message-Id:Date; b=ltKgvwD4W5lPTa6APwlJE2UXwZtapOEP7bCVQCief1mYS6/8iIbHfuVCyBudYE4nHz3TmelU0oekc+UH1vZakVM8tsU4g+Pq90zIA98rb0n+qH10iV/g0FHiiZvrlf0k92Uy4lMHDVd43PpUDy+TJWqWIhP0GPVChnVNI9PjMXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sy8dc31N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sy8dc31N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB04C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779434553;
	bh=Q3+FpulHOYdNLJUPF3f/Oey5ym4lfh3mS8PWKsFNoII=;
	h=To:Subject:From:Date:From;
	b=Sy8dc31NC/PBmLxeVKdNbvISpGHvNsGtLyszGAye4SCQsQSbD+4YyLCPb+ATObJjg
	 oweJ6gmNyJV2ZmR0GWcvJoJKJcUc+UzGMEEE4gcg+hB60creeFBR+PmrYW0UaTXQGL
	 2pcPFSGQED1SKZiN8CKj1sAfIGAKJxav0o8Wts8CXvn6LJtuDWCyxEDgrf7UE5LehW
	 Azpiow5dYwc75/mBKe83CRCERWzq6R6NmaG0n03f4F7yKG231aV2DL5b3maErMSyjn
	 iWBphOUUptv2bGGIxtKzLUZXY2OhSNKlYZFBAaQO/aUBT9SuqaoZbXlMGrxDhVnxVX
	 6bdp1WeVgzhqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91ABCD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943455368.8447.8725781253090974770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737e94cd153b66a87ed396cf1f01e4e03547b4ed8ac626ef4aa667be67d3c5bf
Date: Fri, 22 May 2026 07:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779434553
