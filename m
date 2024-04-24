Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E7D16F0E8
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713999083; cv=none; b=o6M1Vzcdy1M9Spa+zbbGjvds2TR9h33JmsSrJXIaR9dmhpJhJx2zWEoGVf89UMU3Y2lVzCoXkPre5DPDEuNaR8tJUyivP1aFk++fvH5NmIEnXmEVhflPZ+ByY3CUDROhus1bDcZpdqlu/ERi9JbS950/pgArAgLF+oJSNMfaKbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713999083; c=relaxed/simple;
	bh=KMak/QDAGFl+14SoYT5L8J+87oPspdFJJHFmcxrfc/U=;
	h=To:Subject:From:Message-Id:Date; b=Y8Oky97JXAip1umn7RkUrTTyePeMxWE4KfcOnViIqO2fONnEdXBrBhCBrEnBWTCdq9UfWuL/flR0jOtMIpPH++erEOPuZs9RprzPQ7Fff2DFU3h4yiKeV0dbLybRR6m36cq9jOiUolyZZ5H89uEV70Z6ueNaza6I8R6xbpPA9jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHyLb65y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHyLb65y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D45C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713999082;
	bh=KMak/QDAGFl+14SoYT5L8J+87oPspdFJJHFmcxrfc/U=;
	h=To:Subject:From:Date:From;
	b=uHyLb65ydr+3tszr2n5SMzHJDYgjJNVfUtuxxJEC5UjBDBw6+ZEMwzrAYG3MPTLxd
	 R2mVpBOwP/FxkHBRRMQvS4RRN+NuqYsjpt0Q2XRBnAu0GXk7p74Rbyd0IeP9UHRC4a
	 Yz6Ji0/wLfsSkvuds0cidpYfPc72IwTPUGN+YtiPTLzlr8gA6RhsThCom7H7In2VS2
	 RHjWT0ri3kus8p53bluJfBXFvfVJS8XPmgFroj0gfwRgdN1YBssjxIzDHwf8Ezd0Wd
	 hNp7bIwxW36hSZ/srIi9UvAt9XSWnvtBURiuqOsIMkvU5RF9NAGo+xsCai+5KdNJvl
	 NPhoIDWWk14oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5838C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:51:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171399908279.2619.7795694036927672103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6a9c8b6ac7780fbd6f5fb63ac3457a642489a83fdfb3a2f7ccb4d61609039d
Date: Wed, 24 Apr 2024 22:51:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713999082
