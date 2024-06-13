Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7903F25632
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718260103; cv=none; b=akSNEyBzXPHdZqHG4acnh57Wl0kaMfo9GYj4FBAlWSlCAVlJH/b3uvjEnlh1LrINXu0GsKZf4Pu1P33RDQYnaefqrsG/iwjd/0yIGcWw0+Zd1QX+xx10DFwyN8pIqTFiI6iy9Sno0CWi/++8beBVd0fBOwxVJwWCVk4p29n0fnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718260103; c=relaxed/simple;
	bh=+RBifzExxjiJ9eX0rSHl35nlESTsmp96tr/O87MqKC4=;
	h=To:Subject:From:Message-Id:Date; b=a/av5PApci4A93RvP8ydfOkCPWTdi5zBL3Ja+ur5++drzE92ZvVPt6WKRvMFGW0go4W5T+LsTWikl8FrBYeeMWBILgdy5MO1xoCFsrmHrTLfa4xgILaOZTL4Qtb6NgjihpoMf9jX+1prKKuNhjYawbHy6KCq2AtzMgN3beijcH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J66dbVmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J66dbVmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E80FAC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718260102;
	bh=+RBifzExxjiJ9eX0rSHl35nlESTsmp96tr/O87MqKC4=;
	h=To:Subject:From:Date:From;
	b=J66dbVmfQLgVPDTNKwSSWpaN1KcnutuUk3cKqjeTKXkDA3ecS1eLI/2ikx+++ID/p
	 tKlkVoeoUHEiDcJfv7m3sBLMuU7Qsw4hYHPmytLYe3DbyszWAAC5ExWna1HrP3pwzc
	 Buogy74DvjHzigCxw6AotyVqR6fn4iwY/8uIYYm1r2bwoG5UEGovw6OMuoIO8QVOkZ
	 3Zt3iAWuV2utawntMfG3OE/rmmOdJXgh5XI8l8iSr5khgtGTI/18wSw487SkZ/kTK0
	 u0pBItqL9nXmoymW4HH8KLzYAHLDfRn6qRc7pbtZCQXjV2N9UMG/ayuX3vFbTpQsCg
	 s9cQ5ceAE22Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55E9C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171826010279.31539.8772573545123234158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05d449c1cfccd3a10b0530806a9608f65b4733b2b35e1bde6b006284b6af9f6
Date: Thu, 13 Jun 2024 06:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718260102
