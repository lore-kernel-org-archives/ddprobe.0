Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C20225D7
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748062194; cv=none; b=TbULTtachwQI7aCNnnxt1LUBW6JzqfBR+EXQY5VcqtgFDmwxZFzbD/CiVRuj+Ywdx4jIFekkx6lRDiaKBSR9E+nXuM/ocW+Anvamy1rvPemiT8Z2fLRHQZs7Wx7btXPbNvRs9qLfrMhZbXELZan6Z0gjJetn1DOfRkKt+Rdxcdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748062194; c=relaxed/simple;
	bh=pXYUHTz0cdKFmy/o3IVqQg+D2VDmtF2PpUpRGqQ0osY=;
	h=To:Subject:From:Message-Id:Date; b=CPCmMLe411yC5B1o1u6E43bnFLbJb28+oxvcH26tCxKi9lF1DPK8c6ptDwzoBwkTxh+UsGoxvYFC00/jqBXnueOYoXH2jKom4loYABsEwWsQ9WRIXmH3PYlyRJLmen42+73P6VJJQhl80PemiXz++3VhahSks52j1qoCc94m7HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=La5drWr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="La5drWr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AD1C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748062193;
	bh=pXYUHTz0cdKFmy/o3IVqQg+D2VDmtF2PpUpRGqQ0osY=;
	h=To:Subject:From:Date:From;
	b=La5drWr4gfE1bT4yKxx0FIRI9QaAFrV3KOdg6H0Y50zVq0T+IAcUP158QzzB19lwW
	 zG9u1wEw0FU9Ju3UJADsPGG+MCvBAJRrPPdYNVPPrfCaTLdwc3vUSl1W16+3TSdq4E
	 jO+GmggxGF1ZPT+CarCo41n3HEMejbttojM59qqzNz/Akur0Njx1A+Im4En2oZWTsW
	 IOvSzYyjUqU0imr2I4UAyg8ogq5GSsLqAv8nvFk1tazr2t4u8tejzUXAK44vJyM1bx
	 L4rNCmrSdHv4lnhh3MF7dzPZEQ4gdvrkOAMan331/acqq/nR1nPCt6QOGZ51f5QxdV
	 lYKl2zdyGx9tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB0C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806219357.4679.14304513443396085426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2abdabedcc0a0ba75c28caa449260cb63e7dc3b31d359cea611690049c0ed294
Date: Sat, 24 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748062193
