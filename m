Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFE43BB40
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790902834; cv=none; b=vBL6zSP/dcudOlK2IVNgXHtDmlG3JPqnt/SqpcsMPeBqr/a0p6PplubK4RO3HxpfFklJGc9DLRv8z7KcCVjNbXlcL31hag9rMsFi6Xa67k9nOtSalypNFacy/Pff5jXg6U7Xgex4KsPo5gaarwSzpBWbpVvxOl56UG4JwsczQSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790902834; c=relaxed/simple;
	bh=afyL6UHQH450WKViuvkr5UQeSb7nnQWdcHjUjgac7cc=;
	h=To:Subject:From:Message-Id:Date; b=Zs/zC0pL41LCcFwDvuNKG0if0or//gT0zoq2j41SowqrePWQ1bpbHPYPEeeQSjf7rhnkmVbPAuEl3BPY0KyDVhIwOX4LjrsNyNu7yhnocjwrDzp7abpZuyn0yLtlmD+VgNj2IlTel1EGRwXhKCBwCxi3WFkWDJ/TELpTkAGHPXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frETg2Le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frETg2Le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F04C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790902833;
	bh=afyL6UHQH450WKViuvkr5UQeSb7nnQWdcHjUjgac7cc=;
	h=To:Subject:From:Date:From;
	b=frETg2LecXWSkl8/zUDy1KI08cnPSeFk8febqNGxUStSmfC1U2DEGNgk+r1k+gNow
	 RkQWXhfQkV+t2a9p4l/ZremueGaRDP6JsjxJrPpYNtSFjpd9y/YtwZr6syAPe9FLXe
	 zGzPZvAIR/gitTKWfUI3lfvAmzYl0QUzRb7SER/Kymedj2323nor0dEv9RmcwEt38k
	 rG3yIvGgcDDtdLrzoNmTUZUXuBfkJ/6MTC7FlgcZooSzn9lgjjrXOHW+CrWoc2ueds
	 bm2JJ9yTy+RGnfyxK6UOWDD+l1a9fWLwC/JYsjtHbPhWq0uldSrSSudqeLJvI0idT+
	 gbvR9a7QyU7iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B171ECA5FCE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090283369.30162.1394519955040744528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d169b59795cb3e2e849566ed300b0f068a0dd2b0e44ddd9cea44c5cdc9a525
Date: Fri, 02 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790902833
