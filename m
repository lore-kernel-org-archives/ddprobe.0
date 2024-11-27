Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335E5A23
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732667754; cv=none; b=IJtzbSniam/oVokUVfxwuWwl0wKrcUBsjzJEDjmjawZqdeS9txXQU/Hp8zeQ1NNaJLHSvoUziELvRJqApDLpvhQ/l0q4DaJUWhGi+MUh+nF78CH4d+P2mfhiWDZmv11KqGLsGrEYpH7zHWC8w/UYkhWZJN0yu9yTfSAoZPfkn30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732667754; c=relaxed/simple;
	bh=4NRi9QNAsWqp/yILt8/BjAjPauenyBMjXziDPZMCz2s=;
	h=To:Subject:From:Message-Id:Date; b=B0wnKaBZvJq9BxpMpLA7yXT/w6sgwvIeAB73oQgeHDlp20Rk7EwBw4UOEgrPA9VnIanmWthkg/XKXKY4iHapiP7c2M0IIBiEbd40bQvcTcZhltx4iaX0zx3MONMNyUVKFwo8iHxVte83lXXrblEj4mK806cmTEtrGJAR81WKhlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQA59Cjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQA59Cjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9CDC4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732667753;
	bh=4NRi9QNAsWqp/yILt8/BjAjPauenyBMjXziDPZMCz2s=;
	h=To:Subject:From:Date:From;
	b=eQA59CjoaqI5QTNvwlIRcJ3Suwc6w9nPsvoR/6eSynrfVsrFWNUr56tyVpZAPHAGG
	 vCm7nNz7bnuDRW9YshGJwCW0aUc7YYH05/mCRGtHqzMgjfEHfZXJbzarhflXB4iEoD
	 s4YgHtuxbJLEMuKGIAkSZ0eLIwKK5MHMiAVmcinTNZj4SkfMOWHc/wqdcEMn803Ow+
	 36OttEg+R4z5Smde4R4hmJEKoeZJWMqC/pBZEVSo8/ucKAyQG7Ry+zeatr3x2IGdr1
	 NSCqKWon/5IEi/fgp7KcpNFpoGp7mXTG80oNLaCBCTfSojaKVUOWWFbMqDF+b8JKVX
	 PL+dz08pXReZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4C9D66B9D
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173266775360.14426.17333060408228467487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8babab495d32c80fa82d6e91009de53e997535fed7e66b60c1607faf94a8b45e
Date: Wed, 27 Nov 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732667753
