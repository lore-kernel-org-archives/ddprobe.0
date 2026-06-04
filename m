Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DAD3E024B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780589074; cv=none; b=E04Eg6TrSbEjCzCy/4q0Fov8TRMo0//RPNOXbCJe4nAkOx58I3wl8qDlSjxVHkOCNEM/yIDTys/um5FY6Ur1EkoCmKy2VZpwjy03cqCKfJdlJfL59b2b77JnnZ4WTBWx0yzqPPHUGr0yleX1A67+ZLcjRscCkCKlm3gDMgQTQlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780589074; c=relaxed/simple;
	bh=LiiPRiCkIc2AoneLlnaVHsG6QBkQBO1gwTiRunyoZfI=;
	h=To:Subject:From:Message-Id:Date; b=Z98xyGQc/uU9yX1ckFF8smS/qKK4DUD1p5YqQnaIEx6rovWKD2oMLg8htf+XVbDxBEkDJx2ZEUFeT6XXNMHQhMASmKnuinGiIX9axg7ddYcmWGlKSYIvsLXlwY4mEjLhutk4ptP3KdCp7h2RQzwo+Kkj50FpzsDMFHlkcYs+ddA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvEXXorm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvEXXorm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD441C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780589073;
	bh=LiiPRiCkIc2AoneLlnaVHsG6QBkQBO1gwTiRunyoZfI=;
	h=To:Subject:From:Date:From;
	b=kvEXXormuDFdPxVuObP8OVYn27xua1EW/1HsCALlT9ars2tDb36nvALi4TXNaFM5y
	 KBEwjxetcgJApAUD/A4zCnmjbxWg08WsyaKPx8KhSH2ASfYBIIEpKpionmUZtxYSDO
	 cXQkelkbBhSnk29xTMmVEXlqfjRTCsCB/p2btx3yEb2yl21p601o/KA5PTiEYiyQQH
	 rJei+6eryz8+xpDNTUZsueF618UFdfxDQqG4EGG0YeG3BDWIiMrx41+G4aKL4oQzer
	 vqKvC/2wX1s8zgyBSW2lWC+K/Pnfhr2d9TuRMA/1kLrjXVk0BWFNT87KBkd5eKbEhR
	 ObDUd7zmSCrMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB657CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058907369.5069.17890445185849215699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54748cbb4535732e48f1e8699abe81b867e61038fd317ab551300001bc7ae34c
Date: Thu, 04 Jun 2026 16:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780589073
