Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DF3307490
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750825194; cv=none; b=lUBv9/ha777KDCrnFU2jxmdEMsf52E3xmdiV9lqaT21H9iZi/u8VP6oXANqQipYQcIblnBePEqUp32hIsMvQi79B2DGvp3cv028+mymfQElaGBEfcVGwZVvhWz/awNdXa3ZA8Fe1lfa0diIA8Tln73RVkUn1NRCHEP6bky3H0/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750825194; c=relaxed/simple;
	bh=YxtmqV1W85j4y8V9qw1ojgki+J24KY/wNDeSQMsRamM=;
	h=To:Subject:From:Message-Id:Date; b=uhflChZuLAjVlLGunBx9AiUkFAkFOsuI2T7620lXOV28C15prcNsNuMCSmApkXUVQOQ47H03P4d1tUmzFTYKUcjkEg1YP1foDCEYy5eDfYohqmbQiwBIV9lM/LJc6SvpSOpdtdTmvclf9gty2fZkmNHJlba4r69JuVJwQMdFw2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpZfWtoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpZfWtoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8419C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750825193;
	bh=YxtmqV1W85j4y8V9qw1ojgki+J24KY/wNDeSQMsRamM=;
	h=To:Subject:From:Date:From;
	b=DpZfWtoH4P2rCUWiTA8nUGFDm79tzg1zDYOgT5gpZok6Sd3H51OhjQ6gHwOTQHAk4
	 cPrRq7M7bJNVkenmMGmRjrjCHdI9dIB1xz7tgNdlqbzg/1Ov9ZPxitjsKlPe/oInk/
	 ewpKQWsKwc9BDdjGeRo4yD0ch19Cm0w2Tu2vWBQolh6EA8r9rUy6d0nPdKqSCLg79P
	 WeLarNkQxwEHoHQuowgs9aVRcJLs+v6XF41EyUTrdw1QMyCUzCucK6s5lu1aBJalwe
	 KqgMA7GQ82wz3IeWvD/r7I7fglkLjTiKbDcm99u72X0wkko+NYEHXN/DNYz0EgvX1M
	 zmncW5WlwYyug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92436C83000
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082519358.22454.6728005278332170487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9588eb677cd34a0953289af4573fcb3e5376ec3caf3251862b0da1df39bea8
Date: Wed, 25 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750825193
