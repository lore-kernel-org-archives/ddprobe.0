Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D21B3D556
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718961143; cv=none; b=muk9hPmMrmqyoLbDVyWjT7zoBwcqI6y0K0Tc7ccHBAF+bsKBluvMUhdbZ26cv5pRgSBZcKF4yeL56k0s5YE2TXzPcH37MKetf9cEBNGlZJaFjIuc24Fw/6fqHH7eOdpW9SWu6y95TDiR8rDX38UpvK5+5ecGc9Zy3iJ2lJXJbRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718961143; c=relaxed/simple;
	bh=AmebB2avzryZCMIV1nhT4M0UGOPxOO+sD07n5yHl088=;
	h=To:Subject:From:Message-Id:Date; b=KxinqEFv7QbEa+f4BMpYc6WCvm4IPt0umqEfYQ/sX8RMpwgka9F6BCBaSJre6TauiCnh2siE7+47qOCQ4HRQLIQ6FRkmhIvpgQ3L61CnYjIhQHuHnNh37nFt2YUjRM67Fh4kuOZsbR2pPR3RqmVQhxF4CvUKe1g3h7R0iG7H584=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WG7NucT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WG7NucT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA58C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718961142;
	bh=AmebB2avzryZCMIV1nhT4M0UGOPxOO+sD07n5yHl088=;
	h=To:Subject:From:Date:From;
	b=WG7NucT/N8GfHsMCecSEr08hhxDXtvoUsv/dVstzsWZ7HirbM8YSTJ/8C0jNaz1Sr
	 dNWve291Wejwxcc3+GsPWaXNYhVYhvgRNgAqBC6KaeiVacAu8FdQnyKJzME0n9i4Hv
	 nZb/xKqzYSxa1pV3l+o8NQ7FmzIgb+Db9zr6u+No8hXlsImwOLN6R64INU+9TvP8B/
	 GrLso8eYUJeKvYLYvZQB6x2NmGElyvgD3mCQH0GOK8PW+ZqBO7BBmloEZBcM+VtPHz
	 qRfHvGHbrpOEpdNnuNSOGSzvK4JutvhW0q+RsF7i0ltCkYmklhBIM1BkDhN+R/N+iq
	 nTCKileCUEeNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91D9C2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896114280.3078.17254838900455442445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40af88a7a8b9f34f85a429de295d243026b0e578708714685ee1ac2b4c42b445
Date: Fri, 21 Jun 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718961142
