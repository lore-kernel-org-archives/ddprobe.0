Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8262BE7AC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785115834; cv=none; b=p5P25zC8d2r3Xf4Rly1lb6WD75Q/gpMPMYu+VcdJNUoEuC6OT1/wwVddlOTyp3IfaNnoPXp3d2WMLMvI+9q5CH8c/8Kfjn0Ojh5dFrk0fibeAXEFgU0L1beG6+4llzxmXiDYKHMkHj6MXNQxadtK18w63K6LUXtL6BxPp3WxK+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785115834; c=relaxed/simple;
	bh=5AlSzBKs64FGpUHSt2hGCXKGfLDs24wzFGKSvQhcOQg=;
	h=To:Subject:From:Message-Id:Date; b=T2Knj2fJ/w9B6eYtOElMDRMPOJhCTBgn80xCfFnEMlLRcRt9X6ZVSpn5Cmvku7OZGflgb8F42BI7Z2v47X9t3jNpBDxm3JXgC9RZ+1WNqfn1AVWzJsKYD1b+ZJV3lhHFDCDKiWgcaqu4/bNoptzpIYsTkdG09Wt6Vi6hac6YooY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF4CtztF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF4CtztF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5DAC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785115833;
	bh=5AlSzBKs64FGpUHSt2hGCXKGfLDs24wzFGKSvQhcOQg=;
	h=To:Subject:From:Date:From;
	b=LF4CtztFXJf7KLu6/WRDeVcw8eSlPgpCb30me4/LykYClJobkzGq5MmYRO+CJQzA7
	 1PCgVVB1lbCrbiWSOUDHK5o+Z6f+7ry3MFKE6BAgHknyErSPOLoX2Q+0inUgEplc05
	 osTBEyg6yZU/0kHUqufvn6kQ/MTh1tDuWpwJVbmdF7KSBFGaK8rQyx2dGPC63MQ/u/
	 Pbpfj8U3Ns2wIZD6frStLGCydIeh2Oioge7wHao13xbziohp7ba9vt+3hVUxKy0+OU
	 lN/tZKObUsehqWxaivk9lCfMby9mURxo1wchjQBJP1Q0Kt94mpF/viSgwdbqeSVRly
	 qBI3+8ih+wgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D38C53200
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511583368.29897.7614919633525883718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59dc5f34e34b00010b939d86518a8149ac2953182f4a3e259e5a53fd743732c4
Date: Mon, 27 Jul 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785115833
