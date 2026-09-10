Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5926549E13E
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789078834; cv=none; b=npoL9IPPzzszt4YxXu0Fd3T8EGCKFT80+chHSqZfgpl3ojvAo6TPzFv6jA/SwqKa6C7lmm5kxgoamVvvmTDmGSXZxpA8bp/CfW01tkG0TPTCBzR/xsGMnmE1dj32rb4Zu/zMlclAlKdNKuOfC05bqT75iFJnbxJJzGUzFvM9ans=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789078834; c=relaxed/simple;
	bh=SDz2Y5XKIDojXogIhnNc9Ud8xkPO9dFpRY+K233nzHI=;
	h=To:Subject:From:Message-Id:Date; b=dR44Bs9QFwFpXsuo6O1KA6ilHP6tMixuW/ybcDKHQ9rmHuUX1rPqON/GrRQ44ASTbVVun5343bKv9Tzmx+xoQ7M/01NZHsVJIl0PWEfNyDqsTsu5Odqp+2BHW2vtly9nEd2Co4wpcEIjbOhoeqtSjkiDGESFdJgtI7Ylx6WA5HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwEcwShc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwEcwShc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1ECC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789078833;
	bh=SDz2Y5XKIDojXogIhnNc9Ud8xkPO9dFpRY+K233nzHI=;
	h=To:Subject:From:Date:From;
	b=OwEcwShckRy+tzY6WGbYtwJkuBEkYMN4VGMNZZ6p7T4v9s9AV49shHiAKkongTplO
	 ZIvdymqjFAzhxik3b7VjPdhOBKUO8ycswC0xtd/BzxXBXvoUad53OSnOGN8jY8dksG
	 0glMi2idltkh+drojYklEC/TV7FBqrMW9aqy/J24rLrY4g40SqQKjD8JLQ8+HbGN6J
	 HmF24PWzC9X+xuPhxqs93Q7q6e/YtjZ9Mde4kdUr1lA0GSf8iWhaKahyARQkPlVU/E
	 JH7D1htYm+QOJ3PWMMYOGOmW+se3mdEhEb4L9xr6RBInlRGSAMtvpDMStBNmfXfj/Z
	 BLRg6T2DYoAOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B914AC79FBB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907883374.16322.5581458365582813063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21fa65c9d950f125c0fe9644f8927b03114fddb7887c870a45ddb042e31887a3
Date: Thu, 10 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789078833
