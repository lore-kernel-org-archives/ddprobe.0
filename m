Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C3417E8E5
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 07:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718524103; cv=none; b=CIA0LtfL+muIjRBhsatUZMAcMXQ6ZUWkiZzKjTbLnm0oMWvcaHowB9swobIx8cBOOuiJUxg2PNm+GjRnvhPU7IUW9xOLTqLmYL0DudOiYpOHwtSgqEcUvS2AYwHGRuq5A07jt9vhZ3P3QlUv1pefWwpq2aRR/OZiOfU3IqCMjKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718524103; c=relaxed/simple;
	bh=zB73c7lMtXJcxIXX2r+774Nd8Ysm7MVojoYvSZPuM7E=;
	h=To:Subject:From:Message-Id:Date; b=Sgz6jG2nj2Kt3gu5COwA8Diyrm9n7HgWukMKfoT7KEciRMXdGkgrkuxsi4pSfVQFqPRx41+mVfq+XobQiRY8Lbee9WNqO2W9z/cG2msoenaArBXJTE3xawPk1wuL4VEP//lWp1trJTQJErHmPZI2ZDKzDBtaWcdniKR6qQpBXvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUr66S6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUr66S6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB59C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 07:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718524102;
	bh=zB73c7lMtXJcxIXX2r+774Nd8Ysm7MVojoYvSZPuM7E=;
	h=To:Subject:From:Date:From;
	b=oUr66S6BGxPENHMOttWrbVCIutth72YhQMYlfk+K9FkaO2UEV7oskoSiwDgYUVzdp
	 scf3r4T94NGhHidM/bUke8LtUikCjYWZora7+/wv4vWL+HhSw5aiyc5kqUYkjxuqAY
	 JYlT/j5WkNhzKFNYFHZxex+lGpOTnPeSsqVFYtqRs7v7VQTcF7y7m+42pEPaCfXXsi
	 Vy74pxNaoYXcCd4GENoGltshJl0QmuRxqCaZZVijhxoNxNxSCdulgFsAyG7eYrLKav
	 9ISKJtnUdYYcFAh3JoFfSG0MrdM5I6Vc7phgmexRtKsAyfb6fzRip3mSWEDyNKHXG3
	 PCeNVTyS9B6wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB2DEC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 07:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171852410280.30058.13562979167516417410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4409e971d5490bdc0f7db364481de2555793ed4697ef2c3b4a1ebe94bbe6bf
Date: Sun, 16 Jun 2024 07:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718524102
