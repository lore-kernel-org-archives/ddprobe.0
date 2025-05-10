Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480C85477F
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746868794; cv=none; b=IEc0I5zo+khcD1EpmvPXBgt+Nx0CtVDRd/rB/4QqN4pGoDx7M5C3TNzyg/69fWL0IyYcKKGzQ1YEn1a0WMplWDaGCf21J4ygET5K3NJWSyA5KtQ7w6okcGjJgkX8maxgmhs4J4jYrlkCy0DwkHv3+WEFWzA+z4vqCK/dcYUZYbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746868794; c=relaxed/simple;
	bh=WmepCnVeg4Sm5jFi5o119gLSmeFiJPt+DpJvAYS0ToY=;
	h=To:Subject:From:Message-Id:Date; b=W4IIderTgbORsnUYSgyTrE7yvGWZZww6oOBlcNj9dt8IY3qTdqKN06JWGc3QzNRUVKrFjwFK4gi9gdBAOav4yu/A/ABozty+De0yyG+EtG7uhiXf3hTpqoGXKSpI3fzVDUb3dLFnbGz5QjM4D0Cvh22KtUAYAZXL5r0irOt5sbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSvmgACk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSvmgACk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24F3C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746868793;
	bh=WmepCnVeg4Sm5jFi5o119gLSmeFiJPt+DpJvAYS0ToY=;
	h=To:Subject:From:Date:From;
	b=BSvmgACkO/wwgBXhs4sZvbh0jEXPLNm0g0Yec1Kvfz8dwEpkxdEHXG17CUBfeCXpY
	 Sc3Hdf4vMb6xUdtShoMy6tpXHR+Kl8RdeVFqUbw/mMfGAiqSeDxAuUyJaQfsa0IPb+
	 vl5f4JuJflPKZKynwhhcPixRpN3bKFNyiR3uBAQrQFIYKYaC/vnR6DJtJ9Neoi+SXI
	 gRgAu31x0gtPkhGenaQUSuNJHcBbF5erjaXltwso6wR4DEPisqwM+ZpcW9/Ud3E5On
	 XukW9Fw7uGPHqHmcvzyssZRYWGXHIHgAMIDtzoBk8j9ol3VIdXQpqMqhj5DFXF9l4s
	 Ncc3LdEounduQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF98C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686879357.32035.15200503426730239034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf35fe56f587d79ce6fba006b293c515a074ee94534c67e7af29022c6a70a754
Date: Sat, 10 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746868793
