Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F9D34D38E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762687194; cv=none; b=XvIIDZ+Mgdl4AYDwyKgeUMhRMXX0jRs+ZHNp4Ko79Eko6vbTyq2EOGQcgaMj3SnBYzy9jcp451hD0nQdeArcMhU9dNvHels2eWnSaTX5nuon9hvWpESf9GhIz1pXyoE8loX8ISsq7qel7senRLl+OMJD4a0E+OY12A4tS2R7jrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762687194; c=relaxed/simple;
	bh=5aStj4VCLbun4c+n+IYmuH9rxBIw1Dh6M9wEHV+sSPg=;
	h=To:Subject:From:Message-Id:Date; b=bXGmUnrDghaCGEcGofJ/n6XVq2KUEts7XTceVM1lLwwY0kh+2OwosL8ODa+0TgnIO7R3jAgM9nBfVTfMQ6z8WswmvtXEqL9hRw2knm9yg2ntgFigtYraA2dteOeq+FiGazRK8Bq437IzlQexoghjGCIbXVcdcUPIJ+dW8P85vMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teShLiUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teShLiUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A3EC19425
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762687193;
	bh=5aStj4VCLbun4c+n+IYmuH9rxBIw1Dh6M9wEHV+sSPg=;
	h=To:Subject:From:Date:From;
	b=teShLiUS7YbN17yomBQlPaZuFexbxFq9UBg7Ml1/3TrZhPmhhJk2dMdXuHY4/3RWb
	 AO0W/Jd6mfpMrRzfMGCdHiVV1aFi/L2r4+WcD8vsgDEfHrJUFGofauNKzdFUucdzxn
	 tZ/xqTZccFeYr8FFYLduR3tecAwVvpcvRuqq87DaekxevCh1C/i2DC6BfQRqcPk+2B
	 XTvGFO4l0SPV9L0NJlA2FRs4oCZYXor5D+w5Y1ZZaHQhIPIwkvjrldSfXKCY0BwRL7
	 PM1o8jW17mXfW6pbDUo4J70jUP/Tosgi9Af6Pp+I/P0mNJoLAE6KSBgpTYymlg+dCh
	 yq28hWvEY/toA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95282CCFA1E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268719357.25329.18189667756752697913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b54bc9ef83ab100be4f1b6be48362ab48375f4013a68ba8d052ad33f3773ca
Date: Sun, 09 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762687193
