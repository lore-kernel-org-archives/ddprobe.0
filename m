Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCB33C457F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785236434; cv=none; b=PSjueXeZ7Uv7DuofZaVQgPofVCKhPvCBPblrQNlq8iWl7l4XgrYNf0r6uCxSATP//qgTSLXkf3INhnPaFrAz6GsaFBqUKnVbO6Suz4VY/hdjGG8lEyJUAPuelD2XuXhUDZpGoO1r9jmgZ74+TGNtc3ttxHx0gy8F+oIwkRmpM5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785236434; c=relaxed/simple;
	bh=eReTpoLl4yegdknic8v0q0HtSt46ELaCfCpSUsdORM4=;
	h=To:Subject:From:Message-Id:Date; b=i82MTx4VspTlLkgb2+uhT1qKbFxPCd8fTzlPvHfpNsdYwOWvUF35ziCqJRyaWSGBurjV4PxDfaIgcG6o2h4Q2ZWov1d3vOi3YG2LRCPPKDDkdas7LoEE+tNQpiVawHQXbqsGaLxRRN70UsObEC0BNGW65BehMb14by4vMWpNo1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpX57QY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpX57QY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C855AC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785236433;
	bh=eReTpoLl4yegdknic8v0q0HtSt46ELaCfCpSUsdORM4=;
	h=To:Subject:From:Date:From;
	b=kpX57QY48Y9j+gnZBC7HISiW98cy1P7agIwTbN6crA8HuhqQsqoDiz4mhkJOcTbQC
	 LijM0hhrUdAb2KA1sYZxXFMHFqCqquY49eGmoShUqVFzY6C57LO1kgUwlQeMugCQwQ
	 gkf5EgxYyMD/bmrorOwABYs74Zt6FoF8az9/tV+JMHWzvnTvrqViqWI5iXuKteS2gz
	 bJjjlqa8OzpckY4OqjCn65PEBKQcFqZdywZ50RZc5ibdMpav3T3inDleh+ECtfEVUk
	 avvmzO/Vido8gdGqog50Ox2oHFW4KxJ3lXpChpXoLciPBsetZ6bHaDcuxvoJyTbOyD
	 EXnh/8MBeCuxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE07DC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523643370.10131.17104569355685339520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e2d26a8a5f9162e0a8c0789f3ff8b21c779966759ed2bdf8e40e0640b7da4e
Date: Tue, 28 Jul 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785236433
