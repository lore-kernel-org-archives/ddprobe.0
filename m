Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308D023099A
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732156554; cv=none; b=KYa5X5Gq4QhA+jLortPBUAs/c+6h7WNeDWiUPXZ2D5UkskuiSdinHyhoZ1KoifGqcOK4p3epM919DGYk4FbJZrZXK5AEY2j5uCOqTWqWta+YLWLpe4wdUKkzVpuGrD5fvuodvGEsg/tMGUq4oNT7EWz8xnSkMP4hsySQD8hO75k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732156554; c=relaxed/simple;
	bh=xh0+8XpPI7hJ/hxmNsWOh8rYfjChDr7c+5lyLcPhqLM=;
	h=To:Subject:From:Message-Id:Date; b=Upk9/3uKNXmTefjeDY5SgLg5R/JIH3gX6Dk6njpIzdOmaFHHNgzG1l+d2/YkcCtlfo0+i3An1NgQ3K0JbVODsegH7ZdBoiMoPFParCQB0EjiScSZjqSidmYXMPJL2gkP0TOUlu04c7VSaJjJav7TB4tPyD8171Q+hmgk9/0wcDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpbtiPMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpbtiPMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA996C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732156553;
	bh=xh0+8XpPI7hJ/hxmNsWOh8rYfjChDr7c+5lyLcPhqLM=;
	h=To:Subject:From:Date:From;
	b=VpbtiPMeRoWNxEtDWh2trNeEEZjw6sSS5MaH07m5tZv+v2Fk45gobaNb8AEpfQnLf
	 lxCv4ikmnvMPnbQ5IjL2n/BfDTbyhosHSQMMKgc3IfcyLtbLLBUud2CP62jZcX3BX6
	 zYpb4C2faCSx63ACBQFeqRNZOvUc28eBo0xtfOA3TPwYpp1mC6+dWYKuKqjqZSGNzK
	 sLY0+QBp6KMIfxW05jmAnS5Ei+zXNS3LnLFI+n9hZrxuhILQO9evNufICRY/RJ7hJ2
	 DUNuLoTdA/lIQTm2b5X75uRKlS/AzJVxwv5ipfOuNNVQpee3TMTHSBtQB3zmhohv/C
	 cSjYGSRMsNWRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98160D75BA1
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173215655361.19807.14133674564903480875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b222374fe3daac3890567e4885b96870a0e02f8d0555691a2af623615445b5
Date: Thu, 21 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732156553
