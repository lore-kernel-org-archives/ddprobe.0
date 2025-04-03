Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41D7A933
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743649193; cv=none; b=gz8qpvqz4mMZKZ2JNQpkyfml7GOrtrv17RnO/MVf5nGNtm0cMlKr0/OdtRfhMEw4HR4WcwuSDMbPvr2k2Pm5Zjf9rjdiyijK6/zFW0/huzFeppNrR8U/feZgF3SRs+Wz3lDsMj9wLGswp/Gb+fXu+nDKMXPqkV19W3s1uUXtS94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743649193; c=relaxed/simple;
	bh=/W2j522WRsUboIzNpJEeo6gEMRm0LEmoycfWnn75bX8=;
	h=To:Subject:From:Message-Id:Date; b=UXFEHrbJqAoHnKUrpgnfMrpuHsGaLTH5YrOo8SsH5ORQ7FKrmjKGbbTvzEENUmNDCIqlXA00Cn8y2xxxENJmrMat14HKtHayxKDAlITfb0RH5joxXXmN4zNcsiVUrP9mezzB2AdLRsoinurtf/mmao3fi4HZI5BEc/wkyEuYwJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSEw0hJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSEw0hJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08DFC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743649193;
	bh=/W2j522WRsUboIzNpJEeo6gEMRm0LEmoycfWnn75bX8=;
	h=To:Subject:From:Date:From;
	b=iSEw0hJTFg/cI0TEZ/SvNzvayjf9rciAn3QsJLl9kLuLJq3pgA5TpBUYYreTIxXxq
	 BPXvad9vWitpcsFLLZ6Ds0I1zCovd/HUqGX1Y21ctDu60qsfwPtvYmfrh59O01w5KH
	 9jkX+8dte2790vNSCPN6/Cx1JP081Hy0+b1OQunBdjzQQCiBblVnSF0q9SHjxofUXK
	 X1SNlokgKUTJyC51gZJRBcCUUFgTJcFa4y9l+2Y3xFqt+OfVHNIVjymCnT5TKCGlrl
	 GxJjrzULvu2ZTbEMgk44DQgOHaKFc2ZZ7ChYReT3nntvBygw/HRTmvE/9SerFOAjFS
	 TwFalNoPbSiHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD21C36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364919362.7464.4367436455337805749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ce6e93683f2f0f6590f3132390775f3a8b4b528fc542e0bf9df7153740ba11
Date: Thu, 03 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743649193
