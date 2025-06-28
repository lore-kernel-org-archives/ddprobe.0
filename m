Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BECFBF6
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751087994; cv=none; b=Kq7UvceVCfYkZNbFpcTP2EAAdRUVVjfQu0XUYaKaoStWVjLotJxcM9Ig/RkYMfbgWPBu8yv6TzTpTlC/EVdSONVSx6mLeZMfqZOQIz1nvqKDeLSLtIwGgM4CTAeLuIL8q7Ua31TPxyZnuvrG4JyGw4lZ6CNja2VCwxKh6Xn5qsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751087994; c=relaxed/simple;
	bh=CtSI6PyFEjEhmEnuhC++/n+UmYmJ8XhS4T4vd65mSB8=;
	h=To:Subject:From:Message-Id:Date; b=ojAk4QaCvNAKUZHcfV2BFf3g4ByhMX9rQuBH1B+VeDVIOPtABDOj7R5I1lZ1ZcZjNxvr/hqtZsu2l68hW6ktPPGzmaxOu0m+6PR7d2fIdUHaSwABJJs2LS4TGvqWpvYG0CDJ608rjsvjqUOgBE284A+G3V6yfzD3O/3YBBzcq0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8v3jw54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8v3jw54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE12DC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751087993;
	bh=CtSI6PyFEjEhmEnuhC++/n+UmYmJ8XhS4T4vd65mSB8=;
	h=To:Subject:From:Date:From;
	b=T8v3jw541dyIN62hsfAnv8RSzr1YTFBqSFPkaE7UDuUR9y8TRL9Z1bWAVGW+naTqa
	 6FKvsnxlWJQA3q/Rcqf/VSdg9mvYCpoEpakSE+I7UhdP2vGEitO9hBqzeURe6s3UzS
	 +cz/8qmPbVzPps9LC0bkqYVx3zcQgBX6djHe52yLMr5w6MGpNN/ptA+zwcjPpv8qte
	 U5+FC5KQQX0rmPWYO9R/2QK+v68ZOXvNQtfnm5jyLcdTdcoKGJJmSh2Ue3nDGi51NX
	 lvNDHiOucZ9EcUYLo+8eA3iW7KgSSwRq5/jjMZZjMSc0BvJUpYqWuiu2K6h1LLOtwB
	 zQi8kLvKqgeEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98688C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108799358.8578.13751104542198479405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4098d8c49047d92896e96e77b5041b8b62de309f5836bfef0dc68ee4bc2b090
Date: Sat, 28 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751087993
