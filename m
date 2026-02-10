Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B8330BF69
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770764034; cv=none; b=oLf/IsSag9192FkMprEOc2kx07SiHTlcOxm511h3tkM/NyYQN1SZkSCfkn5uKHmHoFJajucRrjyTeBVzVKeDXnkdPS47BEdkEvkzBegmcg4OZZdYnnsrZiTCOdEMvZYxCyc19Qc063fkWtY1r6syY1pHQUlvYN9BdJieyEr1LMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770764034; c=relaxed/simple;
	bh=+/ITb7mCr8a/eIb6Y4/QjeUgkM7FJelsfJs5ENd8+q4=;
	h=To:Subject:From:Message-Id:Date; b=gWc7nqfdy8OZG6HIDHuT4xUJOnCoIGFI6XAWoVv44Tbt0xWYlyZAqGwXRjevORWLHaZtG/e79cQtAoYtwHWpvwakX1yulqvVybvQ5RRuJVAX1pVg6QPcJsKrm8MduPQXYuFYdvywp7VGo5434Q/alQsCK7TKZytYgDgYBl7shJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaQxNlkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaQxNlkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFA1C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770764033;
	bh=+/ITb7mCr8a/eIb6Y4/QjeUgkM7FJelsfJs5ENd8+q4=;
	h=To:Subject:From:Date:From;
	b=SaQxNlkE2dI4eFkOVLIkCkGEmFJoc0qnOb7lHctCDGhBNDtmMbQ1qrnAfYLJsFjGQ
	 Rbzjt7a57J2lksJJu7EJVRFQ6QT8icyoI516Cj7m9SHvs/NVJu/HLEojkH2x3nBsNF
	 GUWyxXBoUIAeCcWi7GlPhS15l5r2ytMPXpJ306lFI2CCbQWT5HhK806u4zpYRczHhc
	 2Q/5hT8HZNHOQWfWpJdi7uRjZXShLsiC1xONfCu3Cy4wgAjhtqRbp+DwLrZ2ohTg1E
	 AnHyMZwpnqjIAaL5xWcmPnaPRLWNf7Jx/JcDrMU4b1FAh4lg3CIvohGQ868p5I68do
	 IKPa6of038acg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDCBEB271F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076403360.17920.10320505430192122126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f8a559f8b5b7b34de951b179ec4a00daa165385ce419697067b10e96fecd1e
Date: Tue, 10 Feb 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770764033
