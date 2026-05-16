Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E181B983F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778938834; cv=none; b=Bxd8rXVVjM475CEBdAhQB1NsFn6Dgy0LjP+ikGcPHivfty6dmyDCVqsoXg+o5OgcDRmXpwzTDDux5TiTMQzcvksZYsJF37b27xc9tdFt6NpSMvTmJp5YfYdctqws6o8kU/pgCYSfT+sv+XaeFTCY/33ISSWYB40s2jkUAff24v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778938834; c=relaxed/simple;
	bh=UyjFlChKwe0I5ccYuEsMejhw7zKaA8fbvtgy2KO5ZUc=;
	h=To:Subject:From:Message-Id:Date; b=II3kd0i69Z3G2pAPJrhOp1kMhIuzq/NoqWXOyP5UCfI+iCaj+oMXxlJ6QET1Pz+Rgw7nP7hFLrTJ/lyAsvW4qwNHPNSKRf6zoMXCrPgEIa6lBkLXYYpBO+/6GegdugDHmMIBrmWzExV+pGNMzthG4jAk9Ye6sM8AMN2Wk5ef/NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plhpN+0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plhpN+0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7CDC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778938833;
	bh=UyjFlChKwe0I5ccYuEsMejhw7zKaA8fbvtgy2KO5ZUc=;
	h=To:Subject:From:Date:From;
	b=plhpN+0we3aIaHW5ZY6w+1CRJ5wUXXRt+rkD1Et6hS21j/mzkRcJEVY27gc+74JZ+
	 GmpKgKr6g3QlooRSqrmKuGIE4cG86A4b8QBz7bwFMjeI7RW/VAcao1rZa9p6C/ymqn
	 EdOjahj52Pk0KH3Ib2M6Ux9v9Ra3WglCKdGojKJwwT296Au39X4cNsm3DkCRHsGEJR
	 Wc5SCPnAqsL3lznqz/a/rG7beLnjWdkxuW1QhYbwLpINZ26FbAxlDz3v+XHzZ1pB6u
	 82/Le6kff3N+X7v3Q2rS9MeAUo/Tijn1sWIn6Evyb2Hg1XilNqUMavLFktdoxHs9Cr
	 7hsZmxvW1X9XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF41CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893883369.26587.9729584263344898656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b430d27eb56a2601565652f855e34703bc8730d202a236ef6a52294f034c5507
Date: Sat, 16 May 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778938833
