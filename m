Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2530E288D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764045174; cv=none; b=U7Ee+fnr0rfPFtgf1+KCSPCljGQGxVpyX6G37TazqKh9+CZdNSvIm22J9bbQI3Fx27j/opfnVndgjflcZV7vqyaYKc8hzPNZgCHb0ckKpRcQKwdvts2Kv0CavQQuUWeIIRmwmlWFtuZ1YcMhDyQ9Vp+2i6H2yWxu/xpOqztCM6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764045174; c=relaxed/simple;
	bh=4/2rFOO59DLJJhFeGi/ooYkDTpPWodkOVYqQO2tWlTA=;
	h=To:Subject:From:Message-Id:Date; b=U1+DwySLym6XlRmJIMeQUfhIHBQhWO3cqiOS49koYkRPACaCUsJxJQZZSltmyak2TROSqCQZCydKdmgZTz/3cAzzvXzC0d/AwolyOZk1FjM38pNPIqlRPoloTxUTlgM7v5yq7/UJXWB4CZGpHkj5421R1kP6+M9uR6om+olqwFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Os7R9Nj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Os7R9Nj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00D0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764045173;
	bh=4/2rFOO59DLJJhFeGi/ooYkDTpPWodkOVYqQO2tWlTA=;
	h=To:Subject:From:Date:From;
	b=Os7R9Nj11v1b3pKrB4zGce4iRZWs+ykDBVy7qfON8Dofuo76NysKGP27eCIJzQxdv
	 Q11+hiB0pogJEDSYMwIeDgIXEpBBlgrKy6woEjPTuXIk2hNt+IlDBpdmRBtPymWom2
	 D6K8ZsrQmYf1WnPozYdNnji/lEWlpecu/2h9d1hobqnOq8ezoltnfjhEtiOS3HTzMz
	 uzh2h6yMP3szx/YoyNnJg6Z0rzL3uqed36Rj77T71Q5oHVaSxR8Y1xl3UA/fPcK5Hz
	 QOIo1g1jskmx5jq+G/YiU9Pv1Vc02KG7tuBz8UjRewlaKyDD57yOPHa5apHIqRIi7o
	 rzZzKMhMWPLTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8CBCFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404517361.14465.9918799033057224157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6057cc0e3044edc2ce53514e7c46efed321c4f1754b7776ee0c0eeca38a2c11
Date: Tue, 25 Nov 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764045173
