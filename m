Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159043002A9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777793254; cv=none; b=Gs1rwJpuAj733jejo3ZjZJYSSoO1lXMEnaj1mrFpBnZM1LTxSbkEUO4lF7JWjksvhDJzQOzhAUdJYu1jJZg7jWn0finP9S2sElLrReEO2uWF2q//dwsi4qreHr0nad6h0JOk9I4M9SgubGkqvTs7ZBZ4GbPoklwCMv9OACnnro8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777793254; c=relaxed/simple;
	bh=QFK77Kjhx9hFZ2RB3ydFlMAG4vBk+e39HeYumE96Dmw=;
	h=To:Subject:From:Message-Id:Date; b=SMrUastzwJ0g2eFC7ck4HlgF3HAd/jxKmtmTPgawcIb9hFfKnPU6bZqRhAh+WR6QprpGz6giwcwDhdr4VHozpCDPQC1Q5qo4QF7OPtxCqrVNDibTp7BB9C4TYxCI2K7xUfTaF9qxxZ3xAyaqMsKRdHv/ARa6ETsvBfQeiUX3dJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+GbWFlw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+GbWFlw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB520C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777793253;
	bh=QFK77Kjhx9hFZ2RB3ydFlMAG4vBk+e39HeYumE96Dmw=;
	h=To:Subject:From:Date:From;
	b=U+GbWFlw6KOwIye3YWcUe9t8K9heWeyVqOH5uNwGoxCNFuyGCrEQptOtB+hkKAYUe
	 eqPrb3bEjs+4UGWcCzvECiDyqsJBG69q3pYWqdPYdmCKw559b0Zc4RVJum9dxka5E9
	 L+HVG9HWFu7JNaKSdOHrEijUGwPdA0/yb7txdDff8acHUxJuAFVMRhl7TQlURDoxPr
	 Oz0Tq/TTyo2rFXGi9mz3e1y2L+PDytIajWebjbkYrGbwOKblritWQheNiVko77ebeY
	 7zgXyFXin3F4b9RSCNqNxCJ30KquvHgTqj3MVQ7wQYVh35r2VC7xZn+algn4Ga8Bz6
	 BFJqBVibTMbgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CBCFF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779325368.2835.17263295811898721862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca6ca27ce2445f30d991c238e5bfe95c90f2e6865718a7e337aba8fd1615506
Date: Sun, 03 May 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777793253
