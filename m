Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2811D481A3
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753993195; cv=none; b=Q6dT8/VEqV9CHuZWIyUoDGKi4YsInk1pMfQEuQIDQ6pUMZHL0PbP0WHo3xqk4axYbuOZYdoNl6m4c24NiTcNREP/Ys9QR6tZN6kBpV8GjYm4w6RR1Xw4XDvu+PEB5lnLWBa8hScfx2d/ZAYyeSET2CWC676Q5DgR5uebG0RXRds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753993195; c=relaxed/simple;
	bh=6h5+faFVuuJOHYYEcSWj8vNClLEh+6jCElGQJ5Dl33w=;
	h=To:Subject:From:Message-Id:Date; b=K+vaunH3w7AJdYlvJ0CGJoqN0nBpEJO9VUcY+HE0ASJvWDDDcEQgdyo3uVrIICZOlW3tw20S0MQJwK6T/I2OD1f/rAcfN9Amw1+yEIXgTK+hBu+hkSJTEyr+fof90YVQH1kYTXdORbic8uKvzMIGMAK3ECp8Sx+W+04xOWuzGI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdXu92+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdXu92+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F397C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753993193;
	bh=6h5+faFVuuJOHYYEcSWj8vNClLEh+6jCElGQJ5Dl33w=;
	h=To:Subject:From:Date:From;
	b=gdXu92+7wYpBIGLW2hD2cJPreFp/E0K2xnaP/NqBBcua3vYoXLXtAOZnMGxYfAZJN
	 8/+w5+FVA0mV5Sx6YwocF/k3tzXA+AQzWPHKidL/62Lg/82ZC9zei+lnualfb6D6br
	 44NpkiXc9PXVWQlXAiK8+/FyaTSz9qZtFFOWJh/NfZdfarcP4px4xfxI9QoNNiYQH0
	 3S0MFA/F2Rn+87Rxt98aNgMiUTesx5Fhm1qYKGBTuuoNKKKjyIlkpb5KIBgIF6ICQm
	 RNCfl6Jh43RPOR3RJJo6XhxWXvUTlPs4XOc70rlgJnwEmBDc4w5ZjFTL2kZce90QNs
	 728feUVNI/szQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F449C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399319357.21625.3959967629000254695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4955be10879f9150d481ea1ad40e97387cd703b1b1f43ef34f82485ef65400e0
Date: Thu, 31 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753993193
