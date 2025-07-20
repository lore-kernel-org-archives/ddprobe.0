Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1819C125D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753001395; cv=none; b=NjKIpcn39UalcbgJ5Uu7uL0RcNv4HzQ5sgVwQKvseJC6QuJwZ5o2mFC6UyTDWI5B630kNwQgCNe3o/hFFaOTMUIyV3Dwk+cH09T7XkvfCWvdCFYWWBOE4MpNxv7BOOiDFJZwwFdAWFkNZIbj9Zdhwp6sI+AEvRK74Z30N/hcm9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753001395; c=relaxed/simple;
	bh=dc3RRTTFQjQa+LD+6pBXldcY9ssGxHjFN/HFk+3qfpA=;
	h=To:Subject:From:Message-Id:Date; b=G5l+mr8wJX5snUPWGt9D/e5NjGah2sCAbR0IlucZGnsNGlahhV+O4uUYDHoV7UT2coNj2y9K2nHf0NlKldZDqKx29JobKwkvSEyBIm7yQ4ezKr6nKxNCR18caIxfT04ggA4SQljT4KwmkLo9s+ImKgUTH75SOyOuK7vc6JA/e/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUg+JXbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUg+JXbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76B6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753001393;
	bh=dc3RRTTFQjQa+LD+6pBXldcY9ssGxHjFN/HFk+3qfpA=;
	h=To:Subject:From:Date:From;
	b=uUg+JXbOHda3hOXeEZb8frbHmsNDKrAY/QT6h/PRNfyK9dPViRgb2c+SnGiSmG63O
	 MXMpEJ7b2CpErbNAJS+iATtoyr/2Bf26Wc/ezUyyNZ5jZhJWS1qtdD9BTsfZShmFht
	 BYIyrLa1xHKrFpnh2rNPF8r/cqpYnFDwcYym9P0akSVuMzRsaKvmGoc8t0Xbyl2Muy
	 cJW+PjnlKfzfjWUaRU+3rYrZYgp/3dYi84BZIkFbIq/hdVwE6oB2a7gxtE0i+PtABu
	 bhMKFj1hOVpkPZRE4BD3TmlrRq+WcIinQNjxo6dwkaMqZcJwHCFCaVAYBvKwcch0v5
	 09bFZOHrJ1bzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92249C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300139357.18804.10261252601514467963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e489efacc22b297d8cffaeffed9f678280894771aa5f3c01fe9da9b9d39e04
Date: Sun, 20 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753001393
