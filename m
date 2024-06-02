Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D3D7C6D5
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 23:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717371323; cv=none; b=T3TEwpXJr4LQXMntcGOXAjvUH0wdXFCL3WOkNkKpaEbcW+2Voli7n+cNyX09C8KCXdj13zM978sgPsqMGeXigfCLFM44xpWQOo43cpug6W5KAhAbF0Sl7to+hyr/LyHIXlMlYUp+abkxCNrawDK9PqtUgaZIg6b1AMmzAeFBoag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717371323; c=relaxed/simple;
	bh=IT0+COhQNHpXnWDRugSvYFMEtNCHTqoWvH+waRmE5c0=;
	h=To:Subject:From:Message-Id:Date; b=AOFSb1B4kMwoKCdrb0UBH5gfJTHhkJufpWmmbXYYP0uYt5W4ietaspqII12G2DrDiMeFMBTFZchGRRF4mOo1RKRqc4ru2sKbBK/AtUNo8+7xlpDlhfSACcKX7aBNiNCTgtsR3lAhfdZWzdT59s8GY9xn5jILikUQHzcoh1I2EPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbQJc1MF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbQJc1MF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B01C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 23:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717371322;
	bh=IT0+COhQNHpXnWDRugSvYFMEtNCHTqoWvH+waRmE5c0=;
	h=To:Subject:From:Date:From;
	b=hbQJc1MF0NiHgQZZSOJ3spVbNLMY3J+NWJVKpLVzkO5+wUYvRepX/qwWS4X4Qs9FO
	 BZ6kgBeGsvbuBGitmdhExygb7fpK0cCDlkadkoUEgGYFYhusNaf1KVpLH482o3HVDq
	 1McuYRZ/2e1INRfxd5BSNosygZOZyKCf6DSi4dGPjr2lwRStccLg5mAeASa5hIwENc
	 1hla3QRpSadYe9h3V+41YVUb/XR2gz9U4jYVgMqB6mhDj9hgJ7iXhmu9oC0pfAnhi/
	 Hm+e9CkhpWlEXQhccIFGDaNuyONGLxRBmxcq5ZJ7epNm6v6N2zEpJMU7buAIvf9XEs
	 3fZ5qsoQ12cPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF174C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 23:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171737132275.13280.18422068347472738397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a1b95404191ffd14e0374ce187b33c4b4dca16181f69fe898e28cd8ee7c224
Date: Sun, 02 Jun 2024 23:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717371322
