Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B2123C4E9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780451674; cv=none; b=YfQztZ9YSAd7gKR+2DC7M+sUjX000qBu2Wz4JQMlbLkmcCYPfpW3n0+G66yAyERcOOzPAfdfnIctoGpW5oqmskEYZka6JMaYU0Pz+sLrzG0ZnIYUoAk8iplUX5e9r0Dk55roeuWvsD+JQdhTbJXUriYfdwEh+djpj3QjKncOaFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780451674; c=relaxed/simple;
	bh=PJXhcX07EOID4DclruuMrzUh/qbffceEZlUBBE1HbpM=;
	h=To:Subject:From:Message-Id:Date; b=mnAZdkpwQMmMKQw4POLso6NnfVQuXEcfpeKKwhGyeJWwfHmmeGPv5P2lwwbN4ittePud20IbQOjdacNS0uUuS7LdWzG9jeMmcBWsveZJwaufhb49mLWu763kRD/D/WVCZHQZlWA/x+KtYCo1oKpqyxrqNxNmKCL3zk/cUibjxEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inQrA56m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inQrA56m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C070EC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780451673;
	bh=PJXhcX07EOID4DclruuMrzUh/qbffceEZlUBBE1HbpM=;
	h=To:Subject:From:Date:From;
	b=inQrA56mssCHSiTsgQkbq7Xw7DqvoMv6ti4hI02OrEZId194DnlgmF5QHL1t74H5R
	 FnCY913dgisfmQ8mGlybb2S+ykbiKytYPggx6uxAswaLrC+xnokgSLtac/F6wmSuOn
	 PkjtKDf7Vpu5BEoMTBHcddrWJRliwhcbbzwELJdrIS3R1YeCt9v73HoWdqrjhcKFmN
	 hcLsf+bJd2xNZK1TY7pWSDoMr6/RtxchUcDIu8U288J7u7ZXRoVqCbeCPKhOjWyyfV
	 eE32Ax5d9lJVWTrQe+4H504ybEgocao6Sa148K9uwfl4gknejnsgnbJY3xDCbfD6V8
	 vWxvddgarzSgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A826DCD6E5D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045167368.7436.12992724698094289663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fd09551d1d8f3b8d843f9b87a6a4236a5422d26453d32c29f674a392430f5d
Date: Wed, 03 Jun 2026 01:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780451673
