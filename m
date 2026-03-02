Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55BB1A2C0B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772467494; cv=none; b=DIrywDpc6HlezEtLPQstccJIspRJuX1b0zmD9zliKqiExqv++wwGDd3qxn+cCYiasBPLea7s2l5e/zjM/zKnKiQSs04KTfTWcvM2elcSrAEU+3RRO3eRvL2fNnMALPchB17RgmiVUJAuqmKCcj/NuEt6JBZCl1L2mVQ7BDUd7Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772467494; c=relaxed/simple;
	bh=wQWn3ogJvZGvOkCJNbPQzPxQV0e+5voiwa5+7gAP5sU=;
	h=To:Subject:From:Message-Id:Date; b=br1PYsoUZE+d4ymkNKYlT1gJpVZNrmgiN9YRBGkHdf8xzXj5ohzi6WK//BHTi2LgFN668QH1K5NUHvUo/MAzGuQVvn8eGYudjmhPfRXZj1E3fAQjEwHas/FQtSb5UbA4BODIKthJHMM7waSyZrbO5WTRJAhi2DyGBdNZLVXA9NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxWyzTmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxWyzTmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C552EC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772467493;
	bh=wQWn3ogJvZGvOkCJNbPQzPxQV0e+5voiwa5+7gAP5sU=;
	h=To:Subject:From:Date:From;
	b=RxWyzTmbqsjVm13vxFm6KIi+kObMKL89o2xcKcHyYvoe1m8jkagKmsKfplG+/KzLy
	 ne9vxzvJxj6WNn9nZyTNm/OUwvnWK8o4rjkRQePBVEvst68EPvrQ3M5GTi27x7Ik5+
	 rDBd8mqG1IPW/xhR5662R5KPNPwPZ+uMxvl9GJVxamZP/SOH2TYekkD72zepr295Lf
	 Ywke8tKCe27nACOA3dLcy2IYQJGsEJ+EgpkWxxjplZsMqfTrFufJknHCW7hX0u7n6R
	 LIQoFdf31KtSIz+L5BnrGXsVQU/NkgnreE5/rbC6T5rk3INnP/DMmWRI/BFW1KF7D3
	 Lyn0PWsyfFvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ADAEA4E33
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246749367.15683.10322897362065942186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d1a3d3242da6bf8a4a4a37f942924a54098ba2513d01f52833733f94785a0c
Date: Mon, 02 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772467493
