Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C4B1862
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717876043; cv=none; b=DM36HijTVVfpqPgb3APLQpqiaz+3CU01nApYuJyaFWliTfjHwDCwM2q9kkO7PSzlqQ47+T7FK1JNDi0cgloRNH4Xvod2nBzQg5Ph3UPvVnAIAvmPfEYY0UFKN8OhDpeIGauh5H5U7z3kwSVTrEkLRntqxg0GuZKpm3yqG+zTWY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717876043; c=relaxed/simple;
	bh=y10IfNghsUOtHTxa2JIEls+vUbKhWqUqLhuTnR//AA0=;
	h=To:Subject:From:Message-Id:Date; b=KseZjKA16PldFSVmEfdz64ykpgf6wkYBSGEGuwYMrpxTJS3igwm66CWaRUhHVifZ6M5RVrf1og3SFIfB3W89whx/XtwtyjbPFY/rl6SaCTyhDkbAabL/9nP3JSIIQBRlfxrBsJjAa+qAp3MH2vsrFHOJGBOd854LW/g2gfhcUug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDuq4k+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDuq4k+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3FE7C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717876042;
	bh=y10IfNghsUOtHTxa2JIEls+vUbKhWqUqLhuTnR//AA0=;
	h=To:Subject:From:Date:From;
	b=IDuq4k+/EBvTYmFbIHhA9NGUv56ZHpf2Z5Lqnz33fyX8AcuvOlfRE9pQtlEM9wc8s
	 8cPK3BGDZ2fy2h0xDlJ8yX/4XIzY6rFe7TR19sf2ktohfFRX0c1E1SRGnbIzsL+Cdi
	 xFuNUU4QeyTHbrbeZBRVtNI53OQ4TsUu8wVsi8lK+2wBKP/SrCqzzn28UmlAut3Fdo
	 Ak4r9w4s5wZCdDF+7tYsbOKTzoV007JtHWXgxfebPeWuGI9v22gRk3qgOtGy0Sibty
	 qkZaUDpC64Wm4OBiVff4aN2Ueg7mvBUJErruTYTZtfH59+fBLig5Ee6RW/fU1lorHi
	 gdy6mPNd2GD0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEBBAC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787604281.5147.8338637126768190676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9796df1f2d5a4a618bffc8d72df7c69f5b41d6e0ceae319ea94b8afc394e9d
Date: Sat, 08 Jun 2024 19:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717876042
