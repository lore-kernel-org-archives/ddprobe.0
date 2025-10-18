Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E3F9443
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760765394; cv=none; b=bUBPJpdKkmVZswZ7tnm0a8JC5mOy3Dl/p4zOEk+1ya2z3HNmWGpa6rAyp7MvV1dyrFHWbCUkonKPpX+XVsqyz6gC8UAMEec5OKe69QvMB2wfQwLU+Ur7z4ZHoXa9wqMNGTeqpgpuhohTVs4bxzYNrvNSdb3IsjUr4o3N4lck6iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760765394; c=relaxed/simple;
	bh=RF5CkwrY4n2fJ5Et57EFxgYd341aDc9C7BseasW6TkI=;
	h=To:Subject:From:Message-Id:Date; b=sgGhhO8BFBRKrRguI6JsvzXcpFDiSre3m0ODIzEwl9aTeTPaiWsrwZKyFUlzOjshqGii3fGNt4IhhNUKgnDDZbjaraQQ2idzviBoi9ybStQQkt3c5UcDvz5tm+Fh+2PzprUM0SoePkqiECKU1bv56mo0OWJr07b5uDF4Bensxxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8IZrdQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8IZrdQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D4AC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760765393;
	bh=RF5CkwrY4n2fJ5Et57EFxgYd341aDc9C7BseasW6TkI=;
	h=To:Subject:From:Date:From;
	b=Q8IZrdQr1fyjMtuhmuhjkvx6WE7TOSlpW9jxG+ljUyJ5P46nGkL8Gm+0/ZU8R7tdD
	 IXzrGYdFCfU55rL1wlABHIZQKkNIppsk7kPxL5MawE25MHH5wLgv1+mST3mfAY1w/Q
	 s9WnliGxaCOTqOaDJIPYvy7N83kFSRNxstAPkDkHObAC+KE93BXMQJdMidw7Eg80HE
	 bYttuNR4V7wouNLeGTwlVrNU/d/aVeqlkwxMjLPcSdd0aZu6XNPQCJgF69DWhQEpYD
	 qYHnynW+iUkIeJyWbXGerbxhPau6pwSWCPm3z1/1cPzfGHL8iXUzM/qUax98PrGC4z
	 Zy6JvN9D9mlCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9267FCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076539357.13246.15588157276941438767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16d3885ee9ae8abe5f03cb15a30677e253258679bf5de4b8eb5a351d97bb7eb
Date: Sat, 18 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760765393
