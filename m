Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730BE375F9C
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789458634; cv=none; b=FW7vP3gcFoSnZkJJMLrhGzSpIRYqvcPH5Dvok1Uhs5c0SYx52CmOxfdQ7n51VnZ30cYh49NyqZFx3zrtqbMF7N8fHkNgr16LdykT4qPL7M+KixaSlHwktJJPCpcI1Nfjf087b5+xqmW9ED26tuyzqUfDCwJI+9U+hV1tteuO0to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789458634; c=relaxed/simple;
	bh=seVaIavxft+POiuCP+CObQIlnPp638aIT0BlAr2+2Q8=;
	h=To:Subject:From:Message-Id:Date; b=tZUZtv5x0amLZZ+HmYiTqSlmOHXAk8r4Veolf9izZ9fd4FQT5ntPBo1j5Ear7RnfRUHQjqZhtu5rxyTCo2k5Dt7rvM+2qsWuieSLvwfVs9VzXYUKi54BOTsrMfrS6gWAP1MxUqegUC0JgfgQKGm5yVcR4L9HnCLKiXSP8VpO3Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DES9PXsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DES9PXsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBD7C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789458633;
	bh=seVaIavxft+POiuCP+CObQIlnPp638aIT0BlAr2+2Q8=;
	h=To:Subject:From:Date:From;
	b=DES9PXsRaifCKd3CG42biHB7J0A61SbFn4o5Q7HnB+FfnJSGI/3sE1JUxkIBRYJYl
	 xeSIwLyRHDYyt7FE/BVbx5oA3VO4JAYX1Ws9WJoZyoD1HQ4jtJtWus7mC1OxWNU3fD
	 tjvZmue6rvCc+SFUqZLS1kAtICw817hxdLiMkS5GX29zJ7pT9+DNDAe5Wf7xfuDe0x
	 yFq4B5YhvlfLrg17yoysUiky5Xx4iHvdJ0NelMezB7c6tQLaF7HxWdpOab+kR6jl9A
	 TDK00ZprEZI0M0wHK6AAV0rpq/6mELEaCh6bCIwPC+/gZoZ+B73Sa22hXZ/qifpGkX
	 JUcSCasKO5ZRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB6DC88E73
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945863369.14764.13491046856111791499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e13208e374f8e48cbcdbc5292a3e2fd252166586df0366d01a47e59da31bda
Date: Tue, 15 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789458633
