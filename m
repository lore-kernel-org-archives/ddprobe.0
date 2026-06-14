Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7120E25B0AE
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781429194; cv=none; b=CUh5Y9X2lm2KRurBdDq25gJSsVUkMidMFSH9c9oFTR6mXUxwGlDe32cuJ+ETCU5psCZDYq77Bm/fsbyxiYLBU0on3CaKMPloLQj2SD1qlwT0rrydxDesqaeCRlm2Sx26F/Tde7QbXBaIHPUYTFrT3NPteiFQpCiFBTfv91ts6kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781429194; c=relaxed/simple;
	bh=hZZL0AJpa1rKSpM7eHGPDlTxMJ4kxztMFt8B05KUlO0=;
	h=To:Subject:From:Message-Id:Date; b=ejHksnE8kURDQsMNXgJy+h0/bj4522oXBWJo7t1shP+pIOJ2rEDbAR75z/1JHveFi/K/QDpm2uYp7Jreb54CzxXt1BLJxsSo8XXLRZKf4M9tHQepI1O0MI2u8UOckGXhId/W6aMY2sr0k5M9I9oLtVWEQNpFyOOEZC4dAeYwf3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofLtCLRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofLtCLRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1E8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781429193;
	bh=hZZL0AJpa1rKSpM7eHGPDlTxMJ4kxztMFt8B05KUlO0=;
	h=To:Subject:From:Date:From;
	b=ofLtCLRBxG4x5JVIDttvO+sV2nco5JBHxm+DrmwFpqG3jAJWiSL7p+6GQPQjGMwju
	 rBhB2tJMCWoIz2J374tFExBAsvtflVUIKlsRG1UDqFCTMkSvYliQI5lHpMnffgNJdZ
	 51A2FtzDfJE7yPK5F81CAgmQTgueND+kwezqNE0JZaPy8eKneF6VGjGvPXNitbyVBw
	 MN1h6TeLF8woGPnkQDr+jfTKyGSHMf4OEwbqEFGd8l0v9olBrfWINM5keo7dCSpW4D
	 Kh3Q46rkW3vYnyR11eDiBh/4HTGT6sxWe5jIX1ApKvSkINLrA9Wt1wre5ZjcJS0r1G
	 V4mrU8ecWEqzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4774CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142919372.13199.5077323124463832394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdad4b253541cd9f7c7b5ddb23361eedd06cd8167325b2fdbbd19936b83fd844
Date: Sun, 14 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781429193
