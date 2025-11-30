Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF0BD27E
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764475974; cv=none; b=b3YUePx7VUPOX2D/Re8HggN93mPiqcOhvdIPqwE8STW+jHcVMbplAU3LSFH95VN0jm7gWDImdeInXmjE7H+cxuXnHMFUXLvVSlV8p67sMiYxxC62E2TIVq3qdknKuxMf4e1NDx4pyi4sxiekz1/GeLkrY/pJ5Ett5gkFR0lSK/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764475974; c=relaxed/simple;
	bh=jVI9EthJKfnIw/yXUnnwUM0rnHB/yyAkkcJE8nMC6H8=;
	h=To:Subject:From:Message-Id:Date; b=q9ef2Wko8hJaX5j8oHqVnct3PDgShe6QFiKnxguvM+NE7MGfTkTXbkPCy/iQbSnW5iv5T53cc2/WXO5IXIkPC9Wjggxbs3nzB+R6I02xS1TfmmRORcNDRKOwd/xm9lmdlFGTjY3QHfghBSV8X7Uif/YOMpcw+xn6WYkHiAXH6s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPbIKKiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPbIKKiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75D5C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764475973;
	bh=jVI9EthJKfnIw/yXUnnwUM0rnHB/yyAkkcJE8nMC6H8=;
	h=To:Subject:From:Date:From;
	b=OPbIKKiPBPJBOAaIhe/j41zJT1WSbswbuYdovyyPzmSx4TBIdsuGsKgfB9Hq4idk0
	 IvCY4Yqltz0pquiwIqujBWxYtsYWLz0/nb74J9cRleUQFJEK57DLKCaNFbsWu1/Ha1
	 cNPTSATbv+7J7iEUMZ1QTWixIjA90y9hmzM5U5KdORZQWuvASMMspY7x8+uqtaSjAl
	 8xZBiQNS4sX+5PnEgo/pab78kKPHzti8hwDob5y1TgovggQoVCIyUDyTLvjV9gb+qF
	 HmY4vhSoy91LL+AiVuvlThLqWxUk6bMMY/jy7ykUfY8P0cxsLaq6Yb0OjcHUxRojb/
	 f5tuMdLapVxYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94258D116F7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447597359.6100.291043064974752807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef9bba1b08e97b2a5fd5d8f0bfeedcfebeb1c7700a0074ad8e6fad1f6cf34d2
Date: Sun, 30 Nov 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764475973
