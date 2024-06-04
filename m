Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8D13D62
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717461923; cv=none; b=YjJkr5zic0FVPNXqYhs7zw/PPsZl2okeEAanBJHuGe88n3xCNSbFO99dnNpiyoyZyXQdLArZ5SB75o+pE1oPtXRUkXJU/4O4zzXrCtbIiPUUmQGJTElY93rY6KrFXcViXT/MD8qqHE33UsXZH2g+faoxULV81cBK3oHGdSn9Y3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717461923; c=relaxed/simple;
	bh=mK6L9AWR/7jPd6Rv2cv5VPbcNuVBgnmD/HFTZdzoZf4=;
	h=To:Subject:From:Message-Id:Date; b=a063NKldWI1bGY2lvECUt7u7FI9jhRUa4av1xWCUtd4oQAZ/v1kW62XZxPdrv1wceCPcEUiwXPa23seUbGJi37L6QFZUNgyKRpZhqGRms8L9dX+iv1G0o2LPEWNnaymk3HwCOj2oZhxtPi/5vfskLfFAEd18+cW6hbHHAV8dhH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+6CqlXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+6CqlXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB821C2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717461922;
	bh=mK6L9AWR/7jPd6Rv2cv5VPbcNuVBgnmD/HFTZdzoZf4=;
	h=To:Subject:From:Date:From;
	b=b+6CqlXn5PBFgnb8eTMPWM18uHpbdIC0Oyrm13+/mw12wh5fisrZM97d4UqVvkrtf
	 TRq/SmbyRw7fFTphLrNcErrSdyPfPg5DYlxUseSzj8hrZveFBMDXAwbK7bk1avdpDJ
	 EqFzntSSwOIDTJUqQp/0/wgaL+mYeRNCg05Z14wnobPBO+8wWB+t4amuExVf2CtbYK
	 wtFiIgHVjYRfrbve9Qh5afuTr+L5ZK6Ku/u2xQtpZkAm0WtG/J+Y9kWrmtu1TGRK9R
	 ngt1nmYAq5WtOc1us3Fi6Jca36puofBy2FwpV7aBYHnij3CjdB72ORXrfup1vywcDO
	 IWdjVxaDuFsOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D43C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746192279.2703.10617975542551423549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81b569ce3f57effea9ec7ef3a076ce3b38722321d206d225015dddf2076ff56
Date: Tue, 04 Jun 2024 00:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717461922
