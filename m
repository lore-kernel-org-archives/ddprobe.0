Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1098F320A2E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767927834; cv=none; b=YuOdfWnt0qBJctphO1X4yOwVSwHi8/kzmmZrAIfrAzFkwBYdUKTSMyz2eqlA1PNGJIFcVanmLso80RRu/pMBsQoRahsktc0N5vQzJivpEgsaxiqd5syNGzFt98RehIbh8UffyMUUtOBsPU2IAt4epc2NcUBv9xKrbl/149WhKSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767927834; c=relaxed/simple;
	bh=CZ+82xd6nvFZDKrTsVI/yrh2233FlAWHyP1hxTt/x54=;
	h=To:Subject:From:Message-Id:Date; b=Al4D/mi5ZH10fMbCuTEUptKtguiJp2wXtNkMOU9cXN433f611y10XYT/Dd79Om81yh+axiLB84xpUh2VicDGNOmbGfJSqUVMSSn3i1H9Runfa1a90qpf1D50X9M4mt8WQUEjgS9ie6sc4TIqQiscygXdM82MdKGp79POCw5ots8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoMrVZeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoMrVZeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A128FC116D0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767927833;
	bh=CZ+82xd6nvFZDKrTsVI/yrh2233FlAWHyP1hxTt/x54=;
	h=To:Subject:From:Date:From;
	b=qoMrVZehQOZIB0xQBgRa5BDFL4ZbgZdGR3W9b1N/wh4iHv3czu/cnLmmc0u5nQzR8
	 DB4DmiPKiv6JKR8krLjhV62HidV23aq8MSbNKSRlJSxVjbdPY4MyGsDlBTtj71LH1B
	 ZutoizYakQ1iAgIWitefez/ZJxqZPSDkgfjw3VlGkPpKnLG/zBj8P6uvzUb/T2z26k
	 Ydvjg9Poe0navTZ11K5sQ1qFjRkUOwzeDhbL033AWjIFCNSW0ZE1g5Sg1u31uebZq8
	 +ym8y0gUEvEzWyMcNL4Jq/aMAJlgmdny01F+skcA1kyVMEDhjWQ9X7jiTZjdyURJQF
	 ZYd7SDr2wVn/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90259D232D1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792783358.26539.44609667812613300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643ee36384ecaf3a614396d86f5e907f4621969c27b3fc52770bb86fddc1d622
Date: Fri, 09 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767927833
