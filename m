Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D0963E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717460723; cv=none; b=BS7ugM/QVjUlbJ4xwHcE/TERXVarOlu9hFGu3v4pJwvqJnnBoN8ittcNbKvpxRHCaUG0DEI2JPYVVsRTIAa7UrbZUnWIn1E9gOx/9SGtuCBQECUn37Sqqu28l0rIb5CrZxfqnhNhdq2UI0xWfFTbD8Buqt2MERA1un3wsOC+zqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717460723; c=relaxed/simple;
	bh=kgn0oPHcqE6VzkI4CUtItOQglCZNQol/UHWseT9qpSo=;
	h=To:Subject:From:Message-Id:Date; b=Q4DNNTovN7/0j9Ba9R9kUnu0Y4AYEwyozDr207D/konHvh5l5awtcj4TLsI1wySu5ng/1EiG17E1Mp9ihGk3j9Yv7a3iUrUtlyyPLHY1CAQhEyA/AANkIv3GJ7ZBeRFNAQq7x11T3NMqzQTPACelpnPu3aXnczZ3/nrIqwt89b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aILVQpED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aILVQpED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD97C2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717460722;
	bh=kgn0oPHcqE6VzkI4CUtItOQglCZNQol/UHWseT9qpSo=;
	h=To:Subject:From:Date:From;
	b=aILVQpEDfZAbHXqIRQQB865mMvehC/jguf/TeoKkCzeneMx1z+tGFiQyvgdSEpvtr
	 ehNBdVoDOi59fj5CurjPD5lXUyYnuFHsoNj5KaGaR8hT543rPnKBkfpy3KgfHEa78V
	 FHXjmZPjR2khupAuYK6ghuxOtDwmk4K4kr278Gsk3ZU4H9/pIxYeCes64I/D6Mf48s
	 /PMfkIai7fMmdp1bcsg1MlUeKyIS3mLnsha4R9GKKs2iqDzZmkMry2YKuczv025dW1
	 +YjninZYm3eG4a1x2t9ZLFQzUvKuwnHPewl+V0rEZHD5fJhr/Y6bGT/4iCKY0QD61m
	 2+7QJ2bSbjPmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C821AC25B75
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746072280.29171.12528151248668736203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4720e03945f39177a234b07d8fa178dc8952289dab1a4b2d8894ec25192f5ede
Date: Tue, 04 Jun 2024 00:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717460722
