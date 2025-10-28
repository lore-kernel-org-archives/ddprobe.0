Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2201228727B
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761631794; cv=none; b=n77V7EUlBHNTVb5UG1Y/G0ivc12Xcf8DL7qGN2szYmLgtkO+mMWdJ/Of5YYUGrEWZoNgDf12AGdFQmk0HiaT0E4beDu4sgG0huyCjXzYLfLtlXbTpGb4ZMPkI753jUfeLATgA9H7m0PbI3cP15qAePI4LQpO0n2M9MyjQF3jEyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761631794; c=relaxed/simple;
	bh=7PLqJjt1xeegf90E0MeVkgUKNuasYRJWpnIx/zknQ4E=;
	h=To:Subject:From:Message-Id:Date; b=VSETUZSKhC3gElFJ/rq7bSEC1D9suHy9NHYlegB2bU1LkZ44C43HoJwEjz+auSmum98J8PVJupHgu50+tGnTqrHglgLvsO0Df6mBrwuhPJh3ED2XkQa1kP74Vp0RQ4sfTUv4ADyERkQWXCrY2wIHdWjhSG+T9xzc2bgCw7A5dTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXYjEjZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXYjEjZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6979C4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761631793;
	bh=7PLqJjt1xeegf90E0MeVkgUKNuasYRJWpnIx/zknQ4E=;
	h=To:Subject:From:Date:From;
	b=UXYjEjZVB9TTl8lf0Pc17c7X2mfKgqHNndut0T0sCH1q4D1ur0lsY3HczKtgq5iZJ
	 scH4u8kpx86pUTdeLk5eNJnUgTV8wLSDm3VcM+vwVrYCtk3k1JpgAhxBFdL5lLWKFl
	 2+uxy63jPX3nsrkfisn8Ny8HhMfByRqz5C5YKdR9q3BFcjut0oaoSU9QnyyDjjYav9
	 kpkcTYkJ606cfC0TE+AzML2keNKft6/O5RmbzsVP7lg6y5in5HRGLmsxqnYvtzZaDB
	 Yu3V+9lM3IFT6UYpLDzeUbkLb4Mn1yqUNmCnR8S3bLIPKlvdLPc3JuYz0Ori1tn4f6
	 ViaXX/je7g6lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A2BCCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163179358.22275.2416937487616352614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40611c7cbefdb3f38d30d07b817f44c9a077f3e3d55991de618edf35defad99f
Date: Tue, 28 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761631793
