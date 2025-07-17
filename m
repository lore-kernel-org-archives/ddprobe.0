Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA57817E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752788393; cv=none; b=ATZdj6htw4CB28KNnsENNXX957YplC3NJWNph65Dirzna2Px8vR92XjJ1MNi5ST3EnsRJQ09GgCMZEaPRjPqP/l6Z9LnpffzZeJ6YQApXLcxdX17K9os8sHtgb6kZ5jz3OqK7yuf3LeWdkZEAp1Mte2zYLk0rZ3d8oxaSZXOqUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752788393; c=relaxed/simple;
	bh=E8xe7fFkZ9o2xzEeQSzLRgyBOm6GKuvDPSsLNF2f9sw=;
	h=To:Subject:From:Message-Id:Date; b=dNAMdQ4w1pudxyYxgdfSB7cPiLGbTI5FsCtq03GoU7sCRaGt4hFgWoTiQl0RdCORI/zp1JKP0tdJ8MO4Iios+cjXWD6STLFgFXimanRZAHLGohncurI2FLLPIWr5E+xy4bTRte5RYj4Si16avR69lMSMjBuauEYtVRjD8fe68bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oz0pD2eW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oz0pD2eW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBC1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752788393;
	bh=E8xe7fFkZ9o2xzEeQSzLRgyBOm6GKuvDPSsLNF2f9sw=;
	h=To:Subject:From:Date:From;
	b=Oz0pD2eWpN/KAwK21+Tg1ztR2NIeESDAxd99lMrmau7EWZswzfNsqnyQAw/SdyYVl
	 DAkWoZ/v0YV6Qa/b80CsE7wjzMnDyi3THjU9bOkkVa7TBWDlgMmTPmxgHSEqYkmUHo
	 wIRspyIAf1CXrGaTNUcjOAgsEnciDsH7rALvYmrEUkWmB3VeYIHxno4z30PnQ0zDm2
	 LUEKlRLGQh9EkWZJsz2jBKWxbULlc1uJiW6jxsQh7I/m0j6bYD5XlC5gRYU9Q5KgWm
	 45T4rHaQ67iQNKHtheoM2GsTOAVOqs/yTqmdgqqEg01+0t6vlmMVVd+MF7mxUoTARY
	 A+1mLAPMXsrng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F485C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278839357.8439.968534102912372892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc2ee2d4e02220a2c06e94c3b5420c39f1e814703b020a8999eae9755fbd7e0
Date: Thu, 17 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752788393
