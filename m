Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CB83B71B4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781699794; cv=none; b=I1vNtY402Mx2ekauFm/6kGYKKsQAgfojCjw1b1bZPjpgT+yWoBfn7p/MA5PHIVt92tbejlaxRlBIHW7ywwAz0Fr8x21Tj5panuvgCNPff9Kex2gRw9tTnvJFJAlyx6e5ESb86qeKnl9dl1hSJgDiZpQTBBdBGiao8EFZBUZVYxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781699794; c=relaxed/simple;
	bh=bG4YOCXot/RKSHe4ESw9DPH1HH3IBWw3trZoOuiTrtI=;
	h=To:Subject:From:Message-Id:Date; b=Awrsnbf7Mfamt598L1gk6l5+FHKhIIjZPIEZ0WCG7nSBY1lpp8yYMT3Jn3ehmCePPMLXSzzJtbO92LM+u01XnIpyRGQSEl9nTn5+Oa7chyHWutltj4lrZDJ0fKzMoenGfdQtyk6gRv04Xd5no3Uv6eb8r6gplXYaj7RmOOcA92o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txqbZPwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txqbZPwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C984AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781699793;
	bh=bG4YOCXot/RKSHe4ESw9DPH1HH3IBWw3trZoOuiTrtI=;
	h=To:Subject:From:Date:From;
	b=txqbZPwe+VVM27o4DcbY1i77oVSoDeIPGJ1bYcdzUqZ+xZvlwP4CEPdbwnBM3WP3Z
	 XBzVUh25Kszhv0VPBcikKgKoou7vqgXOmkKVSX7NbEJCLTHlVu0YFrFPZu+tc/zOUT
	 KeDxC+9NA4seX3E5RAvPM74jslnxG2u9JyUeHP20jxeTt1PJokVPCS14bQ6BeTuqDQ
	 DR/zCwu3aMTvZmGr0ivVh/W1JMl5qdmY0A6sC4ClB4UkwhxtHrEisXMznarDS4YEik
	 vNE9jueZzeD8GPcBtlY22EH5Tc3aMEimI3uSG3uRqsRHnwWmPAduQhzhOUWRDVVSg9
	 FRUq3QNUYZVrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBB5CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169979369.6566.17637399583794148101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578f1b9c53afc99d9c8576cfc3b9b217684a8a9d11ff1ad458deeeed467cfcab
Date: Wed, 17 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781699793
