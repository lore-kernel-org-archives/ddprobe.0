Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C382A1BF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784069914; cv=none; b=A2YLEhASWbGV4/1/jutsXvJg1904FgxrNb0SMKuxdJABMuIL/j7dk23YwLjwAqzuCKbav75KL7itqSazqOOWVvvSOsmpMZT4eDNsFwQYnmOMMxOVIAh7U3GP9aXJmbLe5f/Phyb9+jNudZDzIOEnhAInjEmHb8yMFynVJF0tKwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784069914; c=relaxed/simple;
	bh=duCEFzN1IYIhhVbSrOPveUiIrQ8I6+/vv1xXmlB9DN0=;
	h=To:Subject:From:Message-Id:Date; b=Jog7YG1vQFTKbkVrkdGy2c5Loha5DcXmdmyKlosWY4meALysUQ8ncRKDWIdmE1YcbzYu6YRRphS/vmFbiORsw6UzqnT/qvrtTm5vKOe8G0nU4+6y9opYGmZ7QzRPm7/S0u0J/nZJZbVvQSzV1VnkFlWnP8fuNbSqT9xPPEcA2p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwuBe5pP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwuBe5pP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DF7C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784069913;
	bh=duCEFzN1IYIhhVbSrOPveUiIrQ8I6+/vv1xXmlB9DN0=;
	h=To:Subject:From:Date:From;
	b=UwuBe5pP0lCOO9alG04QR2/H6vkcnPKLlP4pykuS8kUkclbHoYyEX5s0LDxOuDOD9
	 7GYmRHtUKD2QaadVsbmrQS89w9+rH3ycDLUmZhHo2zK3hJSJDuOPA5/IjLZtxWEr4X
	 B9XuFhfkooXbxCcBPpJ5VKIDMdeYwsSsOxfqQP8qZv2fl1RHl1VZm+0mHAopOuLqHM
	 51Y8L7tKkpZru8gy8EpXP/H0nOit6zXYH2kZTtDLUyudwljnltbwywRyYTx4grYdbg
	 mKQ/WyP+k716WmFUxEGBsgEqZH+ae3zTIveS+JtiHXWAolG8SlIV0yMx412R5j89Ze
	 OdZVWjsMPbTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFE9C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406991373.7459.4381479730581731814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50796a8b1e9345eaefcd11b9436d67de278a8e491a104e8668fcd4731bf8385
Date: Tue, 14 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784069913
