Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3260815688C
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735404954; cv=none; b=LvnbzMzXtgWLmxKPpnGwlb/0UdNqlol/az2t93lgAm9bAzRJxYVffGAMcVWhqnAO/aAo2FQoBUWj6bzLEqoJVk9z01BpUnFP2L9jhl6+MCQX3JmgliXEcIDiTLx3gInfPo3mZg6OgdbuGGcqow46Jmq1BLTfgbxysMOg12Uo2No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735404954; c=relaxed/simple;
	bh=itURKCgR1z2eso/8MoTS9nxPSbiYkTIXFXQNX8HpiI0=;
	h=To:Subject:From:Message-Id:Date; b=XUs969Nxjcnjc0CUEm1yoPsnTiMmLqMAnqlySuPL76gKwL4bQTeZfV7cFKPTEO26NHYgt20gesyqWl5QXWmwZCRIz94IO7U8qxEr1JJxUpdD0pZDqXrO5/6f+zVxYfLFQmOyGFqNaZEgMu5sxuUcIaG4PikLEdcECKkmjwnyGkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R71YHP1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R71YHP1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B287EC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735404953;
	bh=itURKCgR1z2eso/8MoTS9nxPSbiYkTIXFXQNX8HpiI0=;
	h=To:Subject:From:Date:From;
	b=R71YHP1emznocFA3ZUMcRAt6eN9QI7htn60APq57IVSlTgHuG9L41g6MYOFIIIPbl
	 9na+FwAOBElaSlNz4cvTPt/Y3oDFX/nz0eoTdxDj76je5J+lqF/SuHxSgCTgvCR031
	 ypIZXo4dSTbBl9BF/xljphioSzFgbih4V3Gm58yDcDdqg/QQxwqsSx+H+7jOo4Drgt
	 nEqACLcrHUSGjaClFkdV1w2aUXqvb/q3uZbR2Zeua5c1MzEDjvQYwhSCB2ZnoThAEJ
	 sq8abr/6+rkKaPus80UeIVJGSb1L7Hp3/mA6RXjqHAl9rXDW0953aAwEk6zw1ZnKak
	 y2v6fNpewK7Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9E6E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173540495361.17401.14284278768797798979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d6d396006078b80c8fdbbd6dbb0f649072f3c21b0ecbccfa177c78f5008210
Date: Sat, 28 Dec 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735404953
