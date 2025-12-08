Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBA920298D
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765224174; cv=none; b=sEg2B2EbQGQt32ZpUeOCdZM8X/1q1ZYGDeE/nFHfJ1c9RFAt/wAHRtitV6Kc3Caq+FznJ6gfbGisO9OlHa2YyKP2Q/Umq8xjMLivsKaaYMjQADgUDUHdZuEICcR4SUJWFZ9zby80HXSpAoH7E5mhxj7epuxE1jvf16woSPsWoxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765224174; c=relaxed/simple;
	bh=ltOy74rNWxIJgTZyGr5TjAMKk4/GqwWE+CVA8j6QTTo=;
	h=To:Subject:From:Message-Id:Date; b=CWwwWh59un4uFj4gCITRvgNkLzXoWqOqt2vZfFuqrnb0zy5eG9DY+kSfiQUgQ8VeNZj1jU2pYPLaO6Hed/IaX7ODzPaP77K92jJ9wDNK5xkD6azBCiZTSk/cSowQDK7tscCeRZXzA1MicdBbzphMCs6MGzyLg0XcOAsObiLJ2EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDQTEVan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDQTEVan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C53C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765224173;
	bh=ltOy74rNWxIJgTZyGr5TjAMKk4/GqwWE+CVA8j6QTTo=;
	h=To:Subject:From:Date:From;
	b=BDQTEVanx+VMVEZ2kTjv8T2xThrZpVzdpNpIB4Xat1I0wvWZ6hCd5PJyHZN8o/pX8
	 yZ5BrPv/LHTjA4yhpVSiAHt8tSnhAsiW7+bNjIlgx0R6G7r1h0BqoBm2yUCTWwBl/1
	 766M1AILC085YYQssBn5lcqpXL0pBPJQ/GGDVSUxAxhPWNBSrYaJDbqk6K/G78dau9
	 f/3KR/pjUWuHYGnM99rpPwzAV7HLTReUfNhtr0YZmqPnc+AOL+nySZ9xxwakGVj1AC
	 0HmZ8TOgORO0Sj2lRmwWFL1qzabLleNiHp1/K7Zy4zJ5ALSAVbbAJpdLCYu+M3UdE1
	 5LkHEpyc+5XkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBEFD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522417364.28983.2441719401193919808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec24307e1a5c00b27da18788eae7586803f21d416508ebf07be189c127c9a098
Date: Mon, 08 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765224173
