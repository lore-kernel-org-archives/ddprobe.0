Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A2E385D60
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783024114; cv=none; b=dZegODmmiGDEy+ssaXLHhVJOXD8wctn8w7jIDc/KdoqWjxCGPJscIIUzqh2CW1sT+yYI88zxiiMARDtI/hc0HOOM35IeaDofbwhLghWMAai+hOc1iWeeyvYLSWzhoDSSPVgysfAoneSxEEuMnKcXzDptnr3T8H13RIbXIqqpqcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783024114; c=relaxed/simple;
	bh=Xcr47aTD4/WL5Jc5Tq2MmLyq5BU7QEZr3XCvGfatIDk=;
	h=To:Subject:From:Message-Id:Date; b=WH60u5htoCUHKcuUda+RCPZzvnB1VMTE5uIFolfEjBWTs6JoWVzgQlN8pn21C92oVyCsd8WhifHLhT5daIabrLlhBRdHJRyg3vEjINmM2CVzdP4zQXOQkJ8WWc69KnqETPFUATo2Flic5M4i2ie6AUIy6Kbnty7BAw+3CzwYC7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oc7mFacp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oc7mFacp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF891C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783024113;
	bh=Xcr47aTD4/WL5Jc5Tq2MmLyq5BU7QEZr3XCvGfatIDk=;
	h=To:Subject:From:Date:From;
	b=Oc7mFacpdQ67HvN5BVbSi+LEtLMmWt7Zrg6AbNxJEn74ka0MouBMIs9bKvjez9pv4
	 GjLa2h2/ikdj9MhhiLASJeKNvBKZKAvRSXRdLcwvkbOuTfk48CShWypLD8m11SqWE2
	 KGK0lL5JgKPQj45wpnzjKOR3flGXaGR+spbIJlax9oouAp/+2vEcq9IwF7iRF46T17
	 JE/zxsrOeDWJTXF/K5NPwqi+/6K741RT+Or4D0K9aCZ2vjis8ZcoomNFrTVE5+i1dI
	 yQLOObnwcnLOQ7yglcYfvVcps9/2oBWeQ0IKpUvUEIOgM6MczhnMJBFyyyeGR1Qo3Z
	 02jT5gJo+VeMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2FFC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302411368.28343.3725097617534742227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a913649cef9cf35f3958838470c12414f142717c9c992a089df14aedb64185
Date: Thu, 02 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783024113
