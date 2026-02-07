Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33788324B31
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770473634; cv=none; b=lwRhfSpQAN1bfBnGdpa7y69AIZgPXlsYRhauq3GwMk5mbiWMLF1N5z6F9BFn5MbOCHonUcU5WiRDdt4eWM91mo9AQHCIkyp7ZDUOjshBsh94kjeOCX9il1qmt1efZM0Dg9feEamdHnRsx/+Am8+JsKR7KvM/WoLBOFn9V+X82jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770473634; c=relaxed/simple;
	bh=x0ZUMUlmR/3buZjsHdnviUAFWSKA+AksRiepFzXYPx4=;
	h=To:Subject:From:Message-Id:Date; b=M26jHDY125QojuV5bQwKfXCKVytwOCdB3NYH6XG7ucJII1TRM+hKNDAgHgrZSI2ia0bXYJ2dEBM+4zKbZ2r/7rLEYvx0+J7XCHk/gOOX3IoBsQ7kTJZMo17Qj4FEQtZjjCCXJTdDKHbKLyQ5OaNvGaVZAUpqfgeP/Bhd7fEMj8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1maiAWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1maiAWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC041C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770473633;
	bh=x0ZUMUlmR/3buZjsHdnviUAFWSKA+AksRiepFzXYPx4=;
	h=To:Subject:From:Date:From;
	b=o1maiAWdslqsgr1zzEQGEYV8NrnQ7FKdCbGL8tsojmGuLUGvNaAd2rLkexP2uYR+2
	 M7Kqrq70ziMNSeooYVlNgK2xaRJZI3l3BFca8ei28SnG2Jfv9cQ9blvxQP+YxzQazW
	 Y8OByyvDfCE0oiRQTkApL34CT/92Bc8HI6uBDpezQMZ4Phxcu0KMG2gPxsS89/fH5q
	 PRAr5EAna+N+7ohlf6UZ442EajmBxMOWrAX92PC4/P2MTIOmzKxlmjMXXpLh4gCT7Q
	 FH3YSNqtvw+DqdPPwiZGl1/zMQ2KJVBqSfvRpejt1sECZXag5B6YYF768qPiHE5OPu
	 er9/agQyQw34w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93909EE0AE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047363359.4918.14995712216996380148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7aa71638d564c8a0cba59253e26258a7b140f3a6c66c8fd9ff19ee00f681f0
Date: Sat, 07 Feb 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770473633
