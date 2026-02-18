Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3855D2E6CB8
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771390494; cv=none; b=oClezcHac0cUDE4uHvZu3KyHMfaF5eFS2G65n2LWzsI6oPw8avDmKkuVHQCOkVCkWHzddtQ/PZMpLi680X5nJWWjGKSgf7A/2s/jqK3A0fxbvun/KSeu+CaN1te0lWpRhbK/b9a2Fs+L7EJMlNQKEPaUbxS6qEIooMyJokrcZLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771390494; c=relaxed/simple;
	bh=p0HuAOdp8WiL8XrZw254hRCB4kZk+3m8vFpUjRSDBek=;
	h=To:Subject:From:Message-Id:Date; b=SMjwTLH+K9uZhbtYCgFYvRUiZYE7Ec7P7Rty8bOHEZBbtl1DTu0fYFPIV5C7KhHf5opVHOuraJz6PS4B/sjeQh8TTlMW8TgvRive7lgexDagqpI9hR2FmLuyA29SM7TZ0DF/86NZDH0UeBoZvXDkMfl+vqZnBx7w1uz1oFSyb+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+xIFhD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+xIFhD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BF5C19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771390493;
	bh=p0HuAOdp8WiL8XrZw254hRCB4kZk+3m8vFpUjRSDBek=;
	h=To:Subject:From:Date:From;
	b=i+xIFhD/SamGndGrz/jACyqP8u8FDntCnXE4canPZ89bB1/ZYPt2GdJ2okTlSFTjR
	 g6n2HH8Qfi/jPqq4Fia3fa/X3z8TH9eSrp4yc8Y+r3n9/mn6Fl9TGzVFn2O0l1lgn8
	 0xUG8YAvOwWTbEYP2tPGdusYt3YpG0SlMWCWo4QfOHUIyoym3eE9GT0meKtj3Qpkxo
	 rSUvMT+i1Xw+jTfKG8tZDqybFnx+VZOhi1MyI8mwaF4GkLm8RwUW7qr769EzUbT7mY
	 sCwYWRYAR9OWV27zNNjX4HIcR4NFCDAKuwjvXuccGwp+BEXvt9EQRPDdyJDuzxqjx9
	 GIjXMei6Zt/Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDFAE9A04A
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139049364.3240.5621078455645730778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03876ef507b3ce1917a649b850c77f01fa16e79cd355554c234d9384bf060e30
Date: Wed, 18 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771390493
