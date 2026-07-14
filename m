Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722BD46AF27
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784039314; cv=none; b=h+B0z2TSu1L0XBG4TE18regieZIvmo3Pm+p2SRVtqZnL5r8BJ7zpexL3iiMMmjbSjsO0O9qmhz/vNOlYU/YNDhJKtnMRHVThvK8vvonTtthg/31sI+WCdRjgUO7iMY7eXy9UCTuYQM5ZkXcanTYWoUOthk6tfrI4brS/lFGQc8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784039314; c=relaxed/simple;
	bh=gPWAXIWoSK1xVXGTZPE8hiapKFslWywJ1ItZLVYlh34=;
	h=To:Subject:From:Message-Id:Date; b=DbYwnOSwC/6a14KfWUuE+u8wTGAYnOy21pKitvXaKsRwGNeWDfLxkteU59jTj/XFT0R6cEOUwxfzllj0Y6AJahFP2jh8nXC+/O03J/WjcukurG1w9P/YqK36s+DQYW0Z90dIjdTBc5G4hjIAh4t3wy6f03B3Th0sb4qsZhqpV08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SH0OrP7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SH0OrP7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3F0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784039313;
	bh=gPWAXIWoSK1xVXGTZPE8hiapKFslWywJ1ItZLVYlh34=;
	h=To:Subject:From:Date:From;
	b=SH0OrP7xaxU8FaoofZjRcM0Vg71CFP/yTn9ap1hXi0/qO6wz8PQbUb2O9K07qLN5k
	 y+MlXeZw1tPoEXajnj/JeM2zuJ7/7TpEAgAcflsKd7jerupZiGNvrSXnXYV3sB877W
	 B4omX5s0lozzWomFGJzw4p8WH6dJFG2Kj6B28HncRYKiP3Oi4lmjrju25hdcwuah9j
	 JhABE7OY5nRB3w/K958xI0jTyoGddmZ5hnQvwbUNz47QFCRv+RFt91lygo69CciXsu
	 LU1MhBrkUpP5clII0DM1n9qpYypIiuOMzkgwqxY6pJoGoqPjbyhF7fH2PphLFD0tdj
	 w+7yAkB4a0DCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A27C44508
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403931368.15040.6621306920032381854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4930393042acb19008d705810bfdcd97c765b0ea6f06194adf706db33dfa63c4
Date: Tue, 14 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784039313
