Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2369C35A39D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775207734; cv=none; b=rDMfK+SO09DF+3Q1pty7IaWMHLkq6ru2vg6rwZISOnpZs7ifosyb49boUbSKbHs0QrZEZTS9UZULUJou71S51mbfXayAtaPhOy1lJ2DTEhrk/uaQ9NwGvuNRYRIzq4qWEOsQ/UySLdr4DVZHXoojakTjfYJzJwz+twwu8rRDTMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775207734; c=relaxed/simple;
	bh=xDHKuxQUbFi+ktWz0LHBQeFzJ+ZiifpmsFwKdfeD+24=;
	h=To:Subject:From:Message-Id:Date; b=uncACB+By4WsE0Pon5I6F4ODwKTF4ii17YfSBWtwIvDmKz3m1jJ1ghcyEq4wIs1lAnlIGTJSN2D0QoKvIiVk2yCwHR9r1Xgbkn1oju25yWJwsowN8uG7CZ2U095UBbJaJBFIglxIE4YYcIzUj3ARxhIE4PGpVdRU8zch/c2pW8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMAmbXd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMAmbXd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BBAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775207733;
	bh=xDHKuxQUbFi+ktWz0LHBQeFzJ+ZiifpmsFwKdfeD+24=;
	h=To:Subject:From:Date:From;
	b=iMAmbXd1pte4wvRLwe7N3j4xX2Wga2HjJ6I42Wjv8dks+d+MIdr1lpVGqIlflY7ZB
	 MVkFBrkNPMB6m2xJy/g7s0rZ/6WpUDTQJgqK1QSmZTJeX/Jp2nWcWCQmsV+xeMKg65
	 GBs3TL2kgojiMWHDfi6nPAExBoc3HSK/08TsOAzsc19/yWNoBDonEg4egpP+jp5054
	 sBfkr/1DO4+c31hmUsSls3fs/1HS8hPp4YYQWmZevx0SDin0SbogfdOeZA87TGhUMW
	 g2hyAyoAAr0ZG4H1y6R2BEyHC8t3cpVsWuKP5FZ/goNPgakirsfGJIz/KR6CnjRH1P
	 kTcMpbLXwnHeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9AFE7E358
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520773370.7582.6192333103827049587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d64ea183a2f3690d4a0f7a51da32d5d69137f4752080fd3b28d9c39089c9208
Date: Fri, 03 Apr 2026 09:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775207733
