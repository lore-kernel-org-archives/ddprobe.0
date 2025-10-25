Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3954B23504B
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761424194; cv=none; b=fAZuWF8jrfN8HFTX9JUU7DCcNohbXGLWeTFmTGdYmqRE9OUn9FAYYbnraPMfeUIzP0iMLSbewxYxYGiwnsTVkBtQsd1rcJMDEEXstN2mYDiZCcilzGqRs9z9t+6KlDxivAkBCnB+Llr5tcuGxnf+wsJo2ywKVW5xvuJPSmmPGoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761424194; c=relaxed/simple;
	bh=IpJ43QFqC2bQ19/V/yI0rlewymjawOZHh+PueBtAFNo=;
	h=To:Subject:From:Message-Id:Date; b=AAGab0b2HaeZQX7ydyJ6DTCTNRGMqwDTtWfAseCEJij0xKWs5NTgT41lTla4Lr8VYpnH1tTpKi/eCYOeQyXo77udi5EbyOp8wEzXoBTfgbys/lok0MSfh3x9aDNdtKWkv4gBSp6b8b6Qhhmx6I77OsHmgMdGfGHNDTY/qPu8tgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLegXvTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLegXvTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC54C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761424193;
	bh=IpJ43QFqC2bQ19/V/yI0rlewymjawOZHh+PueBtAFNo=;
	h=To:Subject:From:Date:From;
	b=jLegXvTb8whPZIiG35nopTz4PhvUuhTRhNNwmNsRDm9BOW7zn/kWIIesJDBlq4FqF
	 LY++tYSiucGsW8AdRgId8g7yh/RkfCbSHx/EIE/AxVHvmK0o3azj+3yafKpZzkXHoU
	 QeTMUXd76+BfgmRWSAOAHyzaoDa8qxirJKFiS+bsCKd594ljbu6vC2roUKZyXS9sCv
	 mkQl3XLyEetQ33/Bc4Gy0CbWNxIaty7oMmx/KUNa5x0lvHppWRqIieu3DHPjY0zlRg
	 LwQSHnptwMcqAwUaauOl7sh4ciYNzl25pe0hp7qdYvNJM0FKdV8OTzeBHRCTTlJxV0
	 GWz5ma5V60wWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99919CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142419359.1786.14573295275056982402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ac9bc86a98fcb01217097453b575d791d8a5198915875c0714c825a60463cd
Date: Sat, 25 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761424193
