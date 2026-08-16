Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5902A282F0E
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786912234; cv=none; b=dvQIHj2fqITVKNQxcJDq+0n1l30YLRqqHF/n1AYNY9CRXWaujuM5sZLD6q89jwUX1/7KaCemLECpIF87PUFaNW5KPe3xMWFbGGzmZPMgne92ypX1wUFHyl0Ev5btthzbfsFCLgtx/+6joDLRfxZv4XpAAaAOPMzaKHudqMj94Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786912234; c=relaxed/simple;
	bh=gVSvM1kyQZqFJVhTb4PaGwZEqhEd0uteRQ38YlhP/pM=;
	h=To:Subject:From:Message-Id:Date; b=soA2WKEvk380kzLiaNiJbzg5j7+7Jvb80oFNZILgk9OjMnTThHq+EGANIbVV9wsW0YRqIxAs+3hvX8QIdHk0by7OkyS16/I87LGZ4oQzW/sviPC6dq5uYKhN0VjFBeoBLqcozPx9WfGhJT99BwKS/GKn5SAML0WW41EPMsgnaIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPko5Wey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPko5Wey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1ADC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786912233;
	bh=gVSvM1kyQZqFJVhTb4PaGwZEqhEd0uteRQ38YlhP/pM=;
	h=To:Subject:From:Date:From;
	b=DPko5WeyWx02E0YCN3YGOmOD4kEA07wxR+bVA+Ky06kSfO9IxuzB2p/yyOxVhFNgJ
	 a3MNdbWVFSFJyxKG0H8wBvnDqgtZe2s24U31lgMlhvlVYgYDWa+sl6/V0yOAi32yvp
	 WOz/LH7+GTeYEwczFPMjT13uZhbgePB7+5sNKxMGg45+fYSSpLpoO2OkRyYtqJEtWx
	 fQ5ucNLeTk3Xk4/Yxs+OVDeBif53WLr05BR9/tiXMvhRdVzpYpoXAJjMpUnixV/24L
	 iHuQ+ZpyAnv7FwM/277c7khxLlpCLkylcMzkV+400gngYdPyF+a3f8GyUrF6QTVM9p
	 0FxwhZZOWx61w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE5C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691223368.21806.1795801899633418442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0818a9a01815686380a7fd333b766146a5ea36e7a41b0f9b40859867d35f4b6f
Date: Sun, 16 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786912233
