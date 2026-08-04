Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CEE20D4FF
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785886234; cv=none; b=awTyI+SmzA5IWy1OaUPXzf5mlm+FM0K0AMwa08MkU22TFjdhGItbnpFQe2ZYGrGzke0GGQ0aHg9FFh7LEt4w+Mtg0W7brZLnNFC9fCuR8kwyPIZL++1GEUpTqjEO+3vuNXwlNhWYRFj9XxIdC6zrKRXPOOB2nbQY1hs5jSirSe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785886234; c=relaxed/simple;
	bh=ldBYeiMhQguOrbJvwGHtNFKgtKq4B/l1R9tUakWglWQ=;
	h=To:Subject:From:Message-Id:Date; b=ph1gG2/cCFzT/ib4WIeAcX2PwVUhqrhxJrmRBGaK4BXtiPwCGSmBRLdVmDfyNpCXZnUh6+xFOT/dWW+LfkN2QLQzl8ETrdFs+TiGkPx0TcYweTJom/QR+ajG1/pVp1hhP/XI9M0yoP1AXf1MjWYn6c+Kq/dd/ZdmWX0tMBOlf2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=au4gLzS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="au4gLzS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7409C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785886233;
	bh=ldBYeiMhQguOrbJvwGHtNFKgtKq4B/l1R9tUakWglWQ=;
	h=To:Subject:From:Date:From;
	b=au4gLzS1fZaM7zt49O8iy3QnZcY/QBu18mtfX6N+c9511mqQc9Cv/ClLXdd+0XMxn
	 xiOeKoHPcBHUrnv9VosXPMbUr8fArJlBM83GuyrBVGz6VB4WSRQmKSxQHUPLk8NP8M
	 HS+V7oBqT+JzvSJdrP4hC5I88LpClvO4wjof3UQ2os2/sng0tYCjSoItI3Bk3pAuM4
	 V9e8npvl59L7GhlAHq5LleOONQ6tN5B1nqfkOKeLaJMiM2BonDTkdlCBax7JgqOhua
	 atGd/Hjm6LuvdSolPKreWJ3bqk77IQnaQQwm9hbt7ShesAxbDhiRJqh35IOI0Axk/u
	 CWPaEGhvkisQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EBDC55838
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588623370.23834.11468876627240186224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bed3793907bf12a65af9c5c20adf242d65678bd5fe2773dff8d52a8bc11b276
Date: Tue, 04 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785886233
