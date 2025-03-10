Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3332D226D0A
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741603736; cv=none; b=o+Yct0SqU1ppbWiYmmM3Pu0R3SSEIz0rNO9qGSAFLrPAOBRqIw5VfUuwJMz40NUPFjl6MMGTyrC9GhaUFbjWQi9J+BOpOEkoD261woACfBjnIxUnTTCGC3RxqhFwkvf3W3/rypJkEvy9SpdvabNPfIaMOxHSuJRp/SZWmG0WrxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741603736; c=relaxed/simple;
	bh=kMRtQuMr8vtgu6PrxCgDuNav18bN10YcdPDZIPRxasQ=;
	h=To:Subject:From:Message-Id:Date; b=moFNgBP7D1tMNmcEpOtnZcefvZXncnhWumsVX+Wb6pbPJ8NYlSterph5YxShdp0FaKeecd/sa5kpxSIuByfcH/B7X/EqDLvVhirTZubsOOsOZysjffdXUancTDwUxyXORit9rGdIymV1D5RMoHon700dO95fiqB/ENOVLrPtczo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GT5vMcgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GT5vMcgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EF4C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741603733;
	bh=kMRtQuMr8vtgu6PrxCgDuNav18bN10YcdPDZIPRxasQ=;
	h=To:Subject:From:Date:From;
	b=GT5vMcgH6KbqWNFvzYQYKmGmx3CoZDc65TIYbuHOqVe+tJck64vlf7IMNcUIeJQp9
	 hfAhDxeyA/HjZ3/P+R+lpHlreCCiG9yX0DMQ83CVrddXcaN+LgcBxjw0OH0eJ0m9Ho
	 vbXs+IFXd3y3qTqPazZLqnxDk66FtAlB6meE1MFFmnsRT0uAoPdP2llqk+LoYcxsSx
	 D8qpO117v7N22A129lgoWMkRTZbwEX4+BnncjI81jxNGmD9DQcN+f7OG4EiH3qFmum
	 0FxfB0kptXpibf0aB0mxM0dGx+Zm6SvvZGfabn9qp2zVyfUjkk4luxwUnF5QT8xb8q
	 YgYT8MkooSTzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95223C28B2E
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160373360.18396.8668753325196865540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a4693d0ed0d41f99e46abba0a1b47d631498c20e04d18d63879234b03942f4
Date: Mon, 10 Mar 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741603733
