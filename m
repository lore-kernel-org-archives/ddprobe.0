Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A1B2367B3
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751445594; cv=none; b=eXT/0FLX1rl6JoH7ogdDjxrtV6Bbz4bkBjLxqkP4uIISko3mrgicjaFAX3CcEa3PLXAQfPLlV9nkPIp6XeVDnUYV4bBasv9UMne/UFabdTN11NJkDdAMBYsDoHA9U4UeFkeXX8B9HwaDiBnav3mGlPmxF5qjF0nu7t3J/XqbAxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751445594; c=relaxed/simple;
	bh=tazzljHFJPHmsKdPxaeoT3Sr3ej+v/BqENyeZPA6X78=;
	h=To:Subject:From:Message-Id:Date; b=Mr3h2/uI/zqXLno+TnBpqMXkxTyDnZ5WwyAHu43dc0GWdhiIUO/SAV249ZeSZqNYN6FfHNAf0lTJoy8AuiUVSgpUluhn3Wm+91ecrNq6UAoiCLi6EXQYvHAIcD5EgECodDiqd4+5fvShOzh/Db18cvZakgi4D5aTU97jN+Nb7WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4D/ytj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4D/ytj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD61C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751445593;
	bh=tazzljHFJPHmsKdPxaeoT3Sr3ej+v/BqENyeZPA6X78=;
	h=To:Subject:From:Date:From;
	b=b4D/ytj8qbico5FosSyHmdryJVsQvoF2q/K1sAjqnmHJDogesdon+vOei9A6c3U/i
	 n8P7joP5sfnWxSvn6zrrLSwrwMYLTFdDv4xINVSd0k1HTmGbUCbkSOfAKWuYAyqrKD
	 2C8fnmW1S2ptKAo+/OyM6e4BOLiaTKaGTU61PJHeM+bneWONVHt+FFPzMYQkccWnnX
	 MJv+3XX8JF7iV6AEXBjwcBYs4lzcvlhbZfPXu40lq2sYvXKMVNUtaojWzPlEMdDdqD
	 iYcxkD4YNUNEYrVaCKY0ThUntzb0mWrTLM3Vu9T+Ep1pZpjyHqshNZitSlSCbndpxk
	 1JK4YzniCNFAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF9C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144559358.15977.7810723737649565776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ceb2d7d4adab847d9108085cbd419f14ea68fe4c493765a2d36def2263b6209
Date: Wed, 02 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751445593
