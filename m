Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E0A46BF
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774164894; cv=none; b=UPSH+fiJ3uAOGpIYVeM6WIsJgNE1yKYMjlhKWT8CsC7Y3VMiMSX9s5cxzKsTJoi4aBBhcxeZXi/gdIqsuUQ65kyVwglR9Ephs+E1o8uADVCxLczk1NNf/ugTzxIN6am7+hUCGx00hwrGX7DPrPw+sqn7Y7NfZr+gVUoChkmnx6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774164894; c=relaxed/simple;
	bh=4gq373xZUBaz9fdLMqWXRl+Pjshi2HcQLVVGYaYT0Sg=;
	h=To:Subject:From:Message-Id:Date; b=E3ETVVdC15Qkk52pKyT3TGeykMPBTgFwJIagyNGCbK4YBAXpmxFMeIlkesiSzoN/q8clbwHykWU48pI0KcJogkSV/1qlVwI83rjVigYh/SGrAJV6S0NSf5QbogijaTnxTMP1lSHF64sF4fIvKLPUOiyGujAPCrqhaH1VAnyvZ34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mt7S98Hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mt7S98Hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DFFC2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774164893;
	bh=4gq373xZUBaz9fdLMqWXRl+Pjshi2HcQLVVGYaYT0Sg=;
	h=To:Subject:From:Date:From;
	b=Mt7S98Hk/WJ5ASCHNKDvo99+VaCbeCTTVQYoQb/9iVuzjQFh/IFZdATZfpuZb1OxQ
	 jCSnRZFye+nt8Uh/6FHWDS5jlKobIXqh/XYw02OeCDrhPHEK21OISbR+0OE8LJ19fz
	 AIyapbF2YfCcWmQWYStgE0+czAtwoerBLiLwBuU6ZwwDcpoiVtCCCXVozhOLE7oAkk
	 Na2yiAnSh5OKYk6L6ZnaYVgRNsPNzO3bSHiUzg9mtS4VOsOndcHGuXgFQoo5ex7vlL
	 85JKhDWx+DeWlPcWKmsCJalIjRrnbXVnLgtZVqXeb7q+26xyu6JkMsM04ReBOg+XxL
	 e4iNua/oMt7ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96939FC72AF
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416489358.22465.7119656016526617129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675784b982a860a3f7b9fbc67b9899eac5a687141599e1f86a23bba403541854
Date: Sun, 22 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774164893
