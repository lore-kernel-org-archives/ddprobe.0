Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1E5390615
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789230634; cv=none; b=JJUsql94agw4sYwYsYoFqpEuDL5XIrHHvsiwy/uxlm19VvFNPSSaADn/IMQJoogIZWF0nC72niUSyopWNHRDbzWOCMbihRpiLMWfVWnRJXPfky9ejmVpgbuQPmEFPidk9ERrjyJq4efvJNHUGFWjBDcHTmPsOxB5Ks9rAB3lDQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789230634; c=relaxed/simple;
	bh=cIpUCd45UuX36zkqqjSi8MM6HNAAkDsrQsdd8zH92LM=;
	h=To:Subject:From:Message-Id:Date; b=pdBLgZdRKAnraFNq5KmPskegu72BA+eOY06nE86TKmmozrzsaSD9UVrWuVfSXuGIucYMK7Zues4OTtEGJDt/gaa7ey1F3guN2d/BeDEf34wgw7sEwwbDWHj4I0pjctEqs/R3hxunH/juiBNt2M3Te34YW9ByxFNCzeCDJloR2AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClftHNge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClftHNge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E4BC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789230633;
	bh=cIpUCd45UuX36zkqqjSi8MM6HNAAkDsrQsdd8zH92LM=;
	h=To:Subject:From:Date:From;
	b=ClftHNgeV0gs2jI72EE6uKNVDssNYzt4vKeoMrqLwa7C01KdG4jiEvpfk8fB0G63m
	 qeua0G0LTW0SqTUcE1IB8XLpCOqmLLDW6acdYSAQrQRvH2pbKU11Db3nyl01URYeWj
	 +U9s/mNFGvDin9xJGrCWWjjYmmDnfjfCkNbwyFPYBJJjIaZpjKewHfALPDLHiGS55W
	 zZ7MmPNqPFZ9PtTbPv41YwakIHnBj6dEWjbUORHHrBCCOCTShqpJufp13Cd2TopfMt
	 9BwoSWVxDd3ljc6FCT77yKgdtAAkCAnXmyIxfWxNI4HCb2Kxd29x6Mc2jr6OWlIrDv
	 xlEqEDB+l/LDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9DBC88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923063368.6150.15047734132455677229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 130c6476aad7b0072ad4ccd47871d89e22ad8d1f5cf1e6f59c352fe0ccf7e0f5
Date: Sat, 12 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789230633
