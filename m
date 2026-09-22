Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407702FABFB
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790049034; cv=none; b=A30CLphKj5RLu4ArrSHCVdvj/uacIcJh2aUckpyOIjGllDDnaYDgLef4KGy0P9YF56NNOdHnlIzOPiGmyTwugB2BMdRd+Qo0OuCzdiMnAYfQXZXI6kcSjG2qYM6U23KuixWWMGfuZounSuBOnHGYEFDDmbPPaXZgldBgNCQkiQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790049034; c=relaxed/simple;
	bh=ndyKlEcTU461POn2EMo42ZIaWtzkJras17NeSXQOUsg=;
	h=To:Subject:From:Message-Id:Date; b=Ucw9ofmdJLcIctb82UnhEIJKTLg22ZC89ZSeoO3n5zWJahg+iIewNVaeupH66N+8jDdBwNm5nP0E5gtMESjl8muJw2z8jS5BjzuXMalLvvRI4OBMdwnMjZfhn9C28bzRgDtxzu5NizR1fVxmc7QAgwyHQB1QtdubQmTyXEjH5Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHFGZ5ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHFGZ5ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6E6C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790049033;
	bh=ndyKlEcTU461POn2EMo42ZIaWtzkJras17NeSXQOUsg=;
	h=To:Subject:From:Date:From;
	b=tHFGZ5ezA8TFcCZR5hVZUW76Zt3dwTxTyHfxCkn8NZO8NzRZnNm85iVQB3mtMjimB
	 hM2b8VYCmfpvT2MyZnF59NaDak+gYEgnwXy4LTaqwLRgG3ohPshT8RbJKJil0PkijW
	 GqyuAuCmqTBDHjo6LNNQdvXjQbPNOi/TJvbVpL+CS8Udyqr5jE9aAyAPGKpjZIR4qI
	 k7u/m9jRmFVoGWjiWVMedY4wVxB/FxUxf06J+ng/KYVkXVX0evNZETVGFlvSspHEEy
	 F1Mb1lqoUDTUmXmxayh+ZJktUx+wMiQjzsfRIGwbYHLf08N6y+F+BwKiMRQtME76i6
	 d0gQmcNilWkaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F9CC982DF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004903368.24654.2786632920048314383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faeeb56177fbac493875a3c90d99971842e2baa3dd16b6dce399e93dd8f35b5a
Date: Tue, 22 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790049033
