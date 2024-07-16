Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E56125B9
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721104523; cv=none; b=Ex/JptwFwwWBZGbOTbQUrj2tz4NSFs5kTVY5P/ORUuAyDF4H4bpo/lWSUbUFVFSWP+k7jytC80sTmAIbszjk2RKIBk51SKuoj1I9Ol2yOHiYIdl/xVAOram0H2ePgUFKinKwOE1H652N47sOBW9PPiM/O/WcsTB/xL59vb+QgSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721104523; c=relaxed/simple;
	bh=Gs0pnIG3FGxAXp6aSuEcy17kYMOzYXmOgC5l8FN+kqw=;
	h=To:Subject:From:Message-Id:Date; b=NjAraFofL9XHiMqPqS5AHSOUStQP235pNB9qYPJ61PZbye7Z7nwjJyBB6cpV7yQsduNRFbMXGTsxHh5T7UEkVmAN2I5LU4+I+tK4X4EVMPMMOyYXMOWYDWdckt0I1RaJAGF3nxrMw5sjy94uFxemue+5hR0OmNr1Bm2gAqU/cOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBMkf6Ur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBMkf6Ur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0C3BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721104523;
	bh=Gs0pnIG3FGxAXp6aSuEcy17kYMOzYXmOgC5l8FN+kqw=;
	h=To:Subject:From:Date:From;
	b=TBMkf6Urse+ZulW4ON4LigteNP5XiYkncrtSOR2Z8bJKFBvGQ+TuSpyEITTMSUiag
	 giB02k8xizKAR4IpxAO2gvWXnxuTZbHqnvtQsyIGf4DUvj/iTDkBvAT8U/vGAeJI48
	 +0DJ6ew2gVWwQXznq3xMdwaYuA7Jh3ZdWcE6s3SM8q2F26hHahgVk0z0qI6MLsAhD4
	 UDGCe9Jx3zWj66f83SZn1oVkXJh1vE2tV6U7XVhyieIJ+z3OZMMMAxCCjMhHfGCWty
	 zkw2oOHcWoMW0EvO2hvBi0JoLjc4BRf8mLGt4gieBTsXBzPfeizRG4KgQ1jdgbFzKy
	 aGy51M5cqC0tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5637C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110452283.5395.1357784062406642671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c216aac88f2586a45fcb6f385680f50ea2496439d4b29c46780a0fcc301646b4
Date: Tue, 16 Jul 2024 04:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721104522
