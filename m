Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2260228DD0
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753692594; cv=none; b=iIOtE7Mipzdcer+hYpUHm0Dd2lC7gcD0qgsumycEhjVqi1oISGMaqouvJvmRAkz+AmP1zt/Pk+NdNxXM4Y7KLmFd6qYlN658ri4S4ARTPSIeGzGKTR0Zb74ip5hoWNVPCrrtw35C/b2pq9jTrsAE2d2DAdYLcJAN7xFTW4wDMrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753692594; c=relaxed/simple;
	bh=ayzlEtfSmZUBmu3rLklCcZnympj/UQJn+Gusebv4mzU=;
	h=To:Subject:From:Message-Id:Date; b=qbGzloYFf+7jqmQlMMNk1pn7T0twec3tVYX8Znt3TIcH5el/M0kWRLCyrUbmLK9kj4e2LjxZh1mVDKI9jio8rlU8EwHdeXerfx4XhujSrAUFnuz88HHjpjFEz0e4qMGbt1wxGqqPczlaW5PF/lToG3YmQx0x4UKPbm0O5P9FBc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jL/8suAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jL/8suAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10BDC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753692593;
	bh=ayzlEtfSmZUBmu3rLklCcZnympj/UQJn+Gusebv4mzU=;
	h=To:Subject:From:Date:From;
	b=jL/8suAc4cAr9PmDb94TBhparYthj1XsivWzLksyV7TfZaJsCcr7NzoBQr4pO1CUR
	 nfC4eQngpdzX5vFDumikP+Wr1gndn+aNeEndVXB1d4U1m8SxpKu6rXv0u4FcFk1GYM
	 D7LyjrD2p1tGLSJ86tVSpJHKfnbtMKEM4GLZF9s1LiFL1CO6BB6krKWNE4NISJJq3s
	 DTnqjgeAxurVsmv+l4XIaYOkDpUaAdwiFRf1TzasVUPhk0mOF2NWf3w8Wma7CeQDqt
	 oSZPKBqW2geFQu/1NrIBRfQMNZiJXbx1ZKgC8Dyg9EYx3s7fLcVT1E0gCMyvW16Ab7
	 xM1uHK/bHEzIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00FC83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369259357.5216.477537179688639187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1792f24b1978659d4bc6182c8a0cd6f9ede7a74ecd6ec57676b1d21a4a50f80b
Date: Mon, 28 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753692593
