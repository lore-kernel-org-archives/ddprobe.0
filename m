Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E085C33F5B9
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778739634; cv=none; b=Vt0BAgkm13mlQ7UNATZMgizuKjVX/E3Brnv7fTgOI5Sn0DJmJn9HPCbxOb22qeYHH1P6Vjh6p2HCFrxuwm4LPA3Ln+cVuOrYnEkr9xpXyaoL0R7ekdATkICMvN0QiI1dzQz1JyqhzIrRQuHNRWuo2XgTutJ+Gm4BcOeAX5MUdUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778739634; c=relaxed/simple;
	bh=y6F9yOGdxHIZ+s4o6t9N/FXBrsvY0jA6sJfZlq82Sj4=;
	h=To:Subject:From:Message-Id:Date; b=lQS9E5uNUBTDMiEY5KU0tUW8rNKGvhqr/t5HRh7djittT3RCIhvbQpm/4t+ZCNRGIiCy/VCvHpRZ3vkoi8ddeOkrRIHA86WPlOKkn/XTrTtAe52OKQkPxD9dzOegOUfJYCTN8w3OmCJQHS9DsbVYckhGw//AUC28uvORtnfZaOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQ0fRtuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQ0fRtuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28BEC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778739633;
	bh=y6F9yOGdxHIZ+s4o6t9N/FXBrsvY0jA6sJfZlq82Sj4=;
	h=To:Subject:From:Date:From;
	b=kQ0fRtuvgFQ8aRV5e51kgawvxaf84nD+8YwURQDu7Y5OtDPjmm8I+FNJDqcvy2A2z
	 9fhyfgWR/W6sA1loeFDn04lGeqspgPJ8mB04j/t1o7tGzv7ukY4l1QjAJGtYBgLsg8
	 ak3YjHro46a3Ir6HMESYmc1Xb5qgmjX7O9aZcB3XOPpxZ6cXWG3p0I6WMlV5VCZjHH
	 IlyFoe6n1Ap6ME7TFlvXMKwmrWsaVvEac9DFRUS3pYmAArItiC4LShfuEiiPALUyL4
	 ghUYGShTM2v44IvV8pxxIBnunYm3IS5K9aGvVdDSiMm6507ayTtUNP3Nfm1l1HIh6U
	 hl6uEkUvMvzjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A17CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873963369.28041.4383912121972965375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052a619a7fc14e0f8293e8ad1c350016082b31583777b6a172f1473f2c716bee
Date: Thu, 14 May 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778739633
