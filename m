Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24188216E24
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765840974; cv=none; b=EaA09MO1HMHplA6QSbvbaMRCx+Wil/gJGZJYZwDdX5qnO3l9LBOZv1AxsB3cQjcjOjsRZ9LECgqh1LA8SjSJfea6ph9tpg3iLjv08Sr+ytMY80iClL8UOtJI8prTbxDPQ2KxV2eCT4znfzElEpIhMzdoGyYHSSwmW/S7NnuusZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765840974; c=relaxed/simple;
	bh=xLvoC708IBNOTyPSCqnt3exi8k9+IKD7Byph08ocqDc=;
	h=To:Subject:From:Message-Id:Date; b=fcR2yqw/F2EI3wCMmoH5Hq8H7ZhbxS9Cacxb67jk9ag/yMhXJwblVwF7IqZaqa7symLfnkc5dLU7I1W3Bue7iSHU8G+FJ37EIvO3aGbiLoIz3aYRa1aOGDG/E+WKHkLrhXCCFO6kAoaxzcp15ulxmxJ/TmO9aDIPIfQVADpqMno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtTIs4TZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtTIs4TZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2ED7C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765840973;
	bh=xLvoC708IBNOTyPSCqnt3exi8k9+IKD7Byph08ocqDc=;
	h=To:Subject:From:Date:From;
	b=rtTIs4TZM0gcW1gg8rCbu7aE/8GyZGc8TvtPMlvybQAFa8MTDAqyNSLECcUsvD6bS
	 Uq2aml0+hau6CHJ6QmZHcOAEeKQICsXWjqlfeuBG8vcLzXJAU3DBCgfP7lpnkuMoTz
	 qdAtWz51dBPRL0+H6D69XKoZLghkqBTKs8j2ElNW5Vsyi06hCOC8mzpmMaGvE6x0r5
	 GBtCAlfvF7Jlbg1H8a7pfGbbd0TBM9v0Wr57qrKVVphAf9/r5y39/IN1N0Ky5wyccP
	 3ihsNYL8Z6MD1Ke7sd5ZYKmxXXRLEiyb68X6xHIhUh096HSVRMO5wkxvqvH8AZx+ib
	 HGw49HaKVVnIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFDFD5B87A
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584097361.3545.8007030513121085749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f162cf185e56e0b3bc36ffd266b4606c6ac088d0d4d6baa6c16efcbaf7edf3a
Date: Mon, 15 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765840973
