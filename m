Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D762773F0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779931354; cv=none; b=a48qAKv6Mq31eNd6g+yxv4CkJEZ2Y1xYdnSZH5VEh2UGRE8P+RRpCDxbxFuM+fYtPMuLSwzHuJrNSoe8soZg8RAuwjwMfR/kePqaDy7uBNFkFECOZSB2yqeUhWGklVbOnVj6enEfYMY3rUmYBFBSfMm/4/kVkzmS3AMgFWW9rfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779931354; c=relaxed/simple;
	bh=7uQpESMKjZ1Qbey0P1/l3tmc7YL0jEXnp1FukZjcbs0=;
	h=To:Subject:From:Message-Id:Date; b=F1ryVDka5/RvASjnLJWDBwEE9ernoV/pJbo6d2DJCcp4Oe4DCfFpiwwW6QI8F0xZ8zPrUZ4K3rD+UcrU3pNi07Fg84Y+u1g2XilhPNfn384YeTGcoujcFBoV66evvq+WPps0pcmI0SkL84ZiXbaIDdhOmYuDht5Dj0IVrHuqzuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2beH1TC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2beH1TC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1289C19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779931353;
	bh=7uQpESMKjZ1Qbey0P1/l3tmc7YL0jEXnp1FukZjcbs0=;
	h=To:Subject:From:Date:From;
	b=s2beH1TCspFOsjkeYdCwHhYsJh6aOSzozObsbHWooUfIZyn7wSS4Hc9/XWcxmdxB0
	 3KA99DJxS20XkVUXk5+zl9exmq9Kwyi6BsRuUMAlaqvDlDGB96uDG27P2ZIyBdHM63
	 TYWOBpE+R2UavYm1bkBEubTwFCra/mMrrGf6D29xTlHQjO9c7du+By+amx/QQmNPto
	 fPcWHHxWCG/ZEj33P7FpLS5c5ooS3v7eTHM7sBR9UHdkqte3S+pok0rTfQRUvk+mEQ
	 sxOqOj2i44zc7Oiz7i98eodddzk9JZgf76vKZ/LDH+lW4Dq2YqeRsl8c0wVYk945iW
	 rbZjXo3xc8pcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C5CCD5BD0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993135368.31718.6382413218290670941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c047cc66d3cd973915a0766094b097c5ab2b6d2e97430943ae521d21be59ca1
Date: Thu, 28 May 2026 01:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779931353
