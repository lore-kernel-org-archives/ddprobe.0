Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F5D13C834
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 11:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713352763; cv=none; b=H6907SfLPIE8sKFHHEhBDRl65CY2YPD8sSf/iKTwFqedX6L26A6FNrsGZ5HN73vXRaQyG3Hq4buWYC7E+kMH/qeIsduHfz0TlT7njwX6oGrk/LqLJuKlb3cZzAstu1gHoPXjqeCVsbYcN2NuHdEQ4YzxMhqcnFzBTKl2JvJ8riU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713352763; c=relaxed/simple;
	bh=ifBsZfpg49xcNABzocA95Bm6v8utZkyMfn+gaVxmadw=;
	h=To:Subject:From:Message-Id:Date; b=j+gtw+jIToTEjKLvVxCTImT5doN7RWIgyrmxmNTiBT1Ol2O4QoYOjUa2zLF8WmNbmvimYs+FISeWaxQYA3aXr7RHzYTOYziPf3WA/ln7fhMYtbAPfK1CH5NDGgxsZifoFaWpeoHdhUs0oBeRdu/oT0d4G0xb173Kbc/S+h4w3I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzOpBzs9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzOpBzs9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AFDC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 11:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713352762;
	bh=ifBsZfpg49xcNABzocA95Bm6v8utZkyMfn+gaVxmadw=;
	h=To:Subject:From:Date:From;
	b=EzOpBzs9zk3oVFrtyRnt4aZiAvoIfuJeqsO/6FfxT6bVXtgiNSHP+U7jFcNVTHPg0
	 lqrklgGwhn5fpG/xQI+04Hmib0Rbrsdf1ggZfJZrGRJ1CZEimJiAMxWgQxUelBsTXm
	 m0OJ/8+QRgUg5yCqxP9OEIvRHpjMrFb1QtYKTfWsWzoLVNl+2dRHmXMF06aR2SalYQ
	 +9pVKwB4U6w9Gv9YZuZ5jm5ci/RvPaUqfJA5J1X+ObTyD54EQrgDhZDsVDNvd5bWtE
	 3XELFpwVGSf5/8c3yc0chGbcoiU5Xp3Ll/3e9dPDMNRm7JDWXahDeX0i9//3CkJ7n6
	 N3I9sC1XkL0xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C40C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 11:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171335276281.26077.2709516204327068298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb589170abbcccfea06316654b085ebbb576587c4cb5fbf00840531d7db7254c
Date: Wed, 17 Apr 2024 11:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713352762
