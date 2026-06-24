Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B32E37472F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782333454; cv=none; b=Zx+YycMS1owPWP2mZOlw08bIFQz7PMb5oJbq9/EJeccTVPamvpGzQPrL4l9NjoJtMdN3TghfWkDPd+lY1oXGuwbz9KJGjj0Mwlc8MhNisnYPmyXtBjLNOyPCouAMtRY3fVXHojRgJhKIXbGJJmsQFo8A7MYfrV2kwPwdEK5cwNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782333454; c=relaxed/simple;
	bh=awu28AnoSkBRh35kNatcy3m6zk1Ig2X67JYj2Vr4zn4=;
	h=To:Subject:From:Message-Id:Date; b=aYby6iCMZLNPQ1Jsk53EGXpyyEkABjn0yGgAo4QwEwIQjOpvj4y2JTw5wDW4iidromZ+sWKBvPdp9eNrp/oMFiBWblIDYFWuqy63JIUDAQFZjpjuO8VJViXnPitZIyPLwD3Wz8N89oEwdhbdkTvNpCSJ6WcpZBPvLceTcSs2IAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxmzbmS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxmzbmS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B2B4C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782333454;
	bh=awu28AnoSkBRh35kNatcy3m6zk1Ig2X67JYj2Vr4zn4=;
	h=To:Subject:From:Date:From;
	b=GxmzbmS+j9FPW3IgJkJ1XncQoUuqoVaDx9r2rDz7z3+F56odgCgbne8Y5tx2TbMaR
	 125msfckbk/hyDywUhlE4+60FuGKiFG/ktjUnZY3KiCh45IH+IwQ6C6JQVL1mRko0W
	 Pb4UPEoLbZYc7f7MbmJ9rF9XoClliwJ8EH+BsP764uBZmZf7Ir9FQb3zg3Q9m0uVO9
	 SYCUsGFGBj5dhVuSiCvEbRecSMIA5nsyqCmaHCwPCZ3hywOjf2kaqGEg0yArUpRXzV
	 Kr6eD6T3HsPJnRXSrWLnSeb4fVF1wh3Qur+o+Z5vGmRRCFMKleBmuYxWAVdH6VMROn
	 iPZNX1YK8ZOaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF6DCDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233345373.24081.9637130815141990104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103fa14b7a4caa7e42503b36dd6c2455b25a627f871c85a006ca858faa13ea7e
Date: Wed, 24 Jun 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782333453
