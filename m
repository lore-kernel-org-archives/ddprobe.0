Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160922580FB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766367834; cv=none; b=r6561BmfuU8SfR4tl5EIcKQ1+KNGIK1Y6/qtovj1ENNO7gRhPLWme25TN1TQI5tCqfagijgXqn84NvOtBbzuO31clCMmQ5QvnqjAHwS5erT6svXKuzzx/mW63Y9JUmX650iPGhfsPrag5Ue+dh4XP/mIxMrJosM9wTW3P8eiktE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766367834; c=relaxed/simple;
	bh=3AFKd7zlIuDboTXW8rfvyew0Sr9SkKEIKmM5iaw+ZBA=;
	h=To:Subject:From:Message-Id:Date; b=mNLrp9SeyddMBGuYkRFNfRJe7UxaHR0G350yuTJ55hdpnP1pXMyxo3w4ISJ74ftjCZm5Ylm26XU7p59l/G0szHGqwg3++KP6SDvzHcPl3PgSuVBiDKMlORBqYF8b/BhpXUFKBAQ4pe0bPLe7UvX4s803kziJ9MrjN+X4kTgLSoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZbjq6BN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZbjq6BN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1548C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766367833;
	bh=3AFKd7zlIuDboTXW8rfvyew0Sr9SkKEIKmM5iaw+ZBA=;
	h=To:Subject:From:Date:From;
	b=HZbjq6BNmy3zdMyW8KsWYiK748PjBKwDPmIL8IliwVVeNj8adeRK2uxTYwFy8Q+KA
	 6FECweuFjnI/N2gBZ5d2i51CLrOJjmenkkiW3ueYdFYU3aKMYlzpLgyS6jWid+zN00
	 QXHn4i9BMD8kcvpwPLx3aeseNgCCoT11jHuERSN6+hdidcQCDvq5W/IDGfD/txt9Hu
	 jXKsime/V3Lxi1qnydMsYznTNjb/WKK0z0u7wNzv1qzhAKEAaF3J5+4mT3biFY8bsj
	 LYwLjnHg+6UpcMIbrKT9w66PXHkhMxHfXmMMycEH8/1IKQA+DbAMicyQa+EJx60Kl3
	 yb7sGk9Vd6P4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E4E66886
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636783357.7952.14116822976048836539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d7b6f6fed65715f71ffbc8b9718cac0e694ae3be4a6e44e5750c1268687677
Date: Mon, 22 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766367833
