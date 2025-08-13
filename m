Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1649A35959
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755094795; cv=none; b=YmmXTsnYQ3LRAR73xcJwckOUV/gZcm0rxJJOChDyW2UDkezdHPFhUIirqqwo88WsgnLG9CSG7xNjYG3sp8/9Ft3Ic2n9HSkN2ooACagPTNm9bs29+D5PIveJl+cbFu8hb12mI8mmnGXuvCUpDnbB+ZcVFl1i+iNHwpTYltlaqgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755094795; c=relaxed/simple;
	bh=NENJp+kYMXCxt5IKtXr62JYIAflI3YKxtZbxN3ZBbu8=;
	h=To:Subject:From:Message-Id:Date; b=Ztw5Ux1ZSyA/8hhNUG/j6Ai05zgoXTQAPU9CcZgltnHTmZ8z7XxlCdnAiEPDF7rdscol5EYNM3MVZV/YfnndJzF9SSiRpXJO2UjDrdEvyiEdwt7Kapi93uRFXDxhl3jd3B13g8zq5f1f2Oy304iUrN/a9w+ciK391jTCnkv1mKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY2LLVII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY2LLVII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4CFC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755094793;
	bh=NENJp+kYMXCxt5IKtXr62JYIAflI3YKxtZbxN3ZBbu8=;
	h=To:Subject:From:Date:From;
	b=BY2LLVIIhF3i6MRGk43gaTDzrJcUgB/o9yG2Wk/EtQJJYtfitnNVF/WwpYbSFHMfe
	 0bIey4CFQUtLNBE0Yyrei0jv2rFEeXxye8TocHUl+K1zxfoSa9UoZD3ytzn8i2fRyr
	 CohsGkaNKDtZqqmEtwV4E16ZVML7C414oXlc3yE4vR08jOhAde0iY0+Ljra57cwY28
	 z+G83c3eS47LkZLmh1nbcIJthuIH+JE1yHuQkRQR/ah2l7stTQMM6ZAHpS4brIqU5v
	 NPbX/Z6Pp6YzNJI2hgTIXUbvwRApdnVeg9aXkc3A41qeMmga3T4CPiby2JsGSbW95k
	 aY4Wz9Aoy97Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C1C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509479357.11332.15951961777722435805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d5cb40740a6a716acbf7b51bb9564f197e00c42b6f0b4d38861fd4c1da9547
Date: Wed, 13 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755094793
