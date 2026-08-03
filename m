Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BCB432BDC
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785784834; cv=none; b=KRAX5pwKqyLIxJ9nLzHmBvuA25a21ZjAVXp6YcotCYp83CB2Y/8L6jv5v92IJ0STCRckbjMih4w/fGLMJBWWfbooEZ/FeWkAdqdi7Y36I32Ar+1DOe8rHtO6HqSvvcuQ+jSp/mLRZwwqxGaBBYHVrJTaRWufEvJ6THXHbsxZajs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785784834; c=relaxed/simple;
	bh=X9mjAeSVe8ue5Qb20vNgK31PgW1IShNyy1PYCN6RyDM=;
	h=To:Subject:From:Message-Id:Date; b=I1IpQDyr/nfRfNWEOOmLuF0a0QxIenOk1mDR39c5TQD65180liYB91vXo8E4R2/uFxArWdcDuhS/GUnOfq6qNMa3YcDAt1wDy9fMc2+k3LrCTBz9SZzWzNhmlX2YpU6ZRtrBQFWqvDjVuTXb9hG4UA6CjVGkO6yHRL4Hj3FZqoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0i4hxpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0i4hxpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70B8C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785784833;
	bh=X9mjAeSVe8ue5Qb20vNgK31PgW1IShNyy1PYCN6RyDM=;
	h=To:Subject:From:Date:From;
	b=i0i4hxpGL3beBb04O9zoNGJ9ibMJmU/k4U/mdvNtC4AF+I3zoaycVwSEi0mvL1Uc8
	 hWSxHieXJr3f8nk1RzwagDH1UclcJjKxDBLqGD0qNEDoilRE/4bVa5zxGeUtbX0r5n
	 z5H2ObzBW5esxgY8tiTHe41vZHagt9rzKa+wP0jmJV6YpoTDxNVToy/vuPkuX642/S
	 dFBJtuLJ1zgRMqnsZO1VW4WGBOXsbdE3Vntf5QdGLN/EDTVeJoUpokY4CvOCp0YCnc
	 TO7GB3e/XadQ8w73hHJdp630g7Wc8UV0PBZKxqt14s3xKLwvEb1Fses9aFnvv2yycL
	 qtUTK7W9s7+AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC467C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578483369.4802.14472616555882042169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ad5f273bf1ad3cc338a65ec8702e3ab87e9afef1260095bb9e207cd8166f6d
Date: Mon, 03 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785784833
