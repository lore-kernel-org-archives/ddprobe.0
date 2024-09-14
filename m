Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A93F3CF5E
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726289754; cv=none; b=EdDuEjBwkD2frd4lAH3S+viMHsaIMw/GUztOmjH4l665TTlnHJIF5QxvC0VpId9M+2hCh0g5fYVXteWCbPeB9O46i3WC8X9KQ/39yIw7pluwkuc5rR8xK7Z15ASqM/0yz/DC4X2dVIdUSeZzHVV6LTXoCwwE5WN/PRcODyNmSQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726289754; c=relaxed/simple;
	bh=A1dMZrYgEOJV1hEqtikHhmj/dHcodDturuLpXoUhTbU=;
	h=To:Subject:From:Message-Id:Date; b=bagZVaSwXNmzM1BbqWHJe/yetkqGnoclDOHHlsPBsHCksz2CP2lqPEZKNDoeYJDEzvgwenjLCggJhL/eVDbR2koahfMClDzmb0SOmAAW9VARfzgJZcHun1q0V7NsQ42nlq5JTzufrgVYbubxrFF8U2G+Tc5dPGMmoV0ttxjiGhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/TgHDfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/TgHDfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EAFC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726289753;
	bh=A1dMZrYgEOJV1hEqtikHhmj/dHcodDturuLpXoUhTbU=;
	h=To:Subject:From:Date:From;
	b=l/TgHDfSbVH5RLIqks88/YtvaCSbqfUObYDUaBSDEcL9e9gKelQxM9F5Nl6vVXrbj
	 R6+a8lL7DxSBv454cSfT1vR0984VHfk7JzQp1aU9Wj7XEN1i44XWmra1BVmgHft1bl
	 4f4aFs8A7dln9EaEkVHiOTE3qqtbUGo3E0vf+69tWnr7KB5vVaDJTZv2Y+z2DO6FHU
	 szcJ6HVlQf1pZKkh3FfwIm97xrEInLUArJCdRJ2kEG/F4e8ctBwSYIcbazasUCfc32
	 2N0sq8dyv1uzUkp8IwTwTeqzaxBZnLoNYPYyzwTpMEDSiIyiEnrD8ExNTksYoxttKl
	 E44edajKl2Zaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F5FFC618F
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172628975362.10243.5942240461254960753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde60afd4b9824139fbb3b81d091455437aec6285b332deb3119730919165e01
Date: Sat, 14 Sep 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726289753
