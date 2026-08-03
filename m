Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCCE366575
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785773434; cv=none; b=l+BVd5D6RV46BDrNA4vGNcBIwk1ExxykQdl5eY0zr6n/6HRAUtrsunEPW9LKACewIV1rnvrDplQ8TvkLwLIjskeIePNn6bmtXXRKoE3lVOKvVOBDa8rzhlhRo1NsHP7Vyu7MEXTf6vhrKiS/VE3yRxeS3ysypIBpyUZ+WA0Viq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785773434; c=relaxed/simple;
	bh=CxY1OO9qunL4fLo3VavvhXxczrAnZlflsFB5El+6klY=;
	h=To:Subject:From:Message-Id:Date; b=t3XRNU56kpQYPC/t02yUD5EsXOc8f7HNoTIODYv1/YMGFEKF2xV2G8RtNYdtiE3ZXOjuk4nQ+iFLTahsPUBcQywHfWaPt8D6SQJ+AtCmp5edInDzGpJAHCwlG2C4rZ3xCgYr1ufoCLKH7TgC5Gt/dV5q/lyLDn8LD6v42w9JSOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmtr8tiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmtr8tiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1365C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785773433;
	bh=CxY1OO9qunL4fLo3VavvhXxczrAnZlflsFB5El+6klY=;
	h=To:Subject:From:Date:From;
	b=dmtr8tiFG2Vj5tD8Xf0w/xIZCAZCqOZDSN/UnsBF3b0xgN8SKV7Jx3rzCDdss1wu9
	 sBaMcNXgcerrDeS5hS6m2gv52bkvi0Z5C3zWo4XtXCanMhMLNW6yKKjSSzI3vqoopV
	 KH+4uaHe1l/AQRgGhO9Ly+YXdcSMI8uS+weKLXZM8xAzivOyQxDV7V59EzKJijHPxe
	 ndAkixOaL6vGH1FImiYK5jTrRRIGELs1T1uXd3VJJNDeX5rsiIT6vc5MfPcaIwfd9v
	 2q8UWQGoUlxG8bQjP+eByZ4z492LKIPBdJHR2OXGPTNFaldQvWlRYi966s0zyczurq
	 a12om32x+bHwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCC7C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577343369.25666.5569150081203456139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe69c85d418b9a0500881211121eacd8e83e1f58bc5f0516a314fa4bcfbf2d1b
Date: Mon, 03 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785773433
