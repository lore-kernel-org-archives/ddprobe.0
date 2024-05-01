Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45492168AFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 23:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714605743; cv=none; b=OaV4v2q9RCsN8nl9I5ZcjSdal0KYJrqmvetcu/IXH5+4meKW1K8CO5cQwyYKdUAJ2ZYJU/i1nwQth9LYegCa9LBZ61hb9XAMfA0h2HFnJb2Zm3CJ1YmnLfKyQP1q5qfOpX05gBbRe0Tnf6mKQvxdh7RT8bX9ZeEYBGGvIVOTD5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714605743; c=relaxed/simple;
	bh=4wfsRuHW6BG3Gv6HWCjxZKOUJVRNKPYh9SUdCxy8OaU=;
	h=To:Subject:From:Message-Id:Date; b=FhMvcWjm5fsm++jr/rgE6SNXLtlcQEZP6iLGvJXH7uM0Tc9/YjyPhxtjoy9rAqbHuQ1S6nBOrZsRwDMp+ZIF7NdnLwSHTZLvbW83QxLtMSO2a2l1U+2TAamqJpwXpCul8OeWtbsxxjE5gUq6x4BpIvo7/ypznzLwFSRe/X3twLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5ot/hol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5ot/hol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1F8C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714605742;
	bh=4wfsRuHW6BG3Gv6HWCjxZKOUJVRNKPYh9SUdCxy8OaU=;
	h=To:Subject:From:Date:From;
	b=s5ot/hol1CS/kKTXGm0uKbD2RHkVLJx5RDoia04m2XhYbOQWXMYeVN51KMX1LBMHe
	 F8LMQ+Bt6szJmCD9+k4wlp7WjhsGZHfJuMZks7FfqDbWIDObFLLSp+Jnd6J/D6qBaV
	 pmTuvQFFtszKSh8veeKbcOxrhA9TJYe+QwUpfG4XBsc5YRhFS5O2ktbafLPaU1w05w
	 8PyQ1aFbyKG4Mt+m1AQ/JiVgMjhMoemF7isyraT3sLDilEoHDlTJ2EMpoZFIVQopb+
	 o/argo0uc1TsslO7ICLE2+u3+gwbRHz1ZWc6iiGXsaNHUJLeWqTPfDwMfRtkqxKn3k
	 e+34XKXWEzHbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA9DC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171460574276.30146.20280016682394692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b57039b962bb679c34b01b0978e734ab881970e120f53c5e0ed96604755e782
Date: Wed, 01 May 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714605742
