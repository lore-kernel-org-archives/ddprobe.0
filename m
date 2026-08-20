Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610183E0C4F
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787261434; cv=none; b=PmC1pHLlqZAVyWGUW7Gw1CFVIQlm1e/PZSzlXo3ynfMAKBhLnmEMwy1+d3yW8dwaysWmAuSb0SP9nkmaiUuBWFnt8Qq5Mmkx21xZsSQqLbQFkIBR9jiWxGFMcB7wNAq8HzDpRSUTolyz7ENK7QhWuR4Kg1f2E3+Zr0eYSuM130U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787261434; c=relaxed/simple;
	bh=jjOlGFoSjIzwWzUXWCXelfkmbT+UHjW00WHKlp9VCMQ=;
	h=To:Subject:From:Message-Id:Date; b=DfISIj50MjbPvxLwohophVHqJ+gDw9ddPjstmg7aQboNjzBVEzvmfbOhX90J322u8D8hG3+85Bz+Q1fjrtdi0Epj3r+9ETQ443vKX2YKfy4cMjx/StJCbmzSOAfrnSP4hh7g5LpOp8XnvGud2ehzhIBvslxzR9wLhrCXzIhOO1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5V58FbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5V58FbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F06C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787261433;
	bh=jjOlGFoSjIzwWzUXWCXelfkmbT+UHjW00WHKlp9VCMQ=;
	h=To:Subject:From:Date:From;
	b=j5V58FbZG7YsB3XZ3ZN+mjQw+muLtuQByEw6z2rKLFL4NaGSFvGJlC/6w3va08JV/
	 XlS7s4dNumbBbkfmr4InL2qxpNgZY7zhWZKqAiVVM1qtJkdo4GBIrTPLGdZb/1oGZE
	 BdaXcWo8F/aDjb4t86mo161t1Vti0C+CjxP+Qm0kER3KhfdoYfJjLjRRJi74rnwbFM
	 EB+UrKgHTscB9/G9XTSbjyNdf3uIIXrT3A89mPubBnIEeyylOzYtenKFRWVLotGH0n
	 81Of7vZkwW945h6EcyscDaHOc3ARaElZXGYomY/zW0sO/jGX/UAORB8W8MktZzgtDU
	 CDZrWqYcipR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9525C5DF8C
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726143371.31942.749580861107710524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0859ca970d0e50a5176a65cdbd57217096eb010d82138b83677796214e6f5416
Date: Thu, 20 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787261433
