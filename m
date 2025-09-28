Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C2516A956
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759091395; cv=none; b=NPzYz+kWSG1qgiw9qqV1az/OzkOAV5s4M+r4I2VZlN3y2Idv98KzbN/455Src7pXsJ3mK7DRs+LjR2pBD5UTdqchIxyVKFOPzmZq0KUcuoJo+ga9oQF6E64GCcvr/A+g5gTalBacNjHoJ/OUBZH6U0VPN0w8japKyzewLxDiUVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759091395; c=relaxed/simple;
	bh=PnPneqooPnj4eV2eOOvwVMIv/XJbPp1m1FfgKhcuo70=;
	h=To:Subject:From:Message-Id:Date; b=KKRK41Sj+vEh8Mp12c/70LuLwy4M8Dn6wgmwu2XlSgRNSg33/sAeYwpZfAgw/8szyJRjZYA2YaI0AZYQuQLDeOuAK9LfQMmFS+uwsDLynA0fcxvCY5dxmD/t8DXyVfSLDRvT4Lvcj6C2IsZo7Y33zkgxanz+am4GIguchjELlfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmLdNmtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmLdNmtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8424C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759091393;
	bh=PnPneqooPnj4eV2eOOvwVMIv/XJbPp1m1FfgKhcuo70=;
	h=To:Subject:From:Date:From;
	b=FmLdNmtVxz0gwb1zVZctVzt8NkH3k67GHA7ki9DH5JXaYBwoCSesx4nMqXpJtCTGz
	 FQ/qb1lUXhWMcnpf2ucX1O9lTFgLXYY9u7P492HIG5KGFd2kLG5v0TNjJT4KXBoAyw
	 9nybxZyRP/AnLf94jid5CXXLcDnI7Jtz67IZE2gaRelevIiheKXFeso67xprFjN9em
	 srSE61UhC5TDajpVqu8ibpYu+nv1hRs3NipAOfK8aHNafLAHqJbHNnO3d7EHKsn+Ez
	 b55TiVzDCz8a8ThttLZf3bogjuMMcaVehb1PKqqqcaUccBojfOSU0aNWF7HigUGsdH
	 wzn1842h7/LKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9507BCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909139357.19684.10156337637275248491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6239fd718fb6edb7484f9167fed8b28cbcbe98fdddb53e22b61e52dad416de26
Date: Sun, 28 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759091393
