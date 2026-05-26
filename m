Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF233AB274
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779787354; cv=none; b=mdURD62ncDzj3oPxJYq229ZDvMwAyI+vhUn+olvEGoW5HGxANCF0CPIJ9jL0vCHv9r0etj/ltbiXnLi2XzywaqE0MAtO7G9+kB545qpZcrKeUUoqv1GwZGix26kF97qGJCVspMPX3jur5BCmGSwpFMlo9e+WrLDLHRXSffb0AG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779787354; c=relaxed/simple;
	bh=rv8xrmKpCmlk4ekv/SnmnAnZ6S9J7G4K/WZ6ISu9VhQ=;
	h=To:Subject:From:Message-Id:Date; b=mg7+WpER9X5SM9/z0t2YP7pX086DOrP6EHPkWnxCl+3WOQ0Dj/g/u2A1soxIwoVeK9YeAkhuVqO+aVy5OUebM3IL73aGXTtMcDXBbcFbwl6GizI6ubocRt3t0OGnxqV7ibOeAybTDZM2QEtR06V2finVFybFDKh4AbZWAK8kAsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOTlBGud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOTlBGud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0ECAC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779787353;
	bh=rv8xrmKpCmlk4ekv/SnmnAnZ6S9J7G4K/WZ6ISu9VhQ=;
	h=To:Subject:From:Date:From;
	b=QOTlBGud/uwpwV+JnVX8jKUHnVAgLlomwMK42kREaW9RpQBMaw4vzaN47O40Z2HOJ
	 9AVxPdJZFFT1P1j8Z7zyDlhLUPzJpR05oaCK0Aj5n9z01RP5Ejg/gxImJ+k+wyMBuX
	 1WJhDg0xdr/KHzr+V6wc+BSYP23EKBAsNUl15r/lSa5QpNjGYGX7Aq3OUdZhwcEFvo
	 oHl+syspGGun+esUBdEox6BIrub+y2SgDmL/RBP5F6duZ0M3or35N81YKWd0qLD8d/
	 qm/Ox7wLLWxYaVGOjBmWZct7v0tzuzy2PGAXbWP40xD37r7vUZT63VuMhVYTmUiuxw
	 yZu3au2Fw1pyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9780CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978735368.10645.5414167514985623782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72b6009e6800ed8d1fe6f4057d6db324d7f8c162f1f073ed0b8842be9a88f77
Date: Tue, 26 May 2026 09:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779787353
