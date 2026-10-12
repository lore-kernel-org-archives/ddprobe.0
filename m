Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF305A79B
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791773434; cv=none; b=RKJCucR4m3JNSzNLHVmOy5jijNNaSA4eQA8g0wVcfuwTTdaXa6kDkOaswujKmwtHQryzCW7KH/TS98oTE7/LilQrkK2XZHmF16udSGuei5vgVlUNTxlx87VpQRMT8zFdnEeTEChVcLJJjNBgrOYfuEP1zWP9uQ9Pkq4H/QR552s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791773434; c=relaxed/simple;
	bh=DuESYfn2dXyOnX86YnesI1+LHh8mpFmQco0fOUP2uA4=;
	h=To:Subject:From:Message-Id:Date; b=m3RDAmqrFGeOWxV/OkSE4mCPAtiVuEqQr8Vk0dSA51e8ikkjJYipLdaBGj58j9DUwixg0S401x++I0TFmKrqFlIGIHPU/o6qx2KQmou7YJpvV29Ds3chfNCA64qayvp53NRtBIuf/dXYYVlz9HL7BwIPO/4GBgcBaI43TbirCxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXPpMKp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXPpMKp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16CAC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791773433;
	bh=DuESYfn2dXyOnX86YnesI1+LHh8mpFmQco0fOUP2uA4=;
	h=To:Subject:From:Date:From;
	b=bXPpMKp+Nsce6mFdnVgA0qjBjlD9Suhw52/0CNo4jeBGvBpNP/wVrOrExVD/PS3gn
	 PCT06AQ+9zvMFPvOcyvT+BFM6SfEv7GT+QUUTZKycyuY5YNO1zUQxF8N9RcrAATVrf
	 5ELRhYWMd95S0lMMLJIkCiuu+lqdwuOr0QrSUPjVHDn/JR23SaWWUpRdadCmP8rCmp
	 1bFrrK4MRoA5oiVqQ8VYWf4F7gQPrEPJbVKzbCRYjBWV8F5IpMFwPEowhmtNukRHHS
	 3K2QtICHOGi9cDsz52q3MlBgWRozkzseBeO00lmLOVFDcv0UnNNwEJ/unoyI17Ws3O
	 dXOEVGgXUb/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6A4CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177343368.28936.18345494792803912391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d620bcdb1524ebff0a1fde1f759bcf177bb951182befcb710800f0cc33238a25
Date: Mon, 12 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791773433
