Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305CA1E5B72
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754260794; cv=none; b=kdA/qyw4CBmtowzfpWJ1X9w2orCg7DAnQHb5SPqT7+rWku5XJrSLyq/bzPshOT2Lm3rWjlxPv3+oViAkTRXt34ZZowfwHcnrwHBC0NUNtC1Eg23ja1ubDeq4lLSwsCGvai5BJACE+R0exJbTsmaQhmOlqJEt3ihq0bnt4DbXk/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754260794; c=relaxed/simple;
	bh=/2FFxsOOnQc2b0Mn8kVN5b9teV6JOlb+u3UL9ghkE6o=;
	h=To:Subject:From:Message-Id:Date; b=ZQNDbLIOC/IKf/4+YHLCXNTJkbRnpl6etfvhGCB8eMsdCclabQ32pNrdKkm5SBeummCNF5J4D6Yk9Aebb0p7/WsY/r3ClbgtGz4GAqdVzGpImpc3elfcUf/3I7D0HUluNG6jjhwkkNvM1+BWu7tXRUb+7NzMwaDHfZZfJ4GV3GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHv6kXEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHv6kXEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03FDC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754260793;
	bh=/2FFxsOOnQc2b0Mn8kVN5b9teV6JOlb+u3UL9ghkE6o=;
	h=To:Subject:From:Date:From;
	b=YHv6kXEsBkKmkStIzZwvhxfF2s5KoAhfnHD5KLc9hFRMmPeUAsj2IoXQG1jYInJaB
	 c9FNueeuQIISF7u8wEtlUv8KCuLuwPHZAWbDxZr0FK5ut2gLAMTLzpe33bqx65Fl1X
	 Tbr6PWUlQo0dfX97VV1PdYallsTWw3y1UD20rvI9Slx7OdfBJNdgOYd8swQtFIJo8h
	 ShEtCxUHqM/gCdI6TV3HPl6pR0Pe/C59pOLIkPHNXE6B3Pcz+9cGnKoBxnfwOOeURJ
	 UGFrUcrT0dk6Tz2ZuHZPeVDKfwQrtMp5+uIBAS4Z8kSbTOF711DMPKT2BRQ09mFej0
	 r/F+JpIp3pVww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90003C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426079358.29599.8123844132290662478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e803df8005b82ac154f496db8441eb1f09e96db784e3abae42f28653010f97a
Date: Sun, 03 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754260793
