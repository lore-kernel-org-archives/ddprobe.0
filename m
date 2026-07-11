Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F20C495E5
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783757314; cv=none; b=FuClDIR1XQqWp4/K4RGKc2BgTiY1UTn/C3OyXnLxFZQ4ZLDNgbdvKYrTL1uTfI2v50qFdIhQZPK1c0H0URwTsBW7zNLUffcU7RXIq5ap4lLvD9JGnPG98VDqBleLFK8C3BUuJmSoWTd/a+ZZKGGindPWnP3DawMKHXkVE7sBVrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783757314; c=relaxed/simple;
	bh=Toy1U16RgLMMBu2k2yPBp2Tm1V6F/hSb6EgW+Qjc0FY=;
	h=To:Subject:From:Message-Id:Date; b=CnW0xe5iCnjAENqGCkbmqwhEOg41lvcMu3g8QqKCn70vus1kF4WhEkdcIEIuGAQsTWPFJHCi36eCrwgG3JmkKjQsNkY7ApZ5ugqKYpdDb5XvDwj5ru57ieh9jHIVSen/RU81WAFV4rkRYnoAvywPR2Qo1PxgUzYhgOwMVXhJT5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ie2ellG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ie2ellG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE70C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783757313;
	bh=Toy1U16RgLMMBu2k2yPBp2Tm1V6F/hSb6EgW+Qjc0FY=;
	h=To:Subject:From:Date:From;
	b=Ie2ellG6f5hUJ5hz7fxFWeVjtaSvbe3CoiLGup96U017zlal7fQxxR9uNkIkQDVbh
	 7nT17Eive2vMAXiZk3pQDw8UOZEwhOBRCxbiwvRhx447j2NMuEF6Z8Abx6r/sHvOr0
	 J9Y1DIQf/yjoiSQexMlCYaSdLdFuMyB9KjS/Qc77XNtE/zAWMb6C1K5WDhT6SDSr0z
	 nMXmvftrFHAaAACcqoWhk+keaOs3TouV60e8Tfvz7K8VdDVdyCOEV6Z8m+SiqFtPv/
	 ZAl8eWdY2kawzrj8AkpK9UcknPhj3Kw4R/MzZnkRo/blC/gyEljWQLGimqYgRlPPA3
	 aDo6uXWPsebBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE741C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375731368.7207.14015486352990241544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589e36f9111512ad1952460a7bcb445ab267a75c8513c54a52289f21a8b73559
Date: Sat, 11 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783757313
