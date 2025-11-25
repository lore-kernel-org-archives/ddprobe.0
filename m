Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E29E125A9
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764046374; cv=none; b=Y6jfozKd4rMOIy8whFGrftVjV8TNN+aqgFkxY4qs2q72nEPRsKjfJHhMUuMKcpySiR3/P/ITjBbzw9JRCse4CaRfm39vbeLmNFPnY/mlzLnugG+86FH7Niw1A4LVD5KhcerkiLIgznxQD5HfdkV+0G4cktLmfCf66D82TOGbAJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764046374; c=relaxed/simple;
	bh=mwYo+OEk2Ko4Cm5/ENGqXY+TZC1A7w0ERwLZgM/DYdQ=;
	h=To:Subject:From:Message-Id:Date; b=NFs4iQsN2AY8nm0QxetEtpS0u4wI0om0jKVGEtcE84dNRsTty0mE5fCa1BoLLnyhJPGJqw8HahL9fgR8Kg2nhFd5kmNWLWDBugsOCa3aeBaxAGuNABuJ45nvnIzmAcLmAKeeCPBxhM5DoP/XecMlzxpM8485h4ZU+ux6uNZkOsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEBS7uxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEBS7uxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA171C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764046373;
	bh=mwYo+OEk2Ko4Cm5/ENGqXY+TZC1A7w0ERwLZgM/DYdQ=;
	h=To:Subject:From:Date:From;
	b=fEBS7uxWw5U58JKio9unvba1x/hV5lF4TrKUoyTbrDfiAbcoTt3NH2Q4cD7dUPhQE
	 hY0UcVEsDSUYV0TaQXqw8TGAC6Kuz0dCDuhXHIM55RKi1gL/rNaQiOT6oABBapl6mq
	 rfrhhjcjV8Z+vGLUNCEO97LYeBNYhTDf6uBfM8nlaawRKF7YOGdVJECo+8FNjJtNw/
	 ctfmtJW6hLJ4mh+mDIXTljAsoOfyWlW5Pf36FZC7rDaSI7nQpwNYzBmeDCfsTP9TMo
	 Cyakrp33ZGOpxh9N39mc5FBPOfTb1mI9wRCtFXuAZyEnDi9IwUwUisx5urfcrGJOlK
	 Rap7hNaHSE+8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982D8CFD36C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404637361.32343.8974649332008401887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 553ffca999d8436641d96be874e71ebe986bfc5652aabb1655c77b8106e541fa
Date: Tue, 25 Nov 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764046373
