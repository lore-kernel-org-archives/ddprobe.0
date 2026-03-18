Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DAD3DB623
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773845094; cv=none; b=K6sxKlrHQdxF31rimIkPDbJTw6MXtjA6uk8k3NcDiKWnblFukAdLiPnO27oxpDek9eg6wqVuT48Lmt7fw1JuneYaqF0hddr51N7JFMT7DDaM9ndVlHmFXq29j0qfm8IIUSOzhHZ1vxGgcH0wqQgA5gklTPQzmgXlItjyRAWssvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773845094; c=relaxed/simple;
	bh=zkvTw4Hm7Y4JhHwLqkW1AlYzHJOkFHHd+JeS25gQWgA=;
	h=To:Subject:From:Message-Id:Date; b=BmNdiYdvSOi4kIG/GOR8GiFfP+5sRClxKfkZv3KZ3dlSWs6agIKagghCb6A3niPd12L7SeaC3XrUgVbXthlX40RUp0yoSFfw9mu8LFP6JVVtXMuic9aHDB+V38DjC1wRvppFt8kAk+B7sNmoDgrMHF/TF/10DL5AoImdEW3g9Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2uOkQqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2uOkQqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0646C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773845093;
	bh=zkvTw4Hm7Y4JhHwLqkW1AlYzHJOkFHHd+JeS25gQWgA=;
	h=To:Subject:From:Date:From;
	b=X2uOkQquSoYxHlhjKI9WGQnSRKVnf28hPSvooV2YPzfiYti9oOetlznbWf3h9/fGq
	 8xDBw8FOEvC9qVrYkwy5dgll2OhDFjMiNwrSdJgYSc3JyLQlogxJh5/PWqsb46n+W8
	 5Bsx9qbCax4tje40qkB0TvhVhc9qH8QOemGMhTfePUB+5d4clm2hWuFn2GptduUwFj
	 UtFMkF4Ah1W0dMQzY9aFt2SCicQBBxxBijLD6N+Ee7JIucnQwx7i3/hyKi5HAnDCaK
	 th5gfY6G13v2A34pEBBJQJ7BmqJs3b2DwOe5kELIDDK4fgqbLd9f2y/GUzVWnuJHXR
	 NixOwb0R14eeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905DB103E190
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384509358.24578.10721697490653831120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c07d069323d1a3cd17a4cb3c153fd68f359caf33b44e1c5a91faddda2f71be4
Date: Wed, 18 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773845093
