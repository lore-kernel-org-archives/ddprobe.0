Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBF4193425
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734197754; cv=none; b=a3jbE83W6Mlkth7m/byAlId66ATWCxliop17VksRvi/zRm2U5fKJrwDok1a/KUIwBdOIEHsOjj6sUNF+4DDhDiJWBNYBu8sIeV4A92O4xmLTnu4pdwhhJ5hSnN+0i5jYa+SYwc2mhIxskIcnrlsdZa70yCv9Nrjd31kAW7O/AuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734197754; c=relaxed/simple;
	bh=/hVYe3Ji0JfoWIanI7Av9l2npt7ahrxq7xV6HxL9stw=;
	h=To:Subject:From:Message-Id:Date; b=g+zRM+touB071eRoR0t1xKPFXZMEhYd81bTndjU8P4mLAtRTo+/LIFzYDBjujYZVJaMEzYf+QQdGrHA+5aapM4VRUaRULMlpNkUDplCjhKwHcXrCT2Rpke/cj+i5HTwMDadfB7Ci8dLN6/abSwonBYFBgbmuHeCf1vCHCHKp5WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ug+TQ14O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ug+TQ14O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4D1C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734197753;
	bh=/hVYe3Ji0JfoWIanI7Av9l2npt7ahrxq7xV6HxL9stw=;
	h=To:Subject:From:Date:From;
	b=ug+TQ14OwL0cbYZ4LL8cevohvn/tiRUM66lUtmTvQlq+Utb8BgsynD15rNjGKdK2N
	 RJ+pool8jeQU4ra8JPrFdFN/A1KC2s1eBTIDb4/3f+BCXchQiFaIgu62ut+QrF8kuo
	 KY4gHVLI9fHNj/R5r+CauIu4jw68uxKQYBRm2hbEooXtf2iLsFE4VIHX0oPFlzJ7//
	 /Mu423/i/vBn8HQqDkCLt/HjLv0jflv6voRC4UutaoLLfFA0AbbO+6qLbmAS9FhqYu
	 fVaZgYzj8qv8yaedLieyagwtBC7GYdFHLYvzEJcnBlphXgyhWU9DsppG0oZ2640MFg
	 pFZuMH70u8vDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D7DE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173419775361.2681.5399351614616866231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf0d6175b1acd4ca80e641306b9db1c7bb4b6ca27385ad8d9a4faf3c3de57f6
Date: Sat, 14 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734197753
