Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162EF2F3649
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750966794; cv=none; b=LtdwtCh1GyNibQ+B0kAAiKmCLMOmPyDoqir+zGrH/ADBWsIRyNaxqNif+Pbpa0VnVO34xov3amtKFrYzqJwSE36DzfA68nFNY7SdDfouuTUWu2DsKhKo/vhivLs6TVNkqss0k0xH7n1Yr4NOlozpdC7tSmsYlTkLpw0GIBxuHlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750966794; c=relaxed/simple;
	bh=Kn8pnI7J0Katz0m1ky2mX0z2eg2V1XEKhOBu2EbOQg4=;
	h=To:Subject:From:Message-Id:Date; b=Zy8stN4EsYVGFj6lglhXud6CcZAN8GWLtp/v+W/lceoAufM7LDKJdzGdU4M6X0YwRZBjoF/ep07g41rDoPiJ3fPwA5e1kOH75xOpByuNc6ytFc2lSIyqRXywa5PPJFFf+f1dki1/kWAzDfdGWvHm9oeL5LdJlE2zPCpubOxfxNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJSPvI7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJSPvI7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A385CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750966793;
	bh=Kn8pnI7J0Katz0m1ky2mX0z2eg2V1XEKhOBu2EbOQg4=;
	h=To:Subject:From:Date:From;
	b=qJSPvI7g3PxHbfGE6pQrgST3BJZOCxx8F4jyYKqoQlST57YJq1i6te4ZMqfCwGjVI
	 k/cqEZLrvFg0mXzEkZvlnhdwYnvdaAWK/0jdKqsxgzELjtWR1LQrlbeHUAb3sbvOS/
	 cayZ1VRt9q8sCBHt6Twa7AyG6AeJf4eFVvZIdYZv4tPYSoKn19mAEsNA+z8XLKf2GQ
	 nOVk19ILmpHbG0LUAJULOdCiFbuY4WwlzvIVEy1ITCgG4YStWeN9gt3GcNA9jcccZP
	 tyg+7dzsF54UR1AywoHjdcG8CkNZFPg3I/Mpv7b9bhL82+8Njt8TgU/tGsLh/eMMeX
	 4XY+ESjy5vGbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92233C7EE33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096679358.13396.6379628976375635520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe3811d04d0bf13e2b2d882f0c5fc69529157e51129a40bbdf20299c671492b
Date: Thu, 26 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750966793
