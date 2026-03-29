Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB1C1A682F
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774803294; cv=none; b=UxPm5Axav9tesiUPyy8vyO8AsVBo+VIsHB1D5kADXa9Ihkmk6HJqP3LT/BSfoFxZbZEFGqZKjDvyNpBcdZ9jBrLUYKO2Iz2jC3zrl4Q/R0UbqAvDvlwYy4dGgI2XkNWrn+B2o0Touo4BAKSclvPLeMth4c29Tg7/zR362BmSEtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774803294; c=relaxed/simple;
	bh=r/rj7Asl4pjI/FkvWaAR+Gut2uvRR86s+3v5UYBKvMM=;
	h=To:Subject:From:Message-Id:Date; b=j5ngSetc1z7tEjpeNdQ24SvVuVpt63AvBfL81BqwE8b6Hfikv5VItw91nKZwCuKUER9DHYfV778bpFwjlUT7Og3gc/ycOJ2r5VrC791704z1/JDVjXw2lNz0mcaUFDKKp/qeVEqBrTQJKgAPooRmy4DgHvqO+6tOBK3wtJMFu/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/32E0TK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/32E0TK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9518C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774803293;
	bh=r/rj7Asl4pjI/FkvWaAR+Gut2uvRR86s+3v5UYBKvMM=;
	h=To:Subject:From:Date:From;
	b=u/32E0TKB6hnk86wyDAemKfBoxtEiVG9RESuAuE0asdkW3+q9dhLfBPBy/qa4aY7a
	 RfiU+FCjkZmlr1WP+YCARmuUhDQJ67et+578eBBmPc+pDLbKySEi/0OQrM8oM9Awtn
	 GKBqIhwb7LnyEDFHqFq3XWlzfJ/a6ovxh4ZYpP3fOpMxOLjcAxAltQLUBvmaMN+oI/
	 RVflLX/VnMFFOpxjGccOBpaqKceo749P7mHRxWUl+onJ43AW01rvYdhTCjfjhWDXCg
	 RRHRfxUF7xtNpXC9X3lU2Lee6h1G4oyqtNFGeCquBFmWt/nn02wNGYT0wl8eiXPUHV
	 Ljyey0/NwhIsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93725F3D611
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480329358.11891.3894552811686365036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff365a9242829977a100b0b2c9620c730ed750378f95f5084e47857da3ec8ee0
Date: Sun, 29 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774803293
