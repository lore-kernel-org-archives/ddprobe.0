Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAFD2E7F05
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757581795; cv=none; b=dPilHaOw8464AGzvXPcXV01nduOnffNSOZNquTi8iFbgk/mrqvsAJEkdfUD4PhZmBKXyVnk8AltMQuKHVwj0QTTJ94pOdyWvVlXPqV559PvUYW5aUqgROBSt3UMdrD7/5k+wI0B8uvOtafA4RbjeGLhWS6+ZBO2Yb3k49BoY1EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757581795; c=relaxed/simple;
	bh=jZcXxACeZGF27XPH3oMP+CGO32hDism22Dx3tHsWN7s=;
	h=To:Subject:From:Message-Id:Date; b=lvrNOQA/10X4EEB4khW/kGjzneCctI2GRf2u6Bocl1nJxp54CiajHksspZZIQcnQaqWDVviWL0QMxoteg0NrPIcQrkzeaqsKFCkWRYrQSz1KcA2Vzrc+6J8/63NqwTfNuzSSmm7DCptoEiJqhQPVe/XzUVw8bKpHzdAV6s4Y1Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNIEF8Zc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNIEF8Zc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18AAC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757581793;
	bh=jZcXxACeZGF27XPH3oMP+CGO32hDism22Dx3tHsWN7s=;
	h=To:Subject:From:Date:From;
	b=YNIEF8ZcNn1Jr0HWnL6+vq44rvktyqC1CYvOJuAGgI6zASWTta6RgBxXdXsrDIloX
	 xzLny/n83rM2k1nJtC+neoaN0pG32SIS3JniG8Ze6/rvhdDnHZfNmHZEsNEaE+EiGA
	 D1ZrgBeIky2suOY6IweeQmqe2gRFd9U2cbKAm7D7+C6XawD+Ul6fiyefIesAvo55/B
	 sY9b0RZt41F62dRKlcI887ZY9y2gMQlIx3kM/6VnQQSpJivtccgnRG03uj+g/2nwE0
	 dFAeyaOV/a2QYRqv1B6ew0SgarhbhkTMviFUCaXqyHNV5jROIHpEUDRa9JE8Gsq/AR
	 It6W5QAJav+UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91359CAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758179358.25825.16412067674280984228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8436520ee7b96e586aa1116166dbab452c70101fc7b335586a06349ae4383b81
Date: Thu, 11 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757581793
