Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8F913213A
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728773154; cv=none; b=YmXF0WcXRLJRExRc4sibUjdFSU47vS/CPlstsRuV20nT6uX0iTo66NcYOLrWR4RlS7I5FVVHCTXlV8fh02gscAyGpY89J3vvFo7B7hLxzPdMQXrxDOeEfb19x560Zim1ruQXDf6mGNpGn/QtQO93TWdS9Zrg5mBrPKh9raN8o58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728773154; c=relaxed/simple;
	bh=gT6Ndwukl1eU5usWghRDmNFyloEbczuinJQj6PL7q8I=;
	h=To:Subject:From:Message-Id:Date; b=jfCdnsw4/vbSC8cZlZJSRjMKKp4C2ZNTxq4nUuQNFrwcSl4qT41WDV7P3EhIwH3EAk8cMAS4Pbi/U9tEBFNP0GBFKTkvW8esYwMi25oXyQZdigmBt4mhPU5zWlI+fw8jvxTbm+MgbuZJkLtc8WMU3fLgoSAlVrqy7m7DEJcumkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/LNg+KN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/LNg+KN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A8C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728773153;
	bh=gT6Ndwukl1eU5usWghRDmNFyloEbczuinJQj6PL7q8I=;
	h=To:Subject:From:Date:From;
	b=A/LNg+KNsmYPvl9V0bGTSLZ8HtODgZdYAITtIxpT4sGNOwZACjLCNtHTkqiqTBJM2
	 ux9lFPPEv8k6iQ8E1gebmkwBcmh7KOqx50kzFWODNFSbWaSpq5LtOKJcMZNCdZiJDP
	 TkcvGxkgeE5K+uapZ3BvWr6p5euXlNgmuaEBUO/ngPI6RQAuKSOVPuTX7pp5GcrDvh
	 8PAPAFv1d7leAOF/zP7HM6ZfPcCTnqjnu0uvDBlqIFaU6jT6I3R8BVxjqTpwqzsCmH
	 NtJn6JtLbhurcsfZaFI6sUWQ44GCvaShXOt9Fh+CelAdCVg2pSL3Fm4VZ1Z1dhRoSO
	 i1C1Ct5ThmQuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9092CCF2586
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172877315358.17450.1771668943787239123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3206de4306162e9ea01a16082007e5292344b40a1c48f4829dfd060712f31383
Date: Sat, 12 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728773153
