Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6401A4078F1
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790890234; cv=none; b=Rf/N9OKz1QxvRETsgiF4adNvsqEKA565ZI41IOj/1dNvx8mWTIPJ7l2DY3rxm+v2CNqury8qUgQGv5TzvwuM0KDYAKkf1jOY8RZSZDocitAgnGxVtaJK3Qy3Th8P2K3phKUd4NTxdZDhrsVnfLtm9rgKwchzB2mlq1zVyXY0574=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790890234; c=relaxed/simple;
	bh=UjWH0iCFNjTDQznE8LTVeZ+snXvola6EvQBWE0bTVBo=;
	h=To:Subject:From:Message-Id:Date; b=N+SZWWqixc8Ck2Att6+PhPlEDJKdh2gEd0TY5CM8pk4doXcMbSlGw/1X5zPrfQlm04/t0ximsxllvItq+2/PPm7ZmhQBujlSS+NwmTRn6y5keC68G2jGTAbnRjs8HkAsZXlDYJDzwHXZXU60eYW21iFzxMZKnhgTCzDCTkSB7w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvYtHg52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvYtHg52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6B2C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790890233;
	bh=UjWH0iCFNjTDQznE8LTVeZ+snXvola6EvQBWE0bTVBo=;
	h=To:Subject:From:Date:From;
	b=uvYtHg520ZFnLszq1Kkf+oeIsw/1EsPpOKmIAjjffjVpFQRMKoc/Rca4qyUe4ZWeG
	 cRrB1k+AqPZgzQSl0CdOp1XsRDg9yOV6VxbSyEdgOtsRrQNJiK71nj25QC50RSaXl5
	 r8RDqse/BsU6r6j4i6UU3zIlwknPcm5kVfHWzCo0Ch4PP4DzYUrnnvu1yt4gJcU3J5
	 6ycC0UjBK8HBf4HeccFW07//eOIDz1PW8oV8E7PcXwWR3bPZ6STAxruPhmVw/uvBr5
	 Hfbbbd38SKGtbc71vst829qNoOteFgVfQweeosAEcJUjExOut7B6dGgj+HnLK0bgye
	 Y+aaSCtadnZyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACD9CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089023369.22991.9313021766116160887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f202e0b9ed98794afb4bdb57c305a9e67d28e9b3bd228135e6bf5f307b0e9952
Date: Thu, 01 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790890233
