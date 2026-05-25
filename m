Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C17343D63
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779687754; cv=none; b=ds19vKmnA4r/nQEtZZdBrcPHTU47sNRdePAaBN5VhUikgv3amL86e0Y9vOBkQLutPWVpmuzg9z6BJT+vHsmnunGtHpon5hq5DVsPiyK9mWgDQTHjgCV4Poq6xI4GY2VED1mVZLoFN+1sQO1sQZA5cRROibNzUr75MN6BocljnFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779687754; c=relaxed/simple;
	bh=BN/WOEfovQ3S+KMkzy+/pWVUCh/OrKU0Cjf/ED0Itrc=;
	h=To:Subject:From:Message-Id:Date; b=K6AwnEk6Wt5d7nJbPDSlqQH7CRrdqLqyNivxBgcDFxoedCuoZN+NJx0liizBBL1h1/VHcJoSjSlP8NkWHtrc6gAWnD+EKlJhBYz5TjgnDoBeAV4BBpTtJ4s7eos9R4e4RxxjQKc5LIt1htpdjyoT4Hl2Itd+mLIsZ3bP/29RCA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cl08T1hV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cl08T1hV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7109C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779687753;
	bh=BN/WOEfovQ3S+KMkzy+/pWVUCh/OrKU0Cjf/ED0Itrc=;
	h=To:Subject:From:Date:From;
	b=Cl08T1hVMcf7w412f4B2sA2azfYN1GRI8/QijE2Q4w/SERJ+H13+PAhy65Zbfkatq
	 CajGun/BkiKkn0MdfTDKdZH3TKfV0F15QTK5NKSuSamPdnd4OLrAHRdPVd5lf4bFjU
	 7Y+5nB5Q+ydpevdUGNO2DVT2jbc6LYW/NPvRMKgT9uk6n7lQx+p4Lo23kfnVh/uOJ6
	 BLBvNU1x9Doc6y1PgVAovA9H/AL8cbQdatSRT+8tfHEea+dofJ7wgUU0bwfjgdb1Ek
	 Gipw1DiifLz6iYPgAMRIRyCW7LRuO62XyPVisOeskdIY8JxEykqcOxU2IZAeW83OxA
	 pXOZygeiiHMxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6B8CD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968775375.4342.6632081901868076491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30eda933d91ab78f81e0539bd7d1da371f78d93d9bbf141e0dee5dd88b301dfa
Date: Mon, 25 May 2026 05:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779687753
