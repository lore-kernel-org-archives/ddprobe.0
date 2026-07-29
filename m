Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534F730D41D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785301834; cv=none; b=KP/9Cb03x4ovRsTneM0M5Y3QKqOQkgkxdgs752WZ8I7+YL7U/1GBdo1Vxtp3mjWnPd2Zu2XiiPcs+VBO40F6ZKvtxFMH5Rv2NEJxoU1zWk5z4AgowBYv6KWn5V3ENUQQIiMF4w0SKCluwDmob7sUCM1TiKP2TkEGL4cjMW50S4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785301834; c=relaxed/simple;
	bh=5VAQ9f6C2C2e8HmTVJ0z99SatZ4ZbsN1vlFQuBFs+yU=;
	h=To:Subject:From:Message-Id:Date; b=lGNeRdEMjRis4QakNbIwMhJYQpdPdNrAVxfUTANgjbybrd0ay/1uvF9HmcZbgf10gpppagS21BoVg+5Yn2ZUYFvVn02ncCTHfnQMNXBIPcrUh0xzZ1Ek0qdvQJ/Swo2e2W8Z4dau/JHJLu/d2QbMr5Xnoccrk0d91mmu6N1s/rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0iWR0uK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0iWR0uK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DF3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785301833;
	bh=5VAQ9f6C2C2e8HmTVJ0z99SatZ4ZbsN1vlFQuBFs+yU=;
	h=To:Subject:From:Date:From;
	b=E0iWR0uKqVpUIrJZF6IBpcZZ2djtIMyAiQNIySoOQ+MVP8Gltcxhlsn5ymHfAhNwC
	 WN8DX57ARpaurrJ0N8Qvzq1905LwvOZJiq3uStXqH+U45xxLWt5rCcQujuT87mZOU+
	 N9sTwLJ3Danppcrvzn6QwQE//041TV2Hb0rrQxxa6IolPmDFmdPRwBrsmik3MuwG2R
	 clOiYQM2/wvvbKFPX76/rMKYyHEx/I0dh4el7hL0E/Oneonkz7oD2wgUZahuh4zzGK
	 syHQVbSqpVkhEhwVZuhG9lrElbMMCkGEa+V+srrrs7JfsgBPgVeTF+yIcwlq4Y1xq9
	 JZMHW84TtizJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1B6C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530183368.14303.12280320088493452833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fd605ec4fc03fb225ed9ed490a706881d1a87f048280c56c9017e7111388eb
Date: Wed, 29 Jul 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785301833
