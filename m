Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30191221FB4
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763376714; cv=none; b=NbKp0T1+mf9E9orFO4K2NdRslU2CUYBKS1j4QSJ418RdBpSwJcaBOwxEOQAWh4nnwLZRJ5ydzelWe4b/ltdpEqGuCxvXFVwZ4FSu4XFzPnBYcuzTmE+Y2/3ihYpaXWlio/KwXKzBpUMXFFEEKaF51eRDVCkTXBIqeSgOAJZKnLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763376714; c=relaxed/simple;
	bh=fzpJG3pEGd0GAsssPDKnZuyfrAE7GrWZrwqI7+CRp4M=;
	h=To:Subject:From:Message-Id:Date; b=uPgV9PEYIf3EDWfjPllsA0Oi2AmO/ol8XUIqHg6g90zmsxQ3+UZi9va7TfeS1SfbG9RmqcN/cSYp45dXfoEHxnT6PjiW8XP35wMQjp55qvVQ4T963RXahPaA3IrH4iqOQJY1yhGd7QHXvikd0iFvit5Qv6iNaGix5vKhGCpkFUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwT+9VAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwT+9VAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E125CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763376713;
	bh=fzpJG3pEGd0GAsssPDKnZuyfrAE7GrWZrwqI7+CRp4M=;
	h=To:Subject:From:Date:From;
	b=GwT+9VAeVxPRfl+LNPfp3ZzpOQKlOQUkLNnH6QBGK8r4MrbzKzFtJSjLTzFHqRQlh
	 tY9DC9AgLi570apRqQdRu1xD02Ms1SACIHOsryLUiSVKTmyrwVpB0OgeEe6agW1LWl
	 G21+TQcbYlsOAZPWZRo+CYK001+1jD9g42DY1hfLwkKhSJA32EQz/kiWZx0GwyjT8N
	 rm1YwWvwKiSLhkPs49g2KDvxDhFvHlXYmX8n0JGL6grtWM1UwUzuskeHxear7zXPph
	 75AQ6Q62eRBERx3I6YL4E7uxRV9dhvURR9UEUF5DlEeeYawA3lYOV2htp7IjJt41Ir
	 B+kyDsrv8jd5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CD6CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337671373.2578.11995302873999988439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82adeb4ebd08a718570c39c58eee96159dbf91c3d6515c829c2df81d0bab1563
Date: Mon, 17 Nov 2025 10:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763376713
