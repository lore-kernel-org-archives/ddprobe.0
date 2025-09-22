Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0952FBE09
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758538794; cv=none; b=REDQ1veZGmh+JiI49Xu1z9etN7zHg4Jd5UnQsSMS1QZK955Rb4tpNXJ3HA4NogJNAat7zLlzmLOfA65oNTBtf+O1SkkprNVQ1FgZhis/Zf4ZgPn8SmI2OpaGwvrv9Ka/D2aIsCRz8JprAJpjUjP7c3ZUN392RRSvrhUA5ayrUe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758538794; c=relaxed/simple;
	bh=c+9ZaJ4U+pFq/Jqr3fGlgKNKWpGLt2p6ASKauBjjP5s=;
	h=To:Subject:From:Message-Id:Date; b=m14iYApnH6HCizGek9ZOymRY3HOEEmM/bNqH9C8IlGwsU4ElITDNZq3scuc8rmZzl4bHdSshVrDiAEu+Qegri+Sf2+WlticSysB/tI9MgUXu0INa+81bz0bXCm5UWD6MEeHmrx1gEK8zhjT541Cn93bKcL+RnnviYnLsbU8O8Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oplyIdob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oplyIdob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08E9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758538793;
	bh=c+9ZaJ4U+pFq/Jqr3fGlgKNKWpGLt2p6ASKauBjjP5s=;
	h=To:Subject:From:Date:From;
	b=oplyIdobdzxQGqW8N0HCXiTeeqa+79VLjp5yT2Ha4QIKvbzPejTEp1LLmJklXpN1F
	 sZ1xN+eucx4HNnapMt5D2xUXcgDI7eza1D2JSkT35ulmZorVNPaf8elB/171o39oHc
	 1it/okQP4/EHVAlwBFNBqobUnnIp8PIyI5nGiTkv95sx1aQ2JuBwVUveHqdBYrRzPq
	 4jf+JWFX/fxc/U11GVG7DlVpXqTBB6UMKN3lritvmhlk2s99eSBMN4e/vk8K1OPtCA
	 FZTA/jSZR8yJA9mmlEq9Tak3g+KfXoexvFvOGHrcUNdw1nvItxNqYOFanKMeNz5vJv
	 LZ0M7VDXscjqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B2CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853879358.31447.8247973914659015745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cfd1e4050895a2ae962812aeb2ec1fe57b8642fbaa69665aaf22699047ed2f0
Date: Mon, 22 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758538793
