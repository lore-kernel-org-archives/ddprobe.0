Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4012AD25
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758831594; cv=none; b=Ppmo9RDTJ2GPsEBW95zXOXNGFmQVgsDn7EQII6Q3jn4ZGj52BAZw8HBXQ98a+hq4LbEGehu71W29lRdELpMxS5+6Joo4rPp1HjyoZ/iR7hhB8SwW7CpQCbFzliShRKuRV/4eYK0MkE0NiI3YCEiQDzTBiDp+tImH5NqS/rwWIIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758831594; c=relaxed/simple;
	bh=hTCJTsGDYEHm3VKoKL436+/NfDv5/CUgfjtqPBS1UsE=;
	h=To:Subject:From:Message-Id:Date; b=kYbmK0YdG5dg4c/FRRpxQ1HHtFfeqEUHdaxoNjavWHZjW4En4oHZmrc2wWnCUXm52bUeSmXYYzbGpF+Z1x+7a2LYrd76qaGjbgrRedHTfXqwr8Hjni4FBaxXjFa47ohvtQGzVmd5vz7Z7GBGqjxCES+XHM57pil0U5mWF8zGjjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfSejldV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfSejldV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE90DC113CF
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758831593;
	bh=hTCJTsGDYEHm3VKoKL436+/NfDv5/CUgfjtqPBS1UsE=;
	h=To:Subject:From:Date:From;
	b=DfSejldVivLcQtEaKF/PIbgCSL3NE11SiFXg+6AYb+CC2ocl66Cvkb81vH/gp/Des
	 grZpYTy7XQ6RrarA65OwiIxJnFq/g/EcI7jTUGLmWVM3V15NcTuaRZiOKqRPUDOlYC
	 TxvkyWfDB5d4UgN7ZH3zlDh6Yyxun4lXBLmFYVtExe6oESDH08StqNd4PtQF+bqgZT
	 wg465Upf01ulnWbXtld6WC8rzN3pJ6Ovj95Bab2zJyTucNrTD6ufcnE7++3bhfhrxl
	 pp2LOSqMp7/9EPtyReu+Dn59s1fp3/OToEVdxBCMoRtL/BWY+/ebhuEotnH6ewu2V2
	 tW1o7ZK0iWMSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0C1CAC5BB
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883159363.14346.5796618041191036031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f6d4777817fe8045b990982bb9bffb1b27508124982166384d058dc639c554
Date: Thu, 25 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758831593
