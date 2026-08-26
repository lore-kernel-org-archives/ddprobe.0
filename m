Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E19843F089
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787754634; cv=none; b=QGMVidF7p3BJeRtDqIGzz7QqqYZJjFvOiFZN9QMNck9IrceTKueoszZWZ9nLyFC6GtO05YYuwk8l3RpJv6Rsj3qvyw/QHzSsIJRI3CqiHqRnw0QJbuB20lgkK9YqMq3PC6wr9C3FZh0Rir6ayegNoKQ6KN5SGFboRCAXRS8BNc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787754634; c=relaxed/simple;
	bh=SZUJknxCh6t/JdOxvPoJAXWrwAxv0TtDZkpaPsDB7iE=;
	h=To:Subject:From:Message-Id:Date; b=cfKkWiCxnFWoEVLDnJVmXG36XPEyU8Kzqhm/dEh7twXPw7LkwgE7ZhdFtMcxwr0zBxzjzc4hvK6jTVTqSIy2phFiZqU9P+MswPiF5lTYxMERSkuQLWIT0vpMRY0OMdyRtoQ61eccn1xHXaSflTAaae7XLc8swPnhOZKmQiLe9k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfGvUNNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfGvUNNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECBFC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787754633;
	bh=SZUJknxCh6t/JdOxvPoJAXWrwAxv0TtDZkpaPsDB7iE=;
	h=To:Subject:From:Date:From;
	b=CfGvUNNgDPimkiPdvoa25TNxxa1v9UN9xyIT1JyS2bJwor5t7MiEKQyCCVV8hvzXl
	 UU2BFAedpvwq+TtxTFMoFvpzt8xpfNr2Ge13yvQsWypaFsTh0Vd11BTwqLY1/TN+yJ
	 KwmgKhVwQKVrielPffsORfrf084sIxX/v6pCQLHfrPVFUy/SpJVn6TLIPtU79vyIhk
	 MVubEitBYhdteF9qNJ5Uw4pTDVASSaNqbOpTX6ndhuDX2TALqeJT/srXdSIpixCfj1
	 2G+dMXTRVJ0jpDgj6m1VS5ExANNTbHcr5N0uRsPMnS3FkCGMWa5jsCM/M0p5+bgsUr
	 x3MxGB5zxD/4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD14C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775463369.21145.2942044932627320803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c62900cc5e2196eafe74d8b787f4d03300f39af0b036ca3168e27c88ac8267
Date: Wed, 26 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787754633
