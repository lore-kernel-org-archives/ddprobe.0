Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3914F1FC11F
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736410554; cv=none; b=JCCgUAhSZUAuHOZ3tvMYop+aH7135pDPGpsq0LzgXBYePRSFinoNSOXQGUQQ0CZWHGInsggdcJfXth9gGu25A10hN4+mtkvMAGOhgF/+WU61erzQR71B1AaICA5N6KnjjmTUF+fxoNebz7larZIwn1/rRMYSOSVquL93x5C3k30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736410554; c=relaxed/simple;
	bh=5mOWi4v/aGaxJ/GydiRDzOSJwKFrImnL30HPhg21qVY=;
	h=To:Subject:From:Message-Id:Date; b=uE4GUPTRDOleuT4jLgoQ4CJP3OJULKaf2MgXvpAdoFOluh1YXVwH68nQFGYK/bKyU5v6P1i0h37bqvvMV+eOTqZT8qXu0edP1n0m/lmU40rvQ/OtgYnOM0f4ZIo33sHUpIr2xkklabqIOUtZ94QU2Zg/fn+jFpi0Yj4ksisA7OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cor2bOPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cor2bOPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A3AC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736410553;
	bh=5mOWi4v/aGaxJ/GydiRDzOSJwKFrImnL30HPhg21qVY=;
	h=To:Subject:From:Date:From;
	b=cor2bOPN7sWZJW5sDuHT9z12H2TfkC2RVjgodQUxvYEMtsiiyZ/ux5npuhRNOyFEu
	 vz8Bp9tua/ohJ6PgDhTBPTrbSmaMBvVOfE7d4T2URm0zAZy+NOFV1DpERgxNAuzb3y
	 kgbtUf6YziH7pb7a1IF+kcy98OC1RNZg8Ylizsr35IUs2Ya0K8OhkkiDxk5uDfEk5o
	 vQWjk749BlfVLk3oLk7H1Tn39b9dVTSWSXXEQ5RdyxHAQ5OsZbL2tb/rievMI3fwic
	 InkM5m8BGmEik8CtZ5xm4BE4OQ7LnSKbwrjs6d2GtMHuYWbZbLRPvgsLhK+rpg9ECl
	 Rbatg9+BkrH6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1440E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641055363.23057.11229730424973832999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5fcb5905128e8338daf94fa89527794f995f7931d1a2bad1ff85426b318a7d
Date: Thu, 09 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736410553
