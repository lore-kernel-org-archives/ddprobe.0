Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CEA70810
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762055994; cv=none; b=IS1rpjAe+S25l+Ab0vEGjpVvWcA9pvw2IDWG/tDNmag7UueDPlRXDoDnJ5xA9UUPDRgMAFwoOgT5yuydlaHJMG+QPrbROUjY2jIKWh1V9nP1b2h/QoM3ygaQcxDJmfm7yNEwgwOYTUzkdrwLv+3HnZoS4mbhzYAh+fG0PCj2pFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762055994; c=relaxed/simple;
	bh=GhNg6pp7EQvT4uJr87E7bUsIgAm3Br0dZOBWru8EU0g=;
	h=To:Subject:From:Message-Id:Date; b=LCoBCuJog/bHNRWux5ocyCh6H+TYvcGnJDRjB7hOiSiA15R2PGSx7UT0f5JrO2Fb2nciPO/e1Tyx/GtgcAq5bdrYWeTC23fbwsteYhCdm3I9+UhjRfeI1qPc/XpOk70rlPbInMwfMSeYrjJbusR+YPIjLNb9Cj2Z1xwqEhzIGSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9keA3Fo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9keA3Fo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC17FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762055993;
	bh=GhNg6pp7EQvT4uJr87E7bUsIgAm3Br0dZOBWru8EU0g=;
	h=To:Subject:From:Date:From;
	b=o9keA3FoaQ5oElwLNWqltUmSGzhTkOUDPWgGoabVBZ3j+g/q+MM1ZLCUlUjnQjLzi
	 alWL7fVue1ABDY5Nec6mfeyWa06IwXwMmrIuOsqZ1CFcYbUNURX+V2I7sSe9sHUo3K
	 6ZgeU4sBTAZEiRTKqcvNDQHxmKbvoY0/2MX7W4aKDUab+VnC5QSQ4Pn840GIF+VroR
	 aUas7YZ3f2xG63lk1TLCBn1YOhuPAcoyOTKgHnYQDaP4DLEdHgkKSUQ5SF7YeUyF5R
	 JlHbd+m5lxqLYidYIZ/IELw+p9ey3veZ17mAF8Vexa9ByDzJkK9T6GxuSP5eeXpctT
	 mhK5shLflol8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A59CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205599358.20970.6060328312747604856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ee4133ba3a987777be9f74dcb808b81d946e1eac31c7c1aaa2c53bd6610888
Date: Sun, 02 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762055993
