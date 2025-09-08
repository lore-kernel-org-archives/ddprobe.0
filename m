Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA7D30BB91
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757339394; cv=none; b=nbjrpDi5+OTPGVHdVatmerwhoT1tg2O3OXg91xs91G7SmSyVQLZFSrXH96CLRPWhXajba1LVQgmvMtdnhcqGES1svwgdxSeV6Nr5uIs4ipNg31OdoPYyLLMFO3b7kJ+e0ehz+xf4cRtsGeCbpVaRXQazqQAhF9iMz7ibWqL3A4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757339394; c=relaxed/simple;
	bh=jeLO9/mGmoV19OSkpRz35S2m5SWcoGclLViIfYaY05U=;
	h=To:Subject:From:Message-Id:Date; b=YrvWhgVFw3Ri8KVWtT3GZm7HfdV4LLNaFAAiyI3XK06LgQyCoeAEShC5YabWPuXJsTZrWuttybLqHT6z2tkRhcxX9tPaKg2BGhXU4V2eM2JzbtYqmFVweMejqJTR/OQL7hSbreQXiIWsDvXw1qbH4h75zBqkNYbyFu3ufJIQYbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpNOi3FT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpNOi3FT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04EEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757339393;
	bh=jeLO9/mGmoV19OSkpRz35S2m5SWcoGclLViIfYaY05U=;
	h=To:Subject:From:Date:From;
	b=DpNOi3FTCqzbyMublUDWqtb2zsQKv/5sishH1tpMMtIUhaLc4MOctNxyMZpic2IOu
	 rSjfVE30ytYpNPYP7fiTIQOeK8AP76nt0z9Zxejdf+GIYBfuDac+zaWbPBSymaKfly
	 MiuHQ/tsePW/DtII7FCUUENwPntCu/pFl6CXhoJp8dEsqVOOqswnZAH7d3anPhdY2U
	 eiAseyrmgMaa2jjSPF7bxn+8LGeZ6mfqilnbUCFLSeqplmn49BsgucAras0L0QpWR1
	 uI0KIoiPplnodRnzggjLRuOqOdXAhBtBPSBZpqejz4ELK+bLkvw9WRCAuydPqPLGkq
	 /MD3mGRt6gKug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E840CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733939357.29622.8674071549150442846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da75fb65a83e935f16a3a539252a679a603ac37b4bc30acc933d7a61c610759
Date: Mon, 08 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757339393
