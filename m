Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B191241CBA
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749533394; cv=none; b=Jzb4/mnOisUhkY9E2ixaCiY6TWzNb2M/F9IacSjydHotfeH3e8KYBsjlVX64z/LseBhCd10WmFzPOG8VM8ESV2vOPgF2l/JFlqCbSW9iRQ7oaQf+2i3IFE8gohw5aTecrZuWXQ9rkadHXgcnRzBTUHL9VoC6ktt3vjkESwJkOIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749533394; c=relaxed/simple;
	bh=4NuUen03bGnehIOcb8hRB7fEt9QvtrUClaKBKd2ke9U=;
	h=To:Subject:From:Message-Id:Date; b=TbXS0oUD0lpKeIPtt+TyA6G4Hjm4yXLOL7hZ9A0MGPIcV2CLmv3lp9kp9teeKysk2IjG5YvWtS7xJO8SSdaby1+E+hPX7KhtBlAwYk13kjbK2hfH9o4NfQnTp1NT9/oYmwEMg5kqXRr12hypcHlrbhMvGs1s/xihw/yB1Pik5Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKbSTnaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKbSTnaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5486C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749533393;
	bh=4NuUen03bGnehIOcb8hRB7fEt9QvtrUClaKBKd2ke9U=;
	h=To:Subject:From:Date:From;
	b=jKbSTnaq+ee6tFF8IRb60ttGSesbkymKKIqY1K2jsno8PJQ4eF28EFMvPRq3SgJFE
	 dAzwEnJnHwij+oxOYGls+IzaDeky8VZ6kTSyG7cesFhdVdJP2BJpTnyBJ0pSFkgkc1
	 FdbdMTDYrlBew53ArpL5TI82VVJBS/20FafIeyUAE4exfOWjlFmptCYC4iDXOv7TGi
	 1sOg3CNboPI2yglpVe7bzBmWvm2bpC6rNKaApJyEi334RGu3Bqol/RKYYzsYw84Gs1
	 DMOJGvBOfBm8SRmw6xZyiBNVjc1DUvoIcUJ2f/OBjJ8Gcwm3/CrvuFAPC7GwyHZOSA
	 Ttcqm6WRPuj7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE1C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953339357.13154.6659115989565694811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daab30e34c752d91c4a5b8d8d84fe341d9bea045e5a6458bee7d004d35305f77
Date: Tue, 10 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749533393
