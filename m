Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DB6364BE
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726549554; cv=none; b=X/z893EGJbAMuhFPU7kISql5TfZmAJHi+WIWr9xkcyC6/U9XOKf1SeHX+CtGw1CR8kq34sPLIbM8lxvxd9VPHTqb5QmTVBRWYUwQeydUyZ14n614SXRGLkDhBTRUrHVs3G3Tr5zbkIAVus88anG1sV8OyDGCrghqekWxeiKAu9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726549554; c=relaxed/simple;
	bh=uvvO+C684F0QYweTrPfnCa/G2cZRxFD3mqesps+tWKA=;
	h=To:Subject:From:Message-Id:Date; b=TLj5wrhPvTFwqdTAkKfQuh+jWPlp+Fwh8y4IRyeUT11nLITyLBL2AbIeQEn0Sb6Im/V6LJn4MJ64jo3YL5+vwMo3sSbT6T+d/+GKYcnKhKEUyGIBm5rqJqvLD3Yjpz61KkzNfDM7DVVPl7laeC91LxXPvuFi+GZIlBiUh6Y1VDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sP4NLiE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sP4NLiE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2940C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726549553;
	bh=uvvO+C684F0QYweTrPfnCa/G2cZRxFD3mqesps+tWKA=;
	h=To:Subject:From:Date:From;
	b=sP4NLiE1UtuMYmYCQ7LRO070nBCCjEakTGBQGgTjh6jUoeatIGRRVhHf+1MMQruci
	 KMkSXMQogUHVt0hBLwzOFYyOV7hERjRfvwuyO54vbIVPFaoHwH9imXsVio5wTxoWWZ
	 Vnr+GMWQAIVVhre6jVixvKzI20ANhfM4HoXVMPrpQDr1FqlrTZ48LvtZyswUChCcZt
	 miTFr8gKUc4h5NYWMMtlTU7T4Z1Tg9eHBJJfQ1i3p2ltZXCy/EDr0mY+r3Qhge++m3
	 Vf97946yjOI84R34EZj58x2o8NE54Fv+AWC7AWmcjHX4wu2gu0xkE87lY9WE8UxJe5
	 xCSgsdK/Corcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFC1C3ABD7
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172654955361.27809.9259865782650344706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5056754016223809cb1accf5ed7d4faa3ecdee4b70d82c3289f530302032b1ed
Date: Tue, 17 Sep 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726549553
