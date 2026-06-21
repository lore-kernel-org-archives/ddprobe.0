Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D7222A4E1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782031594; cv=none; b=sX56isNXXUMPAV1QitxS7/PpOaACBOOwbf26W3qgrLVQxzEYwx105NJyz1D826Izxb16WnEjQfCnPzfcqzJ4fr1bnx+0RtbXgEd4q3qS33aTFF1E93E1YdH+oGWIg4L+V/KMSTGdtDPoAxOaRrGxwcDbtD7BvB9SYbaDNxEHJOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782031594; c=relaxed/simple;
	bh=foF8U4qhDFV10KrLp55Wj442H3lfLWhrvX+BwmF+LRk=;
	h=To:Subject:From:Message-Id:Date; b=QTw7Yt3PSY93bK0yTrZ4jvDeYHNZjRwlF2euW8mP5SiU/xLSK2FqNRGB1/d8auqb4TjKqa9tLyaYtrBNtl/EHt1+Z+IucEnCtcXs/ynvLNOW3jnNNMEF9NkbOLpdDLDOIPr2AsXxWcWHC6EMKqb5yBWRLsjhy0THB/AN42RI+28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOcEJzMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOcEJzMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB061C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782031593;
	bh=foF8U4qhDFV10KrLp55Wj442H3lfLWhrvX+BwmF+LRk=;
	h=To:Subject:From:Date:From;
	b=cOcEJzMFR6wkra1cZzN+NmvjOlO8bogr/Pda3z1Ql5kjoG4UMTLYJt4cozpmberJP
	 uMGme68NdcZirWhVmivhelItsbIYuLEKyh6c5gE+iK0rLKkpo+vwX0Yzjm31BveWmY
	 HX2agyt4k5QN+z3kV6rc0FGIwEHos22J/IChFjQ83jylk9nY72v7WcMod2HiD9K4/E
	 LcldZXT1ilSpwPs87oUIhr3lfFpVtfBei6AEVp33vKMhsDUWdtB6mbmNSedcf1Oop6
	 W5sQGsputjinDHaUu7I3H9y8BfuEGRc9CK/4DnIZZkOcaG6sdbaiMoSQENZvGbAhm7
	 eRzykToxz6rEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FA5CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203159372.30870.7617024365337608326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90af7717fb797704bcaca3b6d90c0ceb16c6ce6d6f8b0deafbd68643e7c298ff
Date: Sun, 21 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782031593
