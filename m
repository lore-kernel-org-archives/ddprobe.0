Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BD1282F31
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778122654; cv=none; b=mO/QB40NkYMayaKA9gCEsQ9Opd/0DhOmFIRh+aWjDzkiYC2OAS6E4tybHAR2A586lYaK4/K5C7iNNpwXQe35q7WPRKL0ot/vXe5SKzgMg03S9lQqwRU3Su09jt8szwrQ0Wheqza5wUbM+wNfrjHU1/gyWME2yLhPDodyYSqQ3zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778122654; c=relaxed/simple;
	bh=A2MFVincMXK2Qfm1baKmjNvZPWagpiaBOBdCdfnp+g0=;
	h=To:Subject:From:Message-Id:Date; b=CJV686yLE0cEo/XJukBFh5vOYnJxS9ABzCy0Bzq5BvjhXcQB793iCUATWNScPCCtOrnuYTEIbF+xE2s2XD0uan+Xl9WtuvaROx05i+6t/0vbv7eJYZdCZsB/Lid4Ryd3OZalHjVex1ak1NrDs+KiiR86PB9fn0C/1jay0IKRw/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbKDqLi4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbKDqLi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1C8C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778122653;
	bh=A2MFVincMXK2Qfm1baKmjNvZPWagpiaBOBdCdfnp+g0=;
	h=To:Subject:From:Date:From;
	b=IbKDqLi4RWezOmAvW9UFsW6GlUNoyl+2QNSsDQCZq19zkViyCBBJIlOukIaOTVEgG
	 EJ5EuKjxo7HcMKUdYXgxUrTdqn5DEeWQ+OGtF7pZjRqCguVfmY9VLfcZf32N0UF1iZ
	 HTqErk4ThRg1o7ePOL6f5cmslbaUkWRs4zAWTwx+uOt7wZIGego8Q3EqLCGsf89Apv
	 /oSSg3gonElKBNQusa+UGtnRAkBJ87MD5u9RAQ2ZuIWe1ISWaIcuGjMzq0RiJStKJd
	 WrSAeqksxU5VCDTtm4f32PnnmVeWXKrZdNfvwbZVWtnDVBmYR0jKeagsPSYaPOOSr7
	 hT6J/maPjG5Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B779ACD3436
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812265374.23684.7773379863966639919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e61056f397dd176f88c353babeddd4af3eab7f9a2612fd7be6c418bffb35326
Date: Thu, 07 May 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778122653
