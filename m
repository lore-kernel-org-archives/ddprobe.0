Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4EA3446A3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782395854; cv=none; b=bt6HObRLLzaeey7fROrk1FQ6u1aHvy7VlUpQH1cUs2fQxq0mCOCTZZ5Jnf7nuJWayD2ZUIprTqo6Ft0wxGSRm+WK+Al4eQxCALbmAKpINJC2eyMnC+imG+f+BPeUC81zt1o0tB7oDdtKglX8DlgdCzP/x2mvRjnRhkY5XYWvxpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782395854; c=relaxed/simple;
	bh=HZd2ky76NbgzDdmLXjt0hefq7aN4Pfvmtr3k6GciZfQ=;
	h=To:Subject:From:Message-Id:Date; b=t9Ik/eEGPBJSODRZvOkfCatXTuqyFH5+o7oRvrINps5tLS4CNjsjHlwJAVUWItueArCg746OgN7p6lrH9aKsSkIKVrg/Ll5woifZbXEXFnOk/VQzXj6z/o22UySPjcaJ2GqFCnUpNePQz/AG6aaUbDDHOk1fZh4L9QcxMW0MFjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0gnl+a1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0gnl+a1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D91C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782395853;
	bh=HZd2ky76NbgzDdmLXjt0hefq7aN4Pfvmtr3k6GciZfQ=;
	h=To:Subject:From:Date:From;
	b=P0gnl+a1p3l/w8Az+G7NZ3IZ1ZmA9kUv7n7GOx0ZoSw/MaujvDJkFdaG2E00DIfih
	 2X0lxCxzm9qSkiZ8Yt1amNi/lZRkPXFSKbrQS+p+qqjgpzlC9+iebIOHO8L4o9Stbl
	 YsIpMIllR9VoO7JtV9TRKAGwwkFjaj001SDUN6vubqg9qZaCM0+nCnrVvxM+dkajSS
	 53hMbSFQQz9CcGB/s2uqw/PorHEBlwcUUSJN6/X0Fw6Y3O4W2tzJ7IDp48ZQ65k5wL
	 tLO2sJe2Gf2Wj3oiokBoNEkTP+DOuk6ME7P48PRLN5mMplNXmrYt7wUDdqaYwPoXsf
	 0F7izNv6wIzDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9FDCDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239585369.414.5801127630172427552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec5bb40935f61470fa1e5cbc92a92856172614c14f7d0395b64f3eb4a3a445ca
Date: Thu, 25 Jun 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782395853
