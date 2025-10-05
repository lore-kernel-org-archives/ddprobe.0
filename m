Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EC8273FD
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759693794; cv=none; b=fvzFfEOwbbYPkP5S8ur12hzMMlsLqiS2rxtvHfeaKUsE34l47bb0SdhS6faVEGrlzA7al9UC7cOF81TlFSkJ5m2Bg+EbFAdQbSNy3MZ9QW759EfGJAsdtGbZWgIBGML545CKF3SVERmlZDL6w01yeirNoC2aPdowKRAOr40X8dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759693794; c=relaxed/simple;
	bh=h2ieql9luPLrxS+HuzA7DS+aZaKtcCBmZqmegawSvYc=;
	h=To:Subject:From:Message-Id:Date; b=kAmvgI87Sny856K282uFFlsbLeJaFYrO/hEtOb7qIGHc55FgURGMkD9Ciy1uzWRlYEFq85d3qiHUZaNiB9yOfJsKwstNaknfkd1tNVvl7UHJS08Air7J8qpYUA6vDTEFgV2vp4IDPKDN4KiKbAixbw+9kaoc9NtVoVmKRCKYzBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiSZSrNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiSZSrNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29A1C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759693793;
	bh=h2ieql9luPLrxS+HuzA7DS+aZaKtcCBmZqmegawSvYc=;
	h=To:Subject:From:Date:From;
	b=LiSZSrNrh49XK2InG3sxEqDEHeaSfBtZLdgOAP5DdPyj2dAvk/Ozq4LvJDBLNrV7K
	 EzPNfTz/VCbS9JwoHYrNci73Zlgdv5V5BuOn9CG7G4/kLcf7h2Q8o8WzvVD6f6v9EP
	 uzdgVQLjL9QFET73+5++GL4QUs9vDPg45IE1BMsBMR/qHXvAhbCH68ax5nEiorOaHF
	 oJuySkn6ywhqh/K24unj4WCuPQfxSGCfA7174DOLppuZX1tM/03mNB/6ubjV9UXeKc
	 DIHx6nsFypSr00ARhr8tkxUYgpDKxA6ojodo1Q19BKHJjFn8MTknN/cpCuu3sZrMXg
	 /vsP+kBPcfuCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F78CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969379358.4261.3171917126193222146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b15a6d5f600f9e488cedadf37b19e92e7e06007c81f9992af97ea68ba7e48c5
Date: Sun, 05 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759693793
