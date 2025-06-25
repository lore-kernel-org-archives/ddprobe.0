Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2B02F1FFD
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750895395; cv=none; b=PY0Z2+RWz6vpgY/I1QPJ9795AniLqNGmFNZQcWKoNAEKQ7dyVPyGEPz8ZcVZeike/bgUQr+t6d/dphMlrOBpHn64IWa3tf6zcpHqKT9O0epy9ACf3zT35bFwTpSAMvNiMfC1zJZ9VHuYQiIrfYSPrgXfs39ZI/kcdM1mBgxgf+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750895395; c=relaxed/simple;
	bh=EeJHt1kIWF2CpNLKAEUDxcAFs5d0aAOwvX0C1U4ZLyo=;
	h=To:Subject:From:Message-Id:Date; b=tFmPXTQDYzvbthf+gl4DIFL15mehgJgpsMT5zVQMlFmhO1FZu82KtspU258fjZlPrFTWXAoZEeCZJLxbWmbzzNHczLH2H19kUiSc1lCv6us9qGaKoj7wHQShyMyts+ML03DasFiJDKR66HGb88D/xrqb+wsiaeuqVbeEMEMnYvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqG0cuYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqG0cuYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3138C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750895394;
	bh=EeJHt1kIWF2CpNLKAEUDxcAFs5d0aAOwvX0C1U4ZLyo=;
	h=To:Subject:From:Date:From;
	b=cqG0cuYxu2hTSxt8yjwDLWSlouvJ9qdv1imW/RyPE/PiORb4OZOD4M1FTfkj50Qob
	 +gr2eN0FEXVxAd2bwGwD7PdnWd86R4kwnAUWWEQApgmEEwy4buwEaJzWjSPoOGPNgg
	 j2qL7oRfmHYdmUGpLhlgUEtEsAYStYyIa/pJRkOrSYlna1kIxnKIvM6VSMCjPZKr+C
	 TSr/eKNfywiJ4JD7qFn+hC9diCvw76pp7wmWjlcLAdBWX31Im1U1eT1rMuxww3/9iR
	 RO3jq+buFqYB83JWDfIixljIqpwpt4o68SI0Vkv9rlUlD0vmwRNxAjysIe3GuY7CUr
	 ATdRIPFIULfpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B66C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089539357.26449.13083420716462941521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20600608a2dabdb316e00ef414157531bb9261187d53303f34ae80cd74b52263
Date: Wed, 25 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750895393
