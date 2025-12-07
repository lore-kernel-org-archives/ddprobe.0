Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0601E991B
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765101774; cv=none; b=Nxlgu4l2Uovl7ppgslG87svvGXSaQdBnC2Xy2JHi60UcwUTPA8Js8jRLulZnb4DOTTf8ze6E8mFRVuFYQG9I8I9TVjYXTpYjxwi6m1OrRjlPqjrSxP6bSbAlV8NBJoawVWNORug5xlBYWxPK1ZuwpisZ/nDkKyvvubK8C2kM3j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765101774; c=relaxed/simple;
	bh=h0UqnfDtmypr2LVG9KG2r+QTl9Ml4PtNckFvNhiWHFc=;
	h=To:Subject:From:Message-Id:Date; b=go5Cfak/jETxIRQS/4HfW/Ot41B5/TKJPEV/3jWAucLEzcLUwkre+JnimRHVH7CA71zU03agU959Fu5zH27afEujc1ZLE1xF+EJ5bz0tsoEm1YT28lqYRoZxTascvYnB4evKlXRszBawP5jg80VgfwD6NCPrwTVkmaK5cmuhvXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2pwdLv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2pwdLv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB607C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765101773;
	bh=h0UqnfDtmypr2LVG9KG2r+QTl9Ml4PtNckFvNhiWHFc=;
	h=To:Subject:From:Date:From;
	b=r2pwdLv5WzNQBCxBwgz9WH1p2Rne29T+pB0juLQ4GEhJFN53lJ9Dwoa5lZs9wfbAg
	 XY2/2iBa3HW66DjwSpbLQNOAzqmQXkd1h6s87Ofm1VtmTgW9EUDAGNGHnVYIF4IVz+
	 zEoX3N4pGN7lNyRKTLdXYx5i8VpDhTxkfP10SxqwIc7J3ZPprH1Fy3HUX05RNWyvmA
	 q0ELO7l5yRP4HipCSKjcSWDWCuiHO2BWvBsNNI5gh5cYW+sLXzij1KxWdtr9oEu4QR
	 u6it2C8y+dmvG4jk8k0cc28NzVZgoe2zolldnZBkKYZJm0J/SFYx+PJZYfqcP7s5gm
	 +u/puGAHake0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FA6D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510177358.20928.16626721380023270480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e769c5ec6e48ce45ff1b909af61d24ea6ee40973451ef064bce2dc65193f57
Date: Sun, 07 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765101773
