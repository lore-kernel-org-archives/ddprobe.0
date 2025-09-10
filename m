Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D772DE6E8
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757484594; cv=none; b=DwvMCbLYzwB4L5J68q3eRSd7QtjKRZE/N1DrRxypXDplxRPYwQobPUiN2sY6VGTe15xBr+F0fqTs6Fd8XFOU1ZbOah7IuVNyl8HqIxIbI62uiOIwxamW6Vr9I9PYAiHsYgFLFvo5JiXcc4c2vY2Dgb2rp7PKGM8ECePEcXOm03Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757484594; c=relaxed/simple;
	bh=bRO3p8anmQIVzMlkZvSf7alTRqjlB94E/8x5GTMqSH0=;
	h=To:Subject:From:Message-Id:Date; b=VlGtuw+Nsv3N7vxfL9Aa/LC8RNvSKGPPR8VxARv9+Advl7JN3p4ByIHEJ07sQc2S/cXt2cXoT4Is66O+UU3FYYKIhlfSMyJcUlhBUJJPgLIrqZi4Uz3y5g7YpIxS2KaBlczfnmi/Yt7lRAvj9Ixg3SU/eqSXGVoGysUdES2oHGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8Ff6zHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8Ff6zHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1D2C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757484593;
	bh=bRO3p8anmQIVzMlkZvSf7alTRqjlB94E/8x5GTMqSH0=;
	h=To:Subject:From:Date:From;
	b=G8Ff6zHT2+HhS+Jre0iWRp0lVCab7+37YCgo+FwbZ7BjNSKOdkKrY/N5csMKI/cpU
	 pbmMwn23mSgW+jXDvmVEgtGGrQGxSFnPdNGeQPmJqSDAmyXFBW1p4riZgSh1w3qgDz
	 yPtVKJUVDnHd9LPAn7JF9Z0h8L8vBMnsLECx0MAPNuzeE8IlguDbIksmOQYZqi3s49
	 QQyYmHuqc7+dInyu8vGWpULXf+J6jCFqaSfg6vGZC7PI+FKKpdv7r0h+7N8Mr5CdBz
	 AiNiv7WMIKT4zkpzU3HWxXPpeodiCloaKZR0QUS9LyqVB0vIEvFS+slfnDhGsuH0yG
	 Fd67SX19+iF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E067CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748459357.29436.4455117571813256067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c088185ed4b7e304be116e5b1a810547188e9ab38f3897fc9533e09753c8bde
Date: Wed, 10 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757484593
