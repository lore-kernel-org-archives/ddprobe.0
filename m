Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DCA211A14
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779836554; cv=none; b=FWfDHXWT5lA3qVbXIgKgEwtFP6S5ksHgeUuOctlmnORVWApt2CtoJa39//hSJBTaUURJaWD6m+nWzvgCPB1/NSCmJPit9SM3IV0wT6lePrucTFA5JnpjIZqC10PdWZZ/Q/jWzj/slSGzc8yTaWm6uvwPAFqInKK6tkJgY4A1Ggk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779836554; c=relaxed/simple;
	bh=XcLVcr4dHg9yvDF32iHoINpQmgVf7fffmtYU5GC1RuI=;
	h=To:Subject:From:Message-Id:Date; b=bBXryYjFQ7YOb8UyJ84xMnFlat27MmaM7Q0A149xPOGjJQtZbaPHzfpFDXG66hRXkBnAEOauuuTNlhnl9RDajB/0DIluHeHRcKKjlo770oATEd1f/f3m7RlGTh4xUBzOeYY54La+UJQ9+bkegKlym/XLOevsfw/knZv4oW87G4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CW8Fmo4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CW8Fmo4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF8EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779836553;
	bh=XcLVcr4dHg9yvDF32iHoINpQmgVf7fffmtYU5GC1RuI=;
	h=To:Subject:From:Date:From;
	b=CW8Fmo4mmPqSkguUTlDq7b8qLLZ8Dgq3h0ojIVAOREk8zvfzysdNziZ6bmXH3DF82
	 NMlx5RY4sGkCijjZ6f1sizIegmQs/0yaF+SoL467YBRsPuLZNSHIiFxg64GfmrLlF2
	 KZE99YMmeyT/rUYST83ccGThujWFo9v7T3ZFCWtrVV9GyYAWj6TzzC3GgMYy9LIuTY
	 q6U0WxZQB4DFHDOGMtn62Bok4XdHtsmcIsz1q+iXjzA7/fzoTzII11qHYyixmMS2qq
	 Gvi7cjCa8KpOMPgUl3ZbcMOFsl7PMJhbnmy54TL5Af0z43NxDBM7C4KypgBOVywXoR
	 Dom3GtIiMW6ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DE3CD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983655371.14011.12284040518518813167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdabba157ff1d86f33ef56f51e8f3467190eb00329a0ebfa7e4c7c47c00f5a7
Date: Tue, 26 May 2026 23:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779836553
