Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6DD28507B
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765698174; cv=none; b=iUtTG4bzUvHa+WxOXU7iq0XOIaXd12rYcUQpa2rOqQQA98LwkY3bghj12o0HO9jJHv+UvGVgyZFnY1hXE5gWE8/WNj4qlpp6lKX4npOSSJSDTaZHUHVoR2419haC8ZepBG5chVn93/hGiA3Im0hRE6PCfoT99MeYFKXriHbGCYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765698174; c=relaxed/simple;
	bh=enYymy2mpF7VJg8Op8QtI9RLTAdZ7kIuVRtxGG9D4KM=;
	h=To:Subject:From:Message-Id:Date; b=ASQZ5COktXGp+SZmmK0apnEK9FuVgAjF1ooa5WZvE2zv+7VnAlONEhEu0fhc1hB/ZReYW14jFaB7kI9SgHdU9QhwAcm2lmD/iRdZGzSj0KeR0RIB2ohUzJ8rprPQSQYHSOGyNdM3UFvRzP4RxgVfSUPzaD3FA5M//kuG7YKC1H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsH5T3xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsH5T3xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98C2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765698173;
	bh=enYymy2mpF7VJg8Op8QtI9RLTAdZ7kIuVRtxGG9D4KM=;
	h=To:Subject:From:Date:From;
	b=LsH5T3xeupfFhwANNtfy0QQrEOeorPpyj8KCENUOO0Wv11cg9Mp3H3cRXbBvEJ7bh
	 Yf9Z7BKDvWYz/qS0hmwc3f624+iJs1R3LJST0fSdy1jLQE+nRlqQX5VzqegbOTtEct
	 ESQ4kM/KTHIvcWwqwLdyMGLRyIEtfsu/+nbI5oCM7i+dQjjWLW/ASYR4B/M4DVjDuB
	 Yy3Uh0PS6HFwkLPSC9qvk7LtcIPHR/Fl85cKf4Yrm+OKPfxwVc/1YYVoMgtgx7WzBY
	 /ZeKc/ccVzPSTVCs/9pZfYDS+ecfb6e4WELb99UHvJDSvonHK/PkSOLlP/g6i10fCD
	 NEoit27LhKcIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AF6D3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569817363.27886.6607077271660272934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1159710910fa4cd2995e9a8477f05d9ed353c1179ec2ca97351f3a20f8338a1
Date: Sun, 14 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765698173
