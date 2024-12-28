Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4BBBE6C
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735376754; cv=none; b=mbTY2A4lWruNgedbZVgU5/2ztFeHXH9I/1kZHIRyvxYX/Jor3zk66HMjXHGQJtXldRP2pVV0d7oPoO5i1oQA/cEOHfO/+cky/vrAawCozJZeWfGHkunECDfiKdpxE29oeqBUD4NwWYzGbdfGjVuX5Lo5CinSsomIvrRXS0Qdf60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735376754; c=relaxed/simple;
	bh=5agGitb/m+j1oTmi+fmJdSyyvfp3l+FqWTze10+YBeA=;
	h=To:Subject:From:Message-Id:Date; b=fhM+rcyG6enH47CCeGHNxsymCsZrGInaRiaOjDr61srLgMVqy2qz476vsESg3tpvuGTvvfz+5Mb4ZifNRYJjdVJn7StEKYf8F/ucG4cyn32T/I7r48/+eBSeczvgeV657rm4J1rnRIL7u+qMfZKEtr9kQvKetUCToBHtHmOMnDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srp0Eysx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srp0Eysx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB4DC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735376753;
	bh=5agGitb/m+j1oTmi+fmJdSyyvfp3l+FqWTze10+YBeA=;
	h=To:Subject:From:Date:From;
	b=srp0Eysx5XKbwmSQoTp1Df6yUv0liTiMS74PH6kxLB5qCE8SXyJkqk2ItLsKm09gN
	 I6i6pENPNOOWnRbAPkTb42f19c7VbHdzgEdSJD4OmLl1714GTuI9uFlaB4yk00XlEf
	 4rjsrbJ0hfO5w81tmwFyBkc2yfr7yXDDShjgpy7n6VpowVf+XgR88STsCN9QQ/5oEw
	 Kw2cMH/ELVozsFDjVW4uJet8H/E5sNkH44MiCj8ltxckH3jNhJ7viOtho08ZfMNM2X
	 02jjp4zI/4wPOY/knd6Q7fIf7mbFqHnp8wvHvLVP8UMoFArTjmNFaNYjY0N6w8uoLh
	 e1nJTimG8MI5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FDEE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173537675359.10912.13249361471001102064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08097e05d2c8740c6fc85ab051a4350f959cf23c950f6c7cd861ea8a7db0822c
Date: Sat, 28 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735376753
