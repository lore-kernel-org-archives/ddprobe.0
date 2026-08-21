Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526E847DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787309434; cv=none; b=ovmxNrEwWwrd9/oilNrbhZGC+tzwuPy9dgiUhHFIUBE7P/12DldXt8jCnmV5Hl+bb30eCjhdoCIquT4KcZVTP/cfqXrnwJaxCN5pXlj5SkqQfhXoxuHIMyOQZ+JhiWl+Pd1GwPblxbihapg4K6H1DvU3UK9hieTWYk5CHgrZ8gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787309434; c=relaxed/simple;
	bh=2v1bO/2iHDc48wlmQwhjF+VhF8AtB+t4UX2ajLnCkXM=;
	h=To:Subject:From:Message-Id:Date; b=QknaDqgMG3QUzUt5rsgUCuhL5tq5stwzeBMPkteNywu/0LbFqFpootopO3X5rUTiNAy7qfL4NY29M9vryGX6OnQUVjqPjE3evt6CRvCiur82oFDmSGXf6sVkmHCRuGcKzkKb1TcgULW5rVS+IlqcS3ohWi7Is20lJOlpxCs+GrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csTuyYgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csTuyYgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3A8C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787309433;
	bh=2v1bO/2iHDc48wlmQwhjF+VhF8AtB+t4UX2ajLnCkXM=;
	h=To:Subject:From:Date:From;
	b=csTuyYgSsLkYe4Wekm8Swix9AtbsI/XSJhvFshUqRyYIFpdYAFAnDMIrUDM/F9YV8
	 DCRKfqAdghxuQRZEk4kG/sLU9CSxywF/jwlTOo5y3bGypNwWMKvcPKG2QMtcpWF8e2
	 NNGx1Qi0G0fpk4jhB5/YpQ0T1CTazemDCK1As9insUWjanKtOb8dxAjaWS2fgylgqa
	 59Ky5Hwl2HMwzVK0ru3Vv3400U2/wRTgemkL/umPEBSjfBJRUOL1hYAqa9mXEgbnil
	 UnM1zgxcec3UewXeQH2t0q4ECyK++22F6XzEO5QrUiFf7/WZAMwJpniGXw2TVW6cgI
	 sTxqnvVzAAkbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C88C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730943373.15590.12618924085902388067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed2001491f9c1d96d963020261d7a150d99be17bec84ade03f423e7fd798480b
Date: Fri, 21 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787309433
