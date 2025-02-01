Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD7BC2FD
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738368955; cv=none; b=s4zGDfwILMfHD8eV4sgPk26RFDXPrd/XZOHhNMqayCzHLJrKC0j7Q1C6p0F2GNbbV9Fez7LHF+4/X3DWXeDoPBdyu73dewUIyKlnVyeUdVL67WsqfsdCvnKzZTJrFYZdLiK5m4Q6XOL58gUEJD/dALyaObd9noZ2I7Uw7wNOd1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738368955; c=relaxed/simple;
	bh=lm5R0t9FxjKqwtkE7WD5A729FqvA16vdvImJDHiBI6s=;
	h=To:Subject:From:Message-Id:Date; b=Gu5fEHUGqTcYoXTHa4rFK2EapMQoPxvKw/qO7qNZYuL9ChanAjQAFg6UtMAbdgbe7Hq80IBOr32xMAB0qgNk3cKHbez+aR8ZOA7A+KgKq+7eZngx+Bb/7sM8qV4YJnpeDAni+IYoGFJkRJdcX3iSgWOMoQ98qlSAujQPR286PN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yg4voh+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yg4voh+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C590CC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738368953;
	bh=lm5R0t9FxjKqwtkE7WD5A729FqvA16vdvImJDHiBI6s=;
	h=To:Subject:From:Date:From;
	b=Yg4voh+GJCpXU9KFHyuFSFvhtj2ComDo2zp/Oh++oXDOXPhkY4nSNI/4nlNvgzlT9
	 /gybnPzZKXJbuFpMiImF+XGWBzFmOUHzgWTno02JgpNZYVcRXifRrtKixiDDfvDQvp
	 VCSiMuuNEL83pLx0bxVdIXDEroRpkyQ3FidFF8zKE/fptTzGBuPJgSq9ZtzExVV7Sg
	 aFwKI8IJXeAK0QoRqGrp4gtCYOnkvKBZ25DkDgCti8LPyAsdwQLBQHs+BfvMLYFW5G
	 KEgicBjTjauFMq73MBni/VmlbocHcXRoRJpZPltcEHIvSghTrNPoogn6Qbkql0bOxz
	 bqfj+ELKerTMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE186C0218F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173836895365.2022.15667133788087956246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ade959713a2ed6d0a163beab37f59e7e3f0bed21e8119349fede9980d3867a
Date: Sat, 01 Feb 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738368953
