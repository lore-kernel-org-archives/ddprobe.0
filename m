Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BE1371D1F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782078994; cv=none; b=X7cJN76A+dgZB7wtqlvCVTA2g0hi2X5wDJcYFDMxLb1NTFo12BgWurayWfS/syPRthP0vUm1067oXLZ47wiXuXxp4rUByvQSA4bCiDZ/+2FAy4HKCYm644vs5jjCWmEgGwzzi9jQNHstdqP0dg+aIgcLnpL9HKLxPdiB7Y34P+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782078994; c=relaxed/simple;
	bh=B/baIzNl4jk8DxKlXaZAZ5tejrfrnWcOvtV4I0Bf3xM=;
	h=To:Subject:From:Message-Id:Date; b=jMQInAoJ6fB0/iWTGDNUUgn8tYowdF6M36X8THOusDyXnVkrz0ZCfBgv6TZkJPRkYhm6Q69xvepajx6ZFLUAjM1wfp0HBdhi1jlCpPmVrJxW7kE/BcMn9f4XMVuRWM9aLcuW42TyAOQAFsPA59GXerhlUw9F9eolbM/QxFRV8w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idyCqrug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idyCqrug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9C0C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782078993;
	bh=B/baIzNl4jk8DxKlXaZAZ5tejrfrnWcOvtV4I0Bf3xM=;
	h=To:Subject:From:Date:From;
	b=idyCqrugwqSdtObREW/yMMz3g7uFX7akkFmwp2yojYLvgaXKaq2tcumh5mCwICyI3
	 AFj6SVbARa+IfMhV6EicynqKh+lagu5UCxgeBs8AOP3AdVTjWf6VMtzAI72gNd8qIZ
	 zHZO2QwL5DiuHbg6HtQIEiKSqQF/yDo6t/BvkEr8LKG3nDzo6yKDZ5ZAAlQQjfZ1QE
	 urfvSruRDVFz3yJsl5n+fbaoMuJYgT8+W4B1AaMXDTqyaUiDgc8pK+RKJ9zHK2Q0Tu
	 csteWy7tHFN6WyZHtcrtcIWouBTUc6qZAHwPgSNbcCoNuul8JNS9EaAfeDZVMh6i/z
	 IF5bdXrgzQ29g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF65FCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207899368.24896.13957385331951411290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896370ee189fc7ed43baad3b1bfac3d07c002cae9233a4ffecbe9cef4041f9f3
Date: Sun, 21 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782078993
