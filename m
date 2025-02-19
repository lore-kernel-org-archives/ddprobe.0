Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF802B9AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739939334; cv=none; b=dM19AyMR0uLWrjTKuGEM0OM02mVjj8CbVoh1lzZlYvDDpOoWM4XQxehHeGSpraiwryFVK/12oYQxJ01yySL4QvUDwzGXTlDI8JP8a2SAw51luKf/ngfkBIKNyCltQw3JzExb0WOTv/LK9NfXi711YZFvoALijdMkd/g8dRsD/Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739939334; c=relaxed/simple;
	bh=B6fdydXHBKkR4Eogho5zunF2rkfLhuLqCSQz/Wrcnfs=;
	h=To:Subject:From:Message-Id:Date; b=XS0Zvb10pa8a2nOrRsHk5It7FMR8S5o7DuJwpmxAZPGWsIBiq+0gl4k1ikWsZy+IPQ6urRv5wdSMw7Z5d2e4h8mFBSSZ6/zy4H9vPz423C1NkFYbSON0C2D9pCvBFac27vknaA2t6HSaBqKShdAu+mEjSDKJKTi3y4ud8RQzmD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaYqvg2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaYqvg2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20F4C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739939333;
	bh=B6fdydXHBKkR4Eogho5zunF2rkfLhuLqCSQz/Wrcnfs=;
	h=To:Subject:From:Date:From;
	b=kaYqvg2MkkWYXhFpd5fy9cqFlwDI7WZ5MB4YipkSnmBhIBKok5lPOYWx68zRAYjqJ
	 kdBDb8gKOuGx4sd1nWS4vfKKZPPAnlK3Agm0bbQClSC87PFdTBgyg8Ps3kjI7GoRtB
	 8kSmw3ryZkWcwOV4xvNcAptaNNdsMvvG9mGMZOYl33izqpOh1pRww+qOa9VysLMCym
	 cHUB8R5Xa4Uk1Wba6tE0pAQVmxBMHlaUzWRb1GYSB7QnTbfDkyJ1KZyzbgJBanFzNT
	 NIh7WvsGprf84jUIpdLzBMtG3oDG0MOm3sWKaflUJ96FaWV31M7ykAb6MBWyCL+y+x
	 It2+tfkczF9cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB13DC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173993933365.27832.1196867616951950068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba54254e0c6cf8ec0d0ccd73f657905e9c86c74c64143607f339596fd4d0da04
Date: Wed, 19 Feb 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739939333
