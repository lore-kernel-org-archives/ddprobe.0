Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2494E321425
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758833394; cv=none; b=TJrTQMggqpPty4ep+q0MPyNCwB6M5Pbxu9x1H40fI6V57DDQN2K5/Z/PP+Gb6OF5rfOOPtpmI1h1JFlEAgbJ6uAAW2heeM/dS0+bgmuMhJb9padys6P8MJ6Unn51rC8fo3lgdtSJTurxeB26vOReGQH873pyCZeeom7AJ9qqLT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758833394; c=relaxed/simple;
	bh=TTrlUFe5q6zx6RPWm80PgP3mblf9PelbwcBgQ+6EPxE=;
	h=To:Subject:From:Message-Id:Date; b=LHbwSEDJUyDvOYqDiWfmq9zFImlolm2yaOnJVAk4Bo9+1yx47c2628x45Qibg++jijC6Kxg/TpeiUrQAXaREeyB36H8vd3HQvw22FNUmt3tHwZC7H316x9uts7/UrlNmWsddvKkb8EYWBHD2FziUuL5btiyzUJRDMAVcUkZylNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8lwDJYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8lwDJYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A139CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758833393;
	bh=TTrlUFe5q6zx6RPWm80PgP3mblf9PelbwcBgQ+6EPxE=;
	h=To:Subject:From:Date:From;
	b=u8lwDJYt9nAdf23HaCChZrun2PKFZ0UENqUQSygBujYccpGrc1ytvCHfd1Y2T2aLh
	 tyGJpPqUnsQGqr9ys2/x4JAqSMgn0+IacwiYtcD8+f5GrI0B9DGAtVD0sYX9/gTRw2
	 FqF5FGrbee1rNQrIqHQ1/uvW9UYJWrDzV0j+K3CDlZSCESGljKAc2WJDWppz4GGZKB
	 Rsfe/4W7uTpx2YK/zk/arGRPVHxaRr8UzgGOcmZkcZvAEfPgcCTFIK1fHbK9Sepph2
	 UOQXfD7gEuShW+PtVmZ9xhuJM+5vHH1tE6GF6uwf1EEA8soWaz+c8/DD/5n2MecUGB
	 b0Mt51wF83E0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91869CAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883339358.11391.10608138192745066001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74538b04d1857b6cd4e451cf330bcfc5decca3f1c59caf43188d7ac2855a094d
Date: Thu, 25 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758833393
