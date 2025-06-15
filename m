Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E231E4A9
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750020596; cv=none; b=ZL+PDfAfqAMQJsd1hztEj0g6+QFdu/6VlDTLvl4N5k7pb3JPADmifuXKRpcSmgjK+YnC1gzRCM6YiR8BnzvE28KN87PpaNqv/QaIcm+njCejwHfdXgNf4+qJgzebfqAYzoyhbc5lxJ/expZ+ZIkXSQ3hHsvLDNLJMsTB38fvxNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750020596; c=relaxed/simple;
	bh=b4G7lEhiEVlJWUfgKsKVA0mjP3EX10CFZAo5ADM2038=;
	h=To:Subject:From:Message-Id:Date; b=g1ofYCTfrp/AvuVxw7r1Vvbem6aK6W9vNGAE+QK+riIaycRvQABl9dEf2faa+62cO2VJmLXtCnGyoXHkIwh3qY/vMhIc1BpINXcmEFe3C89+GJYAodTv2W1ipyRskxtLcd8GDq48BL1hNJeaUoAiSKkvKp8c4bvVMwiM5YHPMAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDv1XZKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDv1XZKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6288C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750020593;
	bh=b4G7lEhiEVlJWUfgKsKVA0mjP3EX10CFZAo5ADM2038=;
	h=To:Subject:From:Date:From;
	b=cDv1XZKIHppu6xEDCAFLrOc4BjIlv6JmGqxeAS+rvf6S+A9FxrGM96SgTGCGm5Wuh
	 rU5QFjC4Bdlb8UT777ZK0p081iLDllre1c1WRx0+5lDJPgmOp4M9w8zPWhVBlQxyed
	 t44tOXwy58GTM4jeAHDnHkbby+lOSHfUhvLWyNEM2QA2WvUMnoOuESxF6UQcPxSd0P
	 mSBLCAbb1Tvk+A0CJMbGIf+PCoWDUBtlFkVSBS90Rt+aqEHb+lO4Vb8UaB6iq1kWQv
	 fypoT3dPNmi12NypRXQ7h7RoIkyRf/AnbYOEdtqu6anwBlII38ObCwfaDqjYiITRuF
	 1yirr+t/Sv63Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F5FC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002059358.6616.1585460337136135995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be30a81bfe6ee94e1149f1c63c1aaae96dd2ad901fc0847a5115e368bcecb380
Date: Sun, 15 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750020593
