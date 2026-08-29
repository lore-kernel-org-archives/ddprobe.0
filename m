Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6430A299929
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787998834; cv=none; b=rEojPNHx/uaMJkHznTfv0ShSghFU2h8TRfqiuc8aUVrloYkSX/sPiz/oKXl23OTPxEDFEcbRLMO/uGsVQLTKR53kAoqyvwQuvS0bf55R7bMJ+OO1tYAgtyqGDHvxmgh//5rtiSgDAGRbNSe+xJLFRidGqQigQoZcaYJQTT+Bw8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787998834; c=relaxed/simple;
	bh=LiT3kiQ58NUZO4GVlksLHxkvHRW+P2xhVVAN6dWU3J8=;
	h=To:Subject:From:Message-Id:Date; b=qo9pe6Nd7PlyPzDJqNQFh9dr+Bt++e7WNfHelhBmsCZwF8DmvFHMKS1PzZPZKD9LaNSAbwngHAR+FOX2v5S6IV9zBVDKWHhJ9pZsGowZh/IApzXIcQRJcgeQcRXNxAIKd6H+gzjmWyA0agQP2zi8o+0r5HQxum0SL1YxMfTfa/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSC+rNXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSC+rNXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EC4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787998833;
	bh=LiT3kiQ58NUZO4GVlksLHxkvHRW+P2xhVVAN6dWU3J8=;
	h=To:Subject:From:Date:From;
	b=FSC+rNXg/rzWkrCWUxmtdydO/hJlqRWyL2cP4xwZKLIWTjW5rdrxVqpQMHyeuWASY
	 xIz6h18BqmIPzekhwHSEGA6znPfPdRiZeqAEmDmU6UssudFrC77Kxah9lg/IMJs9Xo
	 OdX2agjRODy0eylBL2NXd5OlsMdNLHwZZjQv613Y1Li1VoRXkJDhLRjQ6nQtOtZG3b
	 qg5391NXKSjke5da+JWUSrnCIvYiZl0627Z2FAEl/1BSeD4AP4m6sORWzZDc6fgxig
	 kTs2jM91dDiQcuOrKfIFYg9PbA/bMw36nq70G/yz/JLt/Dy075RRUPPC3U77dPQ5Of
	 QfC3kEluEmKzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B368CC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799883369.9764.5468148486165761056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767b3621704c6b18d5dd09622e0a43bb31ec3aaff1bee6c1283d24cb005b165e
Date: Sat, 29 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787998833
