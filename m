Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F1013C3D5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726605954; cv=none; b=ErpfB5TqGFRy8ZzxnR2NP+DJt71lvdBPOjykYVMuaItxe7DanJRQ0m6QGTLwMnTrLZtMNDj3i6UQLf/ko38pF+Pedw/YLDGJGo2mwZOwUmD8w38Xx8ZUiqViyTH9rP5nY0ytsyh+6dO366OxcjaRDXqbKoN6CFNMO5h18o4OuSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726605954; c=relaxed/simple;
	bh=GDJ/cwDRJo1RA1mSVfuhEDA0WRwtqyg04jwQ0QJPVkc=;
	h=To:Subject:From:Message-Id:Date; b=t+PuDVIHkEkMfNLbiuIh6Onamu5/CA5GRWCwD8c6RxxoHcGXWNFrvxtDwz93UGhA4LldsPV21SnPPdQ5ms1579+9JIp2X8YHo9T2vgtkpUbPSppHPFDCPqZKt5V3MB5qHdOhbqJDK4IPgO2EJceyWhGnKGC6CFGvNhs4LIzaYWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3aFg663; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3aFg663"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5914C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726605953;
	bh=GDJ/cwDRJo1RA1mSVfuhEDA0WRwtqyg04jwQ0QJPVkc=;
	h=To:Subject:From:Date:From;
	b=b3aFg663zf3rvEQ+Y4WyTynxLsovfKaz9mq+XQu+TTwc/piCokhFUi9Z2inWFwO8N
	 OSpb/jrNKIzv6iLDXu1DO7DARlWFJQs1CaceV6qx3wkah2y8clTQh37KBLOw/LGcJJ
	 LkZvQCJEuuCBdy7L8bZtjUMTbXB2HGQxtLqBE26Tg9UUbM8VY+Ki+P1UTt9/JKCoGx
	 AnN8Xux4NGXXfB4fvNiG79WIAE/W1Ca2z2mE8oYyE8gDv0B3NXW9oIvrTqXgzjCO2k
	 Xc9kO59A46N98rjO7AmuxoUkNo6CS6xArVC20T8WM6mynqEY5BiaOuFFiUmifFycO6
	 1cOwOK89kmz1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B7ECAC59F
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172660595358.12100.5066114429574554995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077a329ecb49dff866237bab02573721ea2a233359115cfb711fb25ce8840f1c
Date: Tue, 17 Sep 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726605953
