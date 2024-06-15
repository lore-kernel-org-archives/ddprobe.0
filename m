Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD1DDF59
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718425103; cv=none; b=s2OGJX4EM34fpUmeL8iL5FEiZ0CF0rn2TPjYV9gXveFcWXTqVc15BH04RafJr984S3T6IdqT2029EvMUr9sjIi+KYoUx5RTSHRPOpwCSyMw9MNyK4NCzKzGY/1yrRBOTf1MBZFZ0hE8vookqOzcoK4D30TjNwON48XgggVUMzbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718425103; c=relaxed/simple;
	bh=vVig//MosAHbb0z8LEGWC5eBSleF3Phdyyb/HJetw+w=;
	h=To:Subject:From:Message-Id:Date; b=IO9Q/jtseYFC5pA1VWAFCgAz5sqKsuYIpZcYcevnjWsHuX07xvy41sVD7BT8ow9R2Oa9ncOK//M5+gD8u5K4dAuOvJ1G1iRV7xNfVevoYqhSW7KOomt6QW1jmMg+3gSwGQ6VQ+pxlRBqQwAz6vdAHDgJWkIVPIhlEGNMiIO6Fvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yv0z31Ah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yv0z31Ah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC7BC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718425102;
	bh=vVig//MosAHbb0z8LEGWC5eBSleF3Phdyyb/HJetw+w=;
	h=To:Subject:From:Date:From;
	b=Yv0z31Ahk7S0udDYgLyS7oCBZx8dMlFxueZtUU+SGHTvAt9DODVwZMGM/6EN82UTx
	 FFtA6WUVvTWIww+Mjf1yStxE9hCBDADyNVP6pJMARZufYXMgm5/9WVDAou7h4Wu+bk
	 4D63zSNfF1oMFLp9w4XMjjs0Ms7mWz72A8PJQZUkv7dlAdGSRu5JVaCGQzoi63RSwP
	 rl1vmDVWq0+lQvudFQBs3uH7ZB3ZjQtdDmLwZtwEeeRts6FsnIFwUsWyidbv8FG2mL
	 B2sfaXczWPFHOIBAhDllWffS8iTqGwCjpL48OPrJHthKU2/HaS10EnMH2XEATa7iyo
	 /ZH1DTbHsr+fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC5BC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171842510277.20109.18183101660380824543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff114450b66305416f120e5b8e99bb6a77314f4f7977db1d32fb0b45ca2948e
Date: Sat, 15 Jun 2024 04:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718425102
