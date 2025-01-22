Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456EA20FA96
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737549354; cv=none; b=ATaMDnNTlBvdA2/Fn+FshVHpf36NhyG/zwSl95mFHsLuIDjItO0Vn8lYnYkfbxvUA6t10An/FgH1HFCAHNFHWqGdUs8cGHGjFx+PWidUcleOILcDUUeMM+ZATJWqCBmFl2QJt51yogSCmnHwvPbejO4ybs+HhQHBByniaBE8M2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737549354; c=relaxed/simple;
	bh=BaJoqkrcr/QKlEeuP92NJ7DQ32llvujAZtNTR3y/N4s=;
	h=To:Subject:From:Message-Id:Date; b=jhTYXcCZ5fEyU67G4s5FWywGB77o4pZVxC7dyETYjHSNfBbkjiiRLu7sg92+Rf/AC81nBE/3iPBu25ZNTa2yxnINYNUJXAj0ZzjlFlnowdIx2nK0o7RWNbUxTO+rv0spzyXX2KOBlqphCzkJiSHoG2uE+mv1UY/xYJwiGSpeP5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axPJpjiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axPJpjiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6C4C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737549353;
	bh=BaJoqkrcr/QKlEeuP92NJ7DQ32llvujAZtNTR3y/N4s=;
	h=To:Subject:From:Date:From;
	b=axPJpjizxUJnPMmQ+tzf8VONTJ6rY6jvnUePNzpu4Jof9f3d4hOJD2qGpd8w/fkUG
	 VeRd59pUe0E5HmyRxQ8yBaIYhgyyVUgDz8qdNvjPFyC5Aa2DKmBJl0kW5rvdUarsgo
	 uOfKitZs57W7IqPb/9vAkbtK2bfFypewkbAuY1G2IhyAI5j65Ai5iFD0IfZ2GdU/60
	 8gFQ/TA0wBpculzkFSvLaJwmQ7jnqJ4Fw6AUUdt8Thxd1sNXjO1BPS60/qlazPt/A+
	 dKcb6f0i2eYyd9hG/azAIu/0xoDGUt/UexVEFpGN6+gHGbRy/2t7+6M72x206WBRxg
	 t6WyQ9cpMlXIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A56C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754935359.1231.13099316205699405471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f0eef4a4bd826e7ec4bf5b273e0cafe3c7c9d21e65d028f27a23f723dd4d96
Date: Wed, 22 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737549353
