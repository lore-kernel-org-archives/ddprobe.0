Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2CD2AF1B
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760787594; cv=none; b=GGyE7kffDNDZrdawBDVZufAu8cwK9f9UKhg6ErZb4J2p1OWHmd/20Y3ElJZpvRS0IYSduwMis5/IVbelnS1cpmdV73UnDWuiGgCxrszyGCvRc7I5wxjXxRTd7aAeRTzNGdnXct7m5zxu7MqTPc+CG/2jj6L1ssSr6zGWoLacnk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760787594; c=relaxed/simple;
	bh=yXQSSIylRcUdT4YK7LNTaQehvbb09+2Bchy40jIfmik=;
	h=To:Subject:From:Message-Id:Date; b=dRnhdD2yZNgSQiBMr1VWQ/Wp1TAdQ2pVKazEtztEs/UYQai0xTlRoHnuTQhkk6ZtYUIAI6vrvpbn53+cWpE9/IWgTxmjikmnkp+RE6GOqkuAjtcHYbAhyrH9gah+7sQPxNGmB1CMdT0+ZrHdLYQMlHEVDeml1KgVNk4j3vx2zZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVuLMmKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVuLMmKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA681C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760787593;
	bh=yXQSSIylRcUdT4YK7LNTaQehvbb09+2Bchy40jIfmik=;
	h=To:Subject:From:Date:From;
	b=QVuLMmKCXwUD7TORRnMbtaZAQpNF4USk/wGvt09yZmYPOysbFkAMzJRAIrh6Qe8tw
	 pSIVKTkBUi+CJ6ZzhMsXLGwkqnPsvhmIFzS4dcteoYtXQ0lHoX+f+QUKLFct3NbCq7
	 ZB/brFVgy/2wh5x9pt6shPGp2GGZyDVuVCvr8qQcQ02MX377V3ORns/0JrjUvINCcB
	 XEhbPUMJpUuZ7HDNOYtN3neMjrUwoTqqLi7ELsLUk68onTTAkDI1rv+Yh5AN4ctEul
	 O8y81qs+dJFUMiCQXIZfammAPN5ql9Wy8iyfLnNV3WtVa/yMYocXKN9bDqJomImY43
	 IDGcyWMEcoUoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BCFCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078759358.24603.16953619882184720894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01d024455437ef84b83b2bdb35d5d368e822f91dfd2c85ef17bf021fb89084d
Date: Sat, 18 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760787593
