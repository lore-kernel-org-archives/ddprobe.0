Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4C825B08D
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790693434; cv=none; b=fTQbFYYfhg7fYPU3FMz4zkGuoJr8kP/bryFa00IXuOxPD5szo50HQh3ZaEn61LuqUAMCTYxsgq5ZZNJlkiApitV/wGNnHqQ8ZqPH9J88akatmP+c/oyFJEhh8aYcPVT2N0u7bLus3LIN0uwo7eNg0h5n0lIJ9lYb98GDrE8Ndvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790693434; c=relaxed/simple;
	bh=8Tm2DlIOw8qLE46R+YEMeUtKAVABI5hkH/MtWI+09Qw=;
	h=To:Subject:From:Message-Id:Date; b=dy7NPZryThEGDNCmEn0lrit3jiY05mUSfcQ4JcRrv3vraqttFFgMtKjeIsoGerkVz0SkZPvHpyg9HEhAsAvmD2/dqnRipsgyH6TjaGzWld+DSGQ4yiMupfCxbsBHoMlZ84rUX11ManwhER/18cIx+wjCc3y8bdOlQiktKf8ObC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHc77WrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHc77WrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C235DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790693433;
	bh=8Tm2DlIOw8qLE46R+YEMeUtKAVABI5hkH/MtWI+09Qw=;
	h=To:Subject:From:Date:From;
	b=BHc77WrSL4sma5vdzzCpDDxwUHuaGUSnLEHl8vxyJfIPR8Y9ZBZfrdg9OIzGGRGH9
	 V3O/aESuELr/7ih3MQuIkBIcOKSlgm5Odcljc8R2QKm+rjXMehZWXhYcbvbFZQMd1x
	 w4nH/MPdzalVet0KA/WLakqrPmVvJt5Sh0gq+I4E1S1Ioldbj3EID0Uq2QD/AmX1FD
	 MCmrqhd1ztaLUAmAwTyBC0dQHhkpcqkgby49SUiBV4dShDZobVyuTmvW3nzxN9/xlN
	 4R5JnfPD/Esoe1xaw8jHME4BnURhJu+5yzDmwMRCYdo/kBS8CPI5L3GqVEa+gzSEZZ
	 TVYsMShmdAt+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9502C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069343368.20956.342721387738562081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8496a2ea187e099436bb38257ac9d4368197f3d374776335c0888565239a92fc
Date: Tue, 29 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790693433
