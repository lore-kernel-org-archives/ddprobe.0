Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348813D6A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721786154; cv=none; b=leYGrIyuC5O13hc8e8gCxe7SkGrsu2qrcqmI+LP6LqnEW6Hp9KfiOfHyuG+H793/uCRIgOIFACAPFx28gvKhldFY9zq2qd+Kr0XfwsxGuXvwVMhjPQ47ydnB1/tWmHX17msIOWiSSDBdJGWFW8E9x9Ap3zD1IABmVE0SoebucHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721786154; c=relaxed/simple;
	bh=8nmA9/2GLCMSWe5auyD/k2y4ly4RWnUhBBqZeR0Bg+4=;
	h=To:Subject:From:Message-Id:Date; b=KXplUfPtqjUaItwHg9E9WdM/VJZiWupx6/B8VdOJ86MIHrZ1XqjnSYpQ9spXD017HLZqwKYYXa1JOcr8vxBb88BcemNiidRbpMmbN43RZ79B7iKjIyYS5mSruWSt6KBCR0TAqEYfS2Q38NsaBIhYxBx8H14/QqxfyYGAcOgaZ/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4vCdSkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4vCdSkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78BDC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721786153;
	bh=8nmA9/2GLCMSWe5auyD/k2y4ly4RWnUhBBqZeR0Bg+4=;
	h=To:Subject:From:Date:From;
	b=c4vCdSkqGDfULmwNct2beGmGqXCg7IvptupshM0+IE57AoxC/I3hxLdNACvAv/pbu
	 iRyozA8RANTV2UqXc1OJYSxld/t7kpbc4BDPzbs8AO0lc7AMB79qN/N4hXsf6EzJ3C
	 y2UH0OeEUdH9nMi7gYRQfIXhvON1doDaKwwmp1y5PBqvAuuQq7MuRF2i60EU4b8U7Y
	 6gHK9Swpb3up0FOyGNclvcgOY36S/ALm3/Ot2TqeAnFSNckaHNatQzUhksWFIEvfwr
	 bTtvAMSi6CO8G4BGQNzKpd75p31emkzhNMlEhS6WiHKx0TX2DMLZaWAYVM+t3l0tkv
	 uWxdPYLRulmeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92793C3DA49
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172178615359.5848.5976778266132107237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b508fec2fe401050835cb7bf52d87655e996f838e2fe5387bec723d46b73e20
Date: Wed, 24 Jul 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721786153
