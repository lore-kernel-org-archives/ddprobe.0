Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1194823ABB9
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771151694; cv=none; b=OrokembdrbsrReY3taM3LgX2ZKSaucPJ+AhFEtdbHoeHo8+o0D6z8NSTUzHOKLeCmCPckYCUxbJwplvX7t31UKdi9OrYQcxhGVVUym5XQ4SjJnKukDAB+OX8PiclYahDxkRxrzfndwsEM5HieSRh2ib/uhJPG/IlShgJc29AY68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771151694; c=relaxed/simple;
	bh=CwVxGwzB45E3ANaW8l57j+WOrUL927zycP6bocnBRCE=;
	h=To:Subject:From:Message-Id:Date; b=BC2N9gEd1PX00OZ9QnEObiSr33IMuHv2MeM/kQwNKzxph9S6vUgMswB00IHI28YpzZmAgCgzrECNZalVVVIvU9fRLz2WL4Ehjqe862/tozDft6JDtK9/xHu5mhdqgBuipQkezw64BbeocPQVFNZPvJYYnp5cAk4jKnPiI1EMyZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmvQV9t9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmvQV9t9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5C1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771151693;
	bh=CwVxGwzB45E3ANaW8l57j+WOrUL927zycP6bocnBRCE=;
	h=To:Subject:From:Date:From;
	b=SmvQV9t9huk7rcbACw5aVTyGwHxMGktvA8VvxSRnycTiTmTHM+740DDproBIQ5Tvd
	 pABfWO5mSNGFTBay1lTg8ura4B93YXP692QW9+XLOjxn6Z0JWIdngZZClJ4oHjOwJJ
	 SQPrwXhl4Gbmv3AWyNDTWfv0HiD/YMym1cAUtW/0LWjB/IFwOJxALGoRfp5XXLBorQ
	 UGbVtWya30HASnmoT/deahgOj+qpgu6MJ65m3sSFG7f51SAhDw5iug5u/EmWnKsew6
	 ahRM254htlZk4XqWj7hrZC/damIA1Pdn2y9YQlqBVqOhUXgj6bWWcq2ZI8avKxmZBB
	 5hh7215zDHmtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966F1EF586D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115169360.2783.3445327060120131566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a76f953d998f8234b326174cab2e44c84e1be806ef9da222091b59bc7fcd88d
Date: Sun, 15 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771151693
