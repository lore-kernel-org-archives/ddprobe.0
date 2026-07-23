Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616293E172F
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784793574; cv=none; b=cjAR92/TflABUMIMwCNxwx/BVQQ+01XFbt3D2i9HLyNvdECi6Nlzq6gRDgDEizScD5h/TdbavvwkTSpPGSNWET5sD4KUnSUDcidGaPqeCiD2dFo7Dm0RVkvYJjlnArOXKKRWpi6ap+moBCeNx+eTWf2sz+3Y/ZdXvh532zDgN3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784793574; c=relaxed/simple;
	bh=IaV/e3XXU2nriXBLg9bX9GOjhGcexd41Vfb7ol0SxzU=;
	h=To:Subject:From:Message-Id:Date; b=eUmbltM5yPcdcDWTxWey6V7LDmU/l7BlFicbUbeIFF70eTG/NNWXa1cI5F3JKCbhILvWU7WZ9dJJosbU7S1/oq8MeVxj3U7B7E5Okj3Ld5ASlPCXCdVikaxGgkTwm4WJk4CHE6BNvRuD1ReFviVMMQAZIMd7uVe6DCWxB1aNahs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECSLj0hK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECSLj0hK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E83BBC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784793573;
	bh=IaV/e3XXU2nriXBLg9bX9GOjhGcexd41Vfb7ol0SxzU=;
	h=To:Subject:From:Date:From;
	b=ECSLj0hK75lrBm3xI1UKAS2Hqm0DMuOwBZbQamiz/T6F0VH2oVuxDrjbltbnoS278
	 3aUbEn2Y8leaVFyqWr4ehH11NWOZlyBM+zecEB81HutrcgVa2EElgLy23tX9Cpvjwr
	 IjEkjdAkvqMmngFcKlCOy0wwgk83n9MOowKHvRsJBauC4nGZGBIqQgH3Xv6f0xooR5
	 i+EZpL/R9PQxUWbCSQ7p2Z22bDFRlEADNTBozt8SY1rUaUVw26lAAAPzkchTVgJxyY
	 MSU9deWO2/8zLvtyMaePbIdw0GIHE8mseVKAf8evNaN0B/rg3trqhXAyqGEkr+P6jt
	 lUvR7nGjG0ttg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2565C44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479357372.27766.13686109092979266437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe9c1e5fd1b89d634a74f186845e2ed158fa5cca14950c25da2f820c1fda3a0
Date: Thu, 23 Jul 2026 07:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784793573
