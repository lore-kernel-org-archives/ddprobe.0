Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5E72114
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753442395; cv=none; b=KUhFXsI0bK4x7TEIcJNW6BZ0BrOTBf/aIIiAufrmXn+9LoXJwUEU2xPYBFFR/EJvS/E3CgieXP3oWIjtTwX+A/hxyMFGX6cUhYLDh/BiAN02lZFjLZIKoBLppF+sao0fXdi7dz2WEKvoB6ZJjbYLwksyaXSQQMXIpNTm/T37Hnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753442395; c=relaxed/simple;
	bh=dZKXDfHwi9t+YMQMnHpDjfdARQtloKsslriZuiBNS/k=;
	h=To:Subject:From:Message-Id:Date; b=aXtmdLywip0qGaSLXCSb2WtrCCgzaq2Cy/YcEKjwtBM34+CtHPQtGpTA7N7rqhvwlNX341+J8+Lg+VJgI9kma2F+bimXirqeNxToAvHh1Pd2UFd0bUcnyKItQ8KGChZAm7fB7t4Rtx10ftXXez+ZrnKjcJUF8BJKG/L9IBxPdm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyFThmLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyFThmLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F90EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753442393;
	bh=dZKXDfHwi9t+YMQMnHpDjfdARQtloKsslriZuiBNS/k=;
	h=To:Subject:From:Date:From;
	b=RyFThmLOnyybcNPPcuR//V2YCs3twt/1T0Dbr0IAXxxtVB5xqgTHCT/pycwYUKdui
	 /i4IQE4s4AOU6OsSk4jh3aoliv4JdT/HLXG2pu4QNK2oY/44/5PJLT/T7PxgqMiJih
	 ZlEsoKRybgbjjZNPQ7qtuEBijpwGLChJRO8KLwMZti8ZUmJ0C4jChgwbB9WLKJi5Za
	 GaNINH8IF0qLV87Gg95/326lE4UVLVRlg4607VCxYcPk81F4xZo5NvYb3a4lDo9K3Y
	 ebVZUUuE6eRgiF1LdaB3pG11Wcw23kYK2X9nPgq+3DUwboWhEgwh1xcrh2UQxVCKaK
	 JImaXaYhdlUDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91737C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344239357.5825.2237886306948071224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56baaba9dffe7e26b067e2ef7310b8aa250e937579251ad88b33e796d1494885
Date: Fri, 25 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753442393
