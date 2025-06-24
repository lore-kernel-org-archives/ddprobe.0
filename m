Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2520130E84D
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750753194; cv=none; b=hpZ8Q9DPt1/JYIJatI6w+y5LXsr1TYditGNwZSXARsrnTDnFP1lA9f/bLwl1QMDj1HGbXZHIWPQetqC/Qu7AkPOXzB41bdGCpJB3B3+sEjqi1agqhn/Zmvo2hNxcFiaGzGvyDn0xmNnzQW9mvaTsh0/I79St4DQ9uZPGFXk6ytU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750753194; c=relaxed/simple;
	bh=t2Zly1UfTzkA+urUHhkKmIG28/vPDNbslRtFM31WgAw=;
	h=To:Subject:From:Message-Id:Date; b=lKcau1Bcc8SHGSDua06jG5u3Q31WCKUnxKc6p1FdPv8NZAawLlVLSGIpOSN0pzUBb1sPfprSLxqgkh4G2FhLDMU8iUpgv1YaZO8hsxmkzj7jj91w2av7BiRgQFlzPfUF8+IwEzz6PVOAzlmikv+1HVkUdxV8PEtmJzO8Cid8GFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAm79yuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAm79yuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A236FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750753193;
	bh=t2Zly1UfTzkA+urUHhkKmIG28/vPDNbslRtFM31WgAw=;
	h=To:Subject:From:Date:From;
	b=LAm79yuP93U0jvhBkMmpBeeHO0CbDesgNRjwtt3qzHvwpqCrUbXCy9xlxT+0Oy8ST
	 YHJEFoouuiPLXOvijqaAJVouv5sucB9KPTSZWVqGYN32bT0HBRiRNTBVtY7SOy7ZOK
	 helXs94RUpZqkc1f+FsttjXprN7DgfJ8PAHVLccJgCKYjpH43nAqF9lE7Jrd9OGVg/
	 CdGlV3ORIVWkJAoL0gUac1IsrxVW+EEXP+BlnWNpqt4sXE4h+rKffB7gzYWh3IkM0Y
	 xGOkKAQ4w23XARcxNsLPnFsfO4zvG5HJseNeHrn37UenjKBEk5q2Lg0S/OpoyniRjj
	 eAbFoKhj0rWgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F477C7EE2A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075319357.17576.3700489297015203911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072e5aaf912f28d1d21086913cdac83b9b4301c65db78bd13d2895646c525d31
Date: Tue, 24 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750753193
