Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D192D97BA
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774075494; cv=none; b=INdPilMgkQMtxYBJ15FAdrwp4kJLQJn/qUxp4HpJTDkWny7WKffDR/0DmSQ089DNHz0LWVLkG9TLbwOWf1cBOlQjtxyDvEztHMyzsvKe0FxEPmlFmiAEhfBQwOXh2EtnFAJjUSHSmWDoNs8r0Hw21XOs3tzV0djISFb1vI/Gj4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774075494; c=relaxed/simple;
	bh=GiaVSk3FG/AbvyOSVt0uNgplIHgrZwoXcsUBuwC61kk=;
	h=To:Subject:From:Message-Id:Date; b=qvqtYS9pI0HvE3qtkcw1MzlIbHf+fFodD+8xGHuQIw5/u8zhJddSosAgj44OhWAGRZlaySf49DnMtxOJLYQu8nvWaGJ5SuAHKaVBCn9xdHs+2qxluaRmWClIuIHLNzxSyRy6w3M1YHFi4KI8QjByDnWFJINO9GUCK0kioi9XiLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cpl/Hezx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cpl/Hezx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F610C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774075493;
	bh=GiaVSk3FG/AbvyOSVt0uNgplIHgrZwoXcsUBuwC61kk=;
	h=To:Subject:From:Date:From;
	b=Cpl/Hezxvd97YqaDPL/Jm+LDb7Z1tiX74YEaop3SOlQVhT2xGYOU9CKBbCSQIxCIC
	 T2bxHakY7fFEvX8G8z6GW8TJy15P55Oxsh8ydYWDpYeWIsy0/1RkMg2CXL+VkbeMZf
	 kB46sXjvmQD/ZupKlWUfbv3I90BOFgYpQn+kXxCRnM+94l+28onfIp3ivq6++iL9zQ
	 eIMueBRsWdW2xGRJYUW0b0vnvBNKTYhBCYMhbg0wBOShXM9uTONjoM1dK9NFwNnUys
	 4gmjnL47GDvrqmc26dvtLC6HfZwznbZhyWmh2i1XU2ECSeGbAvxjctADm86O0WsXQj
	 8cNw7q8ZSnIGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0B21099B54
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407549357.3406.7041873547017606317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e388213831b6b5db0437da9125192eeda4161445a1458b66cc40fa5a285c426
Date: Sat, 21 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774075493
