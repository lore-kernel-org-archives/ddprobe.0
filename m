Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61665FC0E
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 09:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740906534; cv=none; b=PIPI+AHwmxifFeLz+LZI1VB1cbJDIwasSfUa6xP9By1U7Q+2emActXr80RfLI3NLMY7ihmfnq3eX5gXlT36ONbp2od+Qv1zIZAyoHwvwSgAA4bhYTYfvP3L3IV4snvc4yWIqje2jWX8Ckb5w3hNT08vOTjjS9cJRP1FMa7MU0mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740906534; c=relaxed/simple;
	bh=by2i9uOXA3hQgpuu/rgL3ub5Rd3cMJqTC3Lje/crHh0=;
	h=To:Subject:From:Message-Id:Date; b=PeYLXuyvDkYV4FzrBjAbDf9HOqrvPs90VJvzDy1Y8k7kXaTlcnrr2597LdlKIuIxfMYqjUvJOwi6UIOIpXYVT6h+LoEZdHhGxNglAxPeK+2YabOftCZvINmyLh3MaKoB1RtHJCx3Ivauug4IzxCekeosCG2otRhW09zWhsM4xqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cp4PvbxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cp4PvbxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AB8C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740906533;
	bh=by2i9uOXA3hQgpuu/rgL3ub5Rd3cMJqTC3Lje/crHh0=;
	h=To:Subject:From:Date:From;
	b=cp4PvbxFiYfKTv/8uNMmt55Ew6LvMYXzEe5H3hvQRih/1jz+Xu52yAa+JVq93Vgnb
	 J7HWVY25/aUn6DO1nOT1TsfSD21aneu2RmOvcJmb5bE55zd4HPz6YXdp0qeNZeVXM+
	 TAu84sk7+oX/okMeV6V0TZBy5+HxTagyhz3ITNh9A4vq8bnsMx35iYe5uBLYg0s1wi
	 kMfNeiifDE7xnbH3TX4w9OVIunZIqZwEUYZOuFX5bPX/shNZUCpFpTpQu78ZrETKo0
	 Bqw7/1SFjaON0OkTjYuSK1Y9mxUFf4AyiGs3RvDyA1/kSXPZpqJBVg/66ebA00ZA0v
	 cEZb+h17vbUdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE0CC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 09:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174090653363.31088.12158081367581478830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec79bb9be60006888ab940b618e0600d035600efc47cf6028c288f223084e35
Date: Sun, 02 Mar 2025 09:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740906533
