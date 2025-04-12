Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AFC2367CE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744458594; cv=none; b=M7j/JI+TMNzaKaxsQrS7fp1tht/EoAv1X5YLvZLcszIS2PiHbsPf1aHw86tXi6q06ItOre+0iWtixy+c1py2tz2bW5UbdTLD0BCLYgoqo4e0sY1XUJyVURC4BUr7hfieCYPSz2ejCnH4AgatPwT1dXxkVDQtSxOglZ8CgPARREE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744458594; c=relaxed/simple;
	bh=Yu9KppsTDonH518nVsc6moeZSXMn1wCxpNhyJgaEqP0=;
	h=To:Subject:From:Message-Id:Date; b=f5uxwBMb6gTivHYfPDftPQ8BPhNpB0W1E+NQ4zMJZetPMejBYcehyfYJiDV7En+ID/JoOhgh3vys99BXZoWnt9i+VBjiA7pcYk+KRihna3sqWzOnhTpReE6KyEq6wgrxV1VAtRCKDMzB/Kkrd3FpyKIfJdAg136hcoOQH9HXjMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNpEcgi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNpEcgi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEE6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744458593;
	bh=Yu9KppsTDonH518nVsc6moeZSXMn1wCxpNhyJgaEqP0=;
	h=To:Subject:From:Date:From;
	b=fNpEcgi/TlCIuRmjG0P2LGdeaPE26y6lIKv+7b65HLfY2EMNhrET676adLSDBZI23
	 elKm6BRHv3ntC9poEKcwJ+pyjc/1rdvjhb3168W6c/SCySUUGqDpLTUMOfq2Xq1wx+
	 dBEGfnRYhN4K4XtnlsBItGUMT7jTqagOQROU+OnBL7q6It9hGMra0Lgb1rbwJGpSGR
	 3HxM5s9DR93kEyDLIuNIBrPC5QokSghCcFed5tgbwfQ1zLWkTKEknps2D1TT+BE20y
	 REawRSsCvwdcEv5EiXsousCoLkviFPjsQVi9em+u5yPOEF8pDSsT4yJdjQz1hsZsuZ
	 mvjEJwRLHal1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CABC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445859359.30873.14462310425143596019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99275f0431e1fee653ce510bec97694927a6bf025df017993bce993f2d3c5e46
Date: Sat, 12 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744458593
