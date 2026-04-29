Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4A823ED5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777430854; cv=none; b=p6goJOO58UuclfJx55/Bl/L34z96ho+llHvwlYnf52wFesvR+L7lcHx6K5ifZDJ+Zdl4C5lMqqCuUhEhSpQ6BFSOQTwnDfFgqk5bRDeH8sY8Hb3VH1qylWJ/ZRGGxnc1mJsDIB29ygPB3W2vawJzcbFXDqfNockW0tb/P1AU0OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777430854; c=relaxed/simple;
	bh=p0HeXuZeOz2LgHf49oJOhqvX44XcEcxjpl498aSMJcU=;
	h=To:Subject:From:Message-Id:Date; b=uqZO2fWbWc/sPIWso7D+xM6k9pvsaHgJ7tOhfcfMV2jqJmw3mjAtXdVFxhCRRt2SgnmDglennKK+40kEOIVW0WjUDvkihkNiiO+iUWBuppZfQqAU6fSLB8eTD6KYwK+KsQvwhuNKpLR8n05hLy3Y3peL9dd+41uxv2MzXbMrC2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XObVFksA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XObVFksA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10AEC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777430853;
	bh=p0HeXuZeOz2LgHf49oJOhqvX44XcEcxjpl498aSMJcU=;
	h=To:Subject:From:Date:From;
	b=XObVFksAr2Emd5Hh2AUEdEQd73UdxxaVgV4EOZpTVEy0Y9QmGw67bVduYsXSPQ1f8
	 cZHjtmzXq4HyvG9Wbsh57Tb2M6Y5ViJNuSCWrHjv+mQ8+p6opTwIcmSihKbf4tfOpp
	 zBE/WD8RYANbzd4fp2W1NTlcKNqXPsiK3pwk4d25QpUwNVy+MkUHj2Fe2fhcrT/EQ4
	 UOPvhW8qQV1Vl2tGCnqwa28H9Ag1Wrl18htd03aOw/KJGWqE7zY8NahQsYBAX3BM6T
	 xLtZG1CVWiOnfXlicmepc2ycAZnrIy9KrYAemNwRU5+gQQRc1r3BMjYjJQj4ynqnzH
	 WB5fbbS7QPGMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE00FF886F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743085368.866.8302684199499114010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce0fe3bf38d5cfdeb7d61bf70151dc80881242d54802b1a6ea94efb6f742f02
Date: Wed, 29 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777430853
