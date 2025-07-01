Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280F119995E
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751409594; cv=none; b=X+Y/oDeSpWUu9IIAML+tmYYGZ6LZKWYNF+PEY5Q2owoRAbL6Q8auLOgVBe1cM7ayoqhgSa89L6RTGdihhgU6MupUtp6jLODyRFr9CBa0uUopqW5qeNeGeX2M45WqWw00kZqSf2Zk3zh0J0gmMiMmPHP/EqJE2+eBIE+ADEbrhzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751409594; c=relaxed/simple;
	bh=qkkzS1pRlsGI0kEJYFOFR//gSACo2FIytPRHmKPgarE=;
	h=To:Subject:From:Message-Id:Date; b=p8B/z9KANn1TmAq9cNVK4OOrQ+LFiQWVlb1DUM3J8+fd7G/oH9Fctk0JXV/a5EThWYkuQJ1ysrJCTY8y8lzNKUfLyldDoh4vOKmq9Fr3yKxW8Yf7t6ZpFWOdAwS22EC97KrrtVS2vuvSyYNgOs2WUlrPxkKVa06qRmN6qLlymTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsRcyZHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsRcyZHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1096C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751409593;
	bh=qkkzS1pRlsGI0kEJYFOFR//gSACo2FIytPRHmKPgarE=;
	h=To:Subject:From:Date:From;
	b=gsRcyZHsFhgJE5Q5UCa4g1jcCk93/b/9Bn5C/EU63K7lei4SpnWzZil8rRda9XuFP
	 1CIjpnjDPDWNXxKZSfpjpIt2HLKEP03bZeRs5CuUQJa/CoR2hlSm5RLUGxnZafCtrM
	 zXYeM9YE415khgibyt/qeuMiVpjoENLSqVpKcP2KBAJ4kfW6jnCgB6KOMpBH3diHny
	 tsh1hace9wc5O9CfR9T9AFedOyxJIs0P6aKFbFhg4prDmkNWFxJlOVylLmcy0L2irP
	 lGE10v2JelHVmhbdb6d3CWsX8AsFEK0Zq9GdrpQu7nbgsU3Bf/Lbq6LcBiPULqs+9t
	 6SHQTCT7eaQ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C28C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140959357.7025.2083321243339922556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd6f27be78aa24482a6a34ec6ff1ec1ed83b41ec2fb71981773ed9392a6babd
Date: Tue, 01 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751409593
