Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515A926AC3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747265394; cv=none; b=e0kUoTPGdkC0YWADJadvnY2NEqOr87lLyHP5eVHiOw69RgSAwUmGUIneCMMNQzC60BmOfBJS1qZtV7CytOSvYjiJT1zI/xCU0a1ggWMIDMYJ0IkPA6aHKht9yYGW/66AYjKrUP4kEDs5A3ewBx3Pg08dDXB7iVi2vXNHkqsuC1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747265394; c=relaxed/simple;
	bh=hz+YWALW1Fhrs7HhGTIjDVMG/cRNLz5MV7yn2o7UPTs=;
	h=To:Subject:From:Message-Id:Date; b=CZye+c4J4sie+N4IhVnJXZZSdQgPKkC6u4nsZiO4LeHBoSPmIwi9vV3FQquNuGw5mB46daC3BhNfeLc3+BMuSGacy3E6NNTCnng7HQC8KYDf/hu4poZE6Ol/OlzG3CG/V9fueNDS41RvuU/crsp/P7duHpd3OSePgx4YtPcCQNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abr8BB58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abr8BB58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A451DC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747265393;
	bh=hz+YWALW1Fhrs7HhGTIjDVMG/cRNLz5MV7yn2o7UPTs=;
	h=To:Subject:From:Date:From;
	b=abr8BB58gUvkqyZw+jzfQzZOs/ZHQvkWddLFV0nHR0fg7G4AUV9T9BIUaTsyTYNIs
	 MsJ14U6Za5eNgezEUgeRP41q6d4ZHDh94l1EhCKTmoeb7Vcs0oFPIJ59PQMP5q+g8F
	 SVr11Nc2FKGss1kHiscEi3Ub5+9qQM16bBWNpJuU0wASKGpvdMKJp9ZT9+hivbwe+B
	 clu7szHqEHfZOPHuGnfmXaqAWCQUX5Sg1V2eiidGtz6qHw5sB0noox9dgEWO93w33T
	 yqXkYI/2K5C9oO+9WV2Y5Ud6VulS3SfJO5PnufR0Gj2RnSlC0yv/uLFoyRlOlM/q0G
	 h7FGo+UkEqH+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91351C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726539357.20165.8356862196676818327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fb1f701331bc892d5b04181900a80c36128d8d85f74dbfa97cef957c9a7dff
Date: Wed, 14 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747265393
