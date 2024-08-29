Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0F914B96F
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724933153; cv=none; b=kpWcR1E1cyD0wVtWM/LrDRnsDf0wadG1jA6b+ELhaqYGVRo8jLgb1Fzi5R+pW9A9D9/Bmw7d6nfKf6J3bnqzHAWNQ+RPt+iIQU3TgwxsWp5t2AptcpSsE33bEnlGhEl5av51+gY9qFm+BKceyJdM6SAKNE/W3tCJijgk66n5erg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724933153; c=relaxed/simple;
	bh=hUqx+44FLWUL92PYXMzNIYlP+afmtNDfLEfRwAie9tE=;
	h=To:Subject:From:Message-Id:Date; b=mqq9k+YxI2q9jq6+4uvOND4JFyADJs3eOMshK7x/4GHF4ixSQXV3fwxFI2qjjRUNfrnCNGfDlIFuUzvjDCkeufTb3ZFFGEcRZsfk2YiXvzBOT7os9apubwg39/jbeEeWO8RRh8H3kTlDHQDU/jJy00psZikoXvI17FHw298fVG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jinJwKtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jinJwKtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90B0C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724933153;
	bh=hUqx+44FLWUL92PYXMzNIYlP+afmtNDfLEfRwAie9tE=;
	h=To:Subject:From:Date:From;
	b=jinJwKtOFMnJ2zcxjVKgfzenPLu9NK1XftQ7aXzsxuPa4dC3FdnGFpKGWGXPGXXkW
	 2NG6Ork4J1FkHomdH0Ps6i0jWDrEGmVVmZ2lLYzyLDS5JtC2a6sbW19Vl9XKvy/whg
	 3SdCaU3IkxmIioLAxCO6hnEUcB9oFUBm1iYpXufT8Wa+rNJ8HbznpLnC9HXkK19+o+
	 CMp7sqg3LftmiGvtiRW0TBHTyANLekTvS7nRCjoKQ2Z3/t5hU6oJlE96evwFl+KlvC
	 k/PtdBeZg4Wfs6MHvzia8imPfrbaGcDXZ58dstn9trCnsmYNxHJEG4MN+omvoxYudD
	 g8S7GSi+v65yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9618AC83F0A
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172493315360.26774.6701406071896271395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c36a24c55654624646c4ef3af0a59597670c0b050cc096fd2f04d57bd7ed8df7
Date: Thu, 29 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724933153
