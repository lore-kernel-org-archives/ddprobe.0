Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418B54718F9
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790325034; cv=none; b=Z3UxFaY/IixuSHsPA0F2Wz8l6KwA5aevYjLlSf96psm0oJaNpVRCo2mcw7LfjcJ0fCIj8O15dR5rT2KY5I22eQxcmM+8R18j4/8HdInH1vn/VvXF0v+3DDrXyAn9dGrvaLGq47y1apgUH/PNWglEOQ0NjxASfsPsZwFKJXOPVJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790325034; c=relaxed/simple;
	bh=EsG1AVPgFkWzt47mXnL5TvDldTYWSBWs/Kf0YS5LkTo=;
	h=To:Subject:From:Message-Id:Date; b=S/baI04xj60VZsGpsDFeCK96zTbhMWjF4YIJaByHeBXlvWY7q+dHloLoC62pry0l4QkZ5e97dB2jYO5+WUqP2jnMFS9XE4WRiHT67sarm38Ay68eD+EKDR71mRieztvQZDf1XRoLzBqh+cNBrT8L0ZK/I2/wtGsUhqgIOxGUdxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNfZT2rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNfZT2rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4E6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790325033;
	bh=EsG1AVPgFkWzt47mXnL5TvDldTYWSBWs/Kf0YS5LkTo=;
	h=To:Subject:From:Date:From;
	b=PNfZT2rgvskbWNnThWWF67/WKynCwtd/3+iif0PYTDK1x/HJ9HbWmQx8dfV/Cs80g
	 Wm0bDYFB76yjbfEnfQPoGQDgGdlEW+d79oKmjMHUYuwnpx8CL7kdk+jR0ljE3eP2Po
	 cq4SahqxO/IOIYOEpCfuMPKmly2I2XslZcyvfwdigb5o4OelhQ5VDPnxiDYogCQRQm
	 iRXZEN8/tPduILR/NIPFvCsQ7atHe6mmZCGcWf1XliboxuLTtqt6DDhJQ81+X0berW
	 m/p98j3+l5FtBQ6yhg9lKbJAGkXd4BSod9aKaRw/caUaP7MW0fXTu97c8pLkeDKmXI
	 XbuoyvPNO6Uyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B001CC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032503370.13862.16950241667355223047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a1546933191619b07ce49edf0af0090aa26a095a3d17f0731ef3f737ef3f7d
Date: Fri, 25 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790325033
