Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE5F379C58
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785553834; cv=none; b=Z2mvKDwcLxkIIcebWKUzbPuUuu5vtg0PICAn/SId99+ndc4jYf9PK5POTUYw3rBuie4TrYOChIhNXcx3LEtng/ali6G3QpwHda+o7tJviRCYS8BUaBLatDe3wGJsNn24Y+t8+qx4BeWoIMCM/hhtetMjPKisNXF/C1+WxwOapCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785553834; c=relaxed/simple;
	bh=qc86qvaJXD5E0glmcolisjUdM4eEN19IoKQPDsKZ56Y=;
	h=To:Subject:From:Message-Id:Date; b=Xujl3lx7lZYr2q+DbKRyEXbZkeE9eEIUC3eSW9cKb2BQ4KwTM0382bwDCG2E4xKeCNwWeLzRJP4bsPFcvLR4KPu6drb85sAPnHuijPHzBBg++WLsgl8xcIxPZ3bX5A+7vorfe3bfpdHfZonxWR3H2PpPfswPpBU6TaqF6BBW8fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVsM6iv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVsM6iv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A63C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785553833;
	bh=qc86qvaJXD5E0glmcolisjUdM4eEN19IoKQPDsKZ56Y=;
	h=To:Subject:From:Date:From;
	b=tVsM6iv1Gd0ol1U0veIyCejTHjvhN8aBD00CpEz4q7073qTNV3bSVAfMvIrJ1gSox
	 0KAPNm83rY9MqUNBS3P9p2Q49PMBZ6FvdLF23rmYxV7gbdXNDM97kCGFQ15X+wQTnU
	 nJg8wrEnnXwWbJQ08+WDw0PlcgX90avcgsCC/HIggqc8WUw3axhw+o3fbc7fl4GI/3
	 lGo7Fi+WtBahDTe39feZD37eXSJinIt3AI/aL+Oiau4spjkccdwGAUk4wrocFIe9G5
	 ba8hbMHP0l1Gg0ShFzgCDnTQug6oXKM8CaLocnr+L9kP2rM6BI8f3WsadspCFm8VVd
	 6qSyxLao50+xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE97CC5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555383368.26969.16042427161604218642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a872101bef78777ef6e45699fcb3072aa1c85782b82e6e461101dc050b8980c9
Date: Sat, 01 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785553833
