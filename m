Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A12305E10
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778180254; cv=none; b=dlfGBq5H5sOIw0w5LsJNxGsHh21EYwzTbTZiVoNz+vPZTjSlYfCk/kLB5Y9o+chbBn1Ne6xgXR9F91uWVctUrLCG7xb7nVbehaP1AI+XT3g6soTUs31LIb6brjWGI2lJ9HxUtihRhPyjinpzxaoK1Y+VU7VzsUhCHteoVk2RP2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778180254; c=relaxed/simple;
	bh=LlwEjAXlSMs7OW41mRKinUa42JtKF5OiNK3DoH8Qiik=;
	h=To:Subject:From:Message-Id:Date; b=VJX0qrP79HnJLRWTH9qr7eaMvqZ4OSDXH/lLtqXBJ4ZoaLyqpM9Ahi5CJocu2IuWkg83HGcRmRkp04zrn9ssFtNybufBqGCVNBhQMPXvDR/+rWAlEAlsI08VK2I9o9WkyEbX/rTv9TnqsYGbltu/sy5ajTHZHe73CnaVg/y/c7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rge8OnRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rge8OnRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9873C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778180253;
	bh=LlwEjAXlSMs7OW41mRKinUa42JtKF5OiNK3DoH8Qiik=;
	h=To:Subject:From:Date:From;
	b=Rge8OnRNC2kR9+1M9kuBETxSHddpy62k42jeXJIH1YYca1KlnzlxCJxzsSSXMdTPR
	 0jPyY4DpgafsfCTcgtD5Zw/W3UV7eErxUQC2BkJNWPTKs5ASJfGPEsc7ie9pM0HgJb
	 g2F5AbQ2uzIKi/V9+stdbQnj4qFMlbPmMQOfrtwxoPWK+eIz/bFl20oJVYE8uYpEK2
	 OkaqZ++xL2lIxe+CdIGiOE82+ixLXbxGl28O7/TwRhU85tfsVpct0ZhrXKhWRAS+wZ
	 hjstMqigDdEAMWpdm1E7z0PFTryBwwgceqb3B8EwRlVpd6542+eDt+v+dNNjlbkfBu
	 YGtgjQ0hetXwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA64BCD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818025368.22521.11515770267912061241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f04db1cffaa4e77686bd13abe62a437ad3a2885c11535ae1d6f234f24c09570
Date: Thu, 07 May 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778180253
