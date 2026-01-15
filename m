Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDCB2E041D
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768470834; cv=none; b=I1ddtWqbPrBXRPgAqztwK39vZM5TI8QYAF2fcyBgmTRuaEw/ZNm0QJRo9D2AiXelcrDEmpXiRdzWT/2gyILScvvIa+ewSAFwltQ1HdSFmssYNbxC3JThQvvGmgzwMeb2yuADEcLMt1nSDEASeSZ8DDoiN0HO1mVvhPCWGDiRJNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768470834; c=relaxed/simple;
	bh=ydOIuyWjwyfI5PoJOwFNkL4u6qAsStXwOCRvSww3ZQ4=;
	h=To:Subject:From:Message-Id:Date; b=dQaxoIczJx+CgpQAmXYv29pY/q3WeBLB+03cUSEtlTpOEIBdEVUB0kx+N5yw/3UBXQI8jlwPO00b2K0ZSB/i39yJ06dirZuBiqeG74XsKNXIFd8wrxIaokiYTH6tro3Pihe8MmxZ6OJ42OBWWFfUt8LDKg4rBJTLsNKQ3m1V22Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EL5iBUMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EL5iBUMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2410C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768470833;
	bh=ydOIuyWjwyfI5PoJOwFNkL4u6qAsStXwOCRvSww3ZQ4=;
	h=To:Subject:From:Date:From;
	b=EL5iBUMjUwlCCMUp2CDpozgOWu9YpU48KYhBelc7GtIGZ8TNdDJ8tOoH+/cQgblLd
	 NjnXv7WzAr44sKaQgxR1B96610tLaboOZZbe1qvAhwjbmLBke5nN67iN3HWwEEs0LP
	 9CXkuTfDCzZA86YO7Z/t9zfI7VpVPd9h6E4iXD1Yrt7niM8/NzLKm078cIZ502Xmlq
	 6BiwZnijth9RbrdqKrcrQJT3jhYPePbYC3KY2zEObcq+1+4sEwwj9HnnpYt05obsKP
	 icHgnP2XwY753n6cyYbixaUgInhX58B5eRPqJceNgZCiGNZ2Jp2FSh6UvkflNISGta
	 eaNz1xksFtTjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90424D41149
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847083358.26959.9066373602699017295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e854b2e7603ae02f746c573a9a920daefadb87afbc30a7d870545af89949d52a
Date: Thu, 15 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768470833
