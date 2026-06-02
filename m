Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C70335BBB
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780429474; cv=none; b=raH+ohJ3puBVdaKIIGtapmS7BwmBVz8vrEdZRRqBxaXl02u4GTkCGFp0Ztx4Ks6RiVdUdChpN09Oaej9j8yObaz68OhvnPMDi56kyM14ymRkhcZXq6NJG5SIkkp6zIlnpJyR4iTpViIultPwwgQdQEG0fEFySIYJaIQy6At85so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780429474; c=relaxed/simple;
	bh=FYwsgLNp2M/nHO+TyTIRAphAkrKBq/F/nwi7j3PQ8X0=;
	h=To:Subject:From:Message-Id:Date; b=YPy2eAraMQA6TjU8bPn9fNzWFmhMqTF/B5yHFoYXJXI27fkMkTcvVMYAsXDMloPwcgFSgbj9l2ps/b9v0XvLbeOD+mvGsmW2+7sYYlKIev+fNRCGL/N8RPjcgoUoe2HDNgBkEl8B0Q0xOda3FWzGN3u4rBP/7BcvdFYzd+Euzf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbik/i2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbik/i2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D07C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780429473;
	bh=FYwsgLNp2M/nHO+TyTIRAphAkrKBq/F/nwi7j3PQ8X0=;
	h=To:Subject:From:Date:From;
	b=hbik/i2gUAf2hsLQonmr4uWjayFDmC90wA4tzCS7Xxm7WSlukDPIbqlO4iq4VOCQV
	 Pudbr3FD6XEUPMrHGuJpS1l5BUd1YI9S8Kc2uwAcvflVVwKyxdWz/vCXhMuwsZyJv/
	 /3EhT1s5u+fKkv2smnDw/rXh6BgMMuLmr7gXx3Lr0kMR60Q/UbZPh+XTh+DpkO4I0Z
	 tSLZzpcnI7ZK4EEaMSRDdDixJJ8tnA5EgG6i5tzEb96wkaubmPSZLqJAM0yivRy5Wv
	 L2p9y+Al7vbyVhrMOpvDWAm9UuNlHWrLn7ik7n0X9XE2DomB2k93m0e0uqPIW5Qsk+
	 bn5U3kkQ9KYvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98E0CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042947368.17935.8638676031419927713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd39d0262b69c4e7c5ea3eda07c3a8c9fff3a290e001f1d679d26a49ae63bb1
Date: Tue, 02 Jun 2026 19:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780429473
