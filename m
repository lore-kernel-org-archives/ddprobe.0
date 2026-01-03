Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA231A2392
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767470634; cv=none; b=miOtSWw+EhP0yWLNDXyO73RhVJ1HtnHS4wNbjZfqIdKOw7ljYbPfuAHia66vBmAcWmBnt+9usDpA3/iehpV0LYfTDP3M5doTN+BdJZuZwAlwHGJwjV+14RuAchzQEDw3oFSwm+2sBLvc5nM0ZcZFXklbNn3nPIE1xbfMQRmmWUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767470634; c=relaxed/simple;
	bh=0xDuI4BN4C5vrgTbZBsfUBEgsooBF3GNqwxJsRbivis=;
	h=To:Subject:From:Message-Id:Date; b=rjs/KNjKfrC0T3pQk7pMw1dn9LPYwCnI4FNyB8QVdTKuaAvBLMQguqA+nuQHhEjwwkH5Cc9ghNcu0zFu7MD1VQdxwluR2ohNQ/ZAvpfOXNkj0uTCVSJ9hxGx7Sf5fXAXl2Kn/P+lz6bD40a4XDtJdLfh230wq4dDQ4xrLypndyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjLzRKKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjLzRKKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A277CC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767470633;
	bh=0xDuI4BN4C5vrgTbZBsfUBEgsooBF3GNqwxJsRbivis=;
	h=To:Subject:From:Date:From;
	b=ZjLzRKKum83zQzSXapNaKR6sm4yhj3qG4QeyYVvBHy9Woo3RMMI1er8epY/CytI/y
	 J9wopQ4JbH6HZSPegPxZX3wavmDDi0zv3rwlK1C4YOwydf+XDRcm1ztGF6tdOhCfAJ
	 2m036hFgFk7ABnfdOX/EDsNnz+82SCjMd5QXq1d4U9S6U5fSFkrRbKEX3v8NLL89Fk
	 XNhTrLrD38O0Mq63Dx1lqYV1rJEFZy96ceql2DlYqfO7nVvKJXVGZFb4Y5iiR6s9oe
	 6bFlopYCVVy++DiaQIR4AgvUjAKUDdodSlmGLLSnh3fFqP00jUURdrbrbQYpyrNjDD
	 eUM7sFDLnzGXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90079FC6182
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747063358.22890.16533002406787421122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1535fb14d1943ff6714f8b191c19d4a58ee34c301d40329c7fadfe21aafe091
Date: Sat, 03 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767470633
