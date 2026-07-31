Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515D43AE6F7
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785512434; cv=none; b=G8niMCIdBvlkDfxe4rfrvJv52H2NgOpxArp+R8Es++tG9lOQpmd4u1ZUhIibpSFooveY+WFW0qUmp0N5b2Pio7KILWR9vn6w+O3fupK4hd9Qw0f9Sk1BoFOD9wIbRNI50ymA0zP9obVMnkQgQgs/DTE+eSct7GvuyltT2U3Cirg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785512434; c=relaxed/simple;
	bh=ZfBq7KSeqy2x1Y3BalFuhaV4OSDYTf5WrRWl0HjWOLo=;
	h=To:Subject:From:Message-Id:Date; b=cfSoOnxPtiEHFogCf4JRO/VAjJPZ4txH3hgCtui7N4Vf2yWUyxgiLDVzoft3I1AzzmsVWx5m1j+7lB8DbQM/0AnNHa1OmhivfBnLRGUHAvoZxgN3nP0WVNzveelQhxEpEzjgrZANEqUiRtAYRBjPJHayzBNm1eD++ZahFjsGrcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhG81Ynf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhG81Ynf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDCFC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785512433;
	bh=ZfBq7KSeqy2x1Y3BalFuhaV4OSDYTf5WrRWl0HjWOLo=;
	h=To:Subject:From:Date:From;
	b=fhG81YnfL5OafU0l7kW7itNhGsjBswR/aOXmgZt9hoyig7qoeAJs6cadFcQSJtICo
	 pyebzYUSlyu6XHdplqDOXsNEUMSbjoP32w2cKodBsbIGodCv4EX6WIZMX9HijekQTR
	 rQYUub1+7PSvFc6CT05BbkD8jSZ9+4OT+WUP7YXH85cQAN4YF4OAB+Nq8AzN7KLn/v
	 4QRQBzsAsayITwWl4i2lSrAwVw0hiSRAeYB7Pn1rcJLuh+2Doj9QBznDaLkUYj27Pt
	 agN2+6vwAN/8aZV+mUgJSQb9SJ03h/T+YgZSt2/+kETSyVHKUhZ1gGzdzSzxtddEGm
	 o3ipt9q57bowg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AA5C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551243368.29735.9234785321297727346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb206a2129eae709de96a8b5f5aa20390eb67bdde8909f9812b79f60e22bead
Date: Fri, 31 Jul 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785512433
