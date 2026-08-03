Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD2030DEA9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785744634; cv=none; b=t1KP9sas7kN35xvz9ylcuF7SiORdNrY1egj9/CQa5dJMlt1kdcMi40y2wgEM7/BqMehQ0QghU+ZfaI9UrG0vUZaQ0dmr+fgqaSXptexq0om+Ve4W71rGDqHDUozVDvfccaM/sn4nWJe4j1fA8ioPvesmtAEixn9ItHE/Pcjcrh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785744634; c=relaxed/simple;
	bh=2S+nM4ZhL62bYj2E6rcUzKbbppeaJ2t7HR7V2NfQh6Y=;
	h=To:Subject:From:Message-Id:Date; b=UeuLgJn3TUivoho9xZtHZd+2mWLQPNXxUKrEz0bB2OSfGY+kqeQYaWZUYg4CLe9mp9zASn8LQAXtQgohR7rQW6skFHRqRMUo5Z4tnHLKc8qaZozQDvUmabTAmFiFExEBpAkJXrPrXcq1dfzBROK9FAebnKInvzWO0+x9oSKvaqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THhH2FTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THhH2FTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE325C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785744633;
	bh=2S+nM4ZhL62bYj2E6rcUzKbbppeaJ2t7HR7V2NfQh6Y=;
	h=To:Subject:From:Date:From;
	b=THhH2FTKBRmVbtNX5jP47nxKi1RMJFLKvOpXeCWdAl3f0HGmTU1ObbCSmUqw2Vaxf
	 N9y+sTRWE1mISfeRA/Z+VT8cpVN+YuWUKkbhMXR6ScQ8dxKCLL8jZy/lKNxDrLUuaC
	 AZqgKpP/pzaCnu9LNuQuxDRsxalh1pPKVv9IKd5/zbjcXouEJCKHar3xJv1/397tqd
	 H1gHVrpQSxzFcHvV4nEKwNBJjc32Ts5MrkArMwWGawydP6sDFihsEiH+F5+HGjb8hb
	 AJS7R3P6Xp6Nstpnr39jkR6VHZRr8qQ7zY607Z2D7IHRGkvPnz8kAuDaPPgtYzRwso
	 qkMzdkMObojqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF22FC55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574463370.19617.3504079441421120725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91cbb9c9ab1c2da16e701bc1c086df259a8a6ccedaeefda5de3b5b4fe132ea0d
Date: Mon, 03 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785744633
