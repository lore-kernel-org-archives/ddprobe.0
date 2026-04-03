Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7841C3BEB
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775255134; cv=none; b=szBAC1eXlM6SaUkkRwFePOzQ3VDGjKGjLqnxT46fDzI0ABUgND7PRhSgaAkAdqJ38Li34RxOnDqjO3LL3LVzLeSDoyL7aMOqUUcDOaUCrdH7kZU3JzLAA9tSSm+1OC3YDiXPhTKc/Nx/dA9/AEhiNfYMIPEegiJe0ZCAo1KVK5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775255134; c=relaxed/simple;
	bh=GgPD0ZmcKl70sId+SVXp3I1i7tHxGkK+aSmkANVkIX0=;
	h=To:Subject:From:Message-Id:Date; b=uEjPJ98a3cpQaJ/H3Zs7utxNN5KwC2GTICGlJdVgoJ4PnJbQ6c7ZEUVFMBxeufEa5FdfnFydgj288DzO008lWZkdMTStQZrj9/AJ+UcuhXsHcvDg/d0H9aEvlHIWlKOfTj7wLaz4KCZoLSLJvKcCXL3HcKOambnErb6xhjPy7c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0ZZNy+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0ZZNy+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53AEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775255133;
	bh=GgPD0ZmcKl70sId+SVXp3I1i7tHxGkK+aSmkANVkIX0=;
	h=To:Subject:From:Date:From;
	b=t0ZZNy+k+QE8EM/8TUawodgOXop8v6xCI1clPHopbp5gWJ7vLwHtAsUnRSPjAEzE3
	 OTM7SWAeB5F55Tc/NttHnngU55PwdOPvzhDaukaWufZLwr68V4zQpsx99FPyAf+Yva
	 XmERqLIrH3hYWNsW7981AIkOTyltS31fHBOy5vt/eaqsIaLbrk4VajC1TP6Fa06GrK
	 gv/V9qKk6UhdnAG+t/sZa1XfvBSQI47y418GqrMXt+1K56oZuoyaKuLRFOWskO3iAh
	 tF38/Mdd78Ub+mZHTo7CPhF8BKHHrMxyu42X+/OF7BQkc4U4myrXG2PTjKSYAwAd8K
	 ADNBSLtGDC7Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D89E88D6E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525513369.11681.4688946172511916449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46fb4752271d20b4edaa7cb1bca6f63200083e8fa7e41eca41e92e2a5922cb41
Date: Fri, 03 Apr 2026 22:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775255133
