Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2F036C5BB
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770383634; cv=none; b=CgMSlYOeuN73p9KMrAVwbD5/m95stapyjo7GpkZKupmvbEFrs8clkI9uaBkh4n87lUxu/yjLRr3i5hsz3/hncurRegosK3yJlRJs1tZN01ymc7xhve1gPrxXmxPIecNDvb8yQVgRDFabXlGs8ALlQntJkNU9GGahiEU2ZZPtg6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770383634; c=relaxed/simple;
	bh=L83WXnPkDvN5KvzYbfmJltSC3Rf1F2ixb5CEOM2GhEA=;
	h=To:Subject:From:Message-Id:Date; b=fub/bmbmHN5KJJ2Hdixz1wIjIKQ1nQObwIyiplBqOlWHT1UnL7ALCgepruQ5061rq+fiSpCaEpT3nE7MA8FZRor7uyL57WCvpZRMP9xw0l/9IheFT/wDUu3cHOPOPEZpyob4CKTNSEihuaYQo7mqGyTYG8g+C/uXSPwEyV1pZz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHfPZAha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHfPZAha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B450CC19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770383633;
	bh=L83WXnPkDvN5KvzYbfmJltSC3Rf1F2ixb5CEOM2GhEA=;
	h=To:Subject:From:Date:From;
	b=ZHfPZAhauM31XnAk2bhiCqYFPlrsodH3FSEeuZX69oxzttkDXbg7NwxHRZm3LTERT
	 rT+BaLGLMx9q6nuw2baP39WzRtMpkdiLSZvWOkT66d9ak2YPdWZLVKApzHPf5w5T2i
	 KtCBdSVepRM5QpzAjpSSjcZx5qHNlIrUDCSZTb6ePQhT8YvxBJcCG8eiwO/lCD3IU/
	 JK8iuhkZuY8qn+gF8UCrHWIUuvOVCAMivcS2Vki5X3IjwqMLLRE+OmGBTCrZXwI4YX
	 jJOjVPfqLOZfJHsFHET222/IZ1payo4kNmvpnEwd49he1146DP8I3y68Nbf6+oPXJy
	 cflAWhD3EKzEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9327FEE20A1
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038363359.2601.5882483736720376338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4c8a0cb3c0063539c394e996ead12c0b94e1c481d9ddf74511adde55d6392b
Date: Fri, 06 Feb 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770383633
