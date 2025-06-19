Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BDD22DA1C
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750313394; cv=none; b=ZWtU0lB/lNv2nK+pLcvJHvwCVCz7ORbnxSdYMQA7bExld3klbugHAbl6OW4TAxB9ITpuL3c7dVclzOcRc1iTJzPSNn4MZ6APG8iuZMwFvrYk2atQotYqPZSbhUTBsUghLtrkUOa3UsUKHbO3mDpdF0J3MUuJtfKpcqe8D1F/bb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750313394; c=relaxed/simple;
	bh=24oYEYiqGUzQ7u/zzKVTdOJrvjnXO4GU7c8+9IN/7Hg=;
	h=To:Subject:From:Message-Id:Date; b=NmEreT2shnSAHGCEV4I7TSzSp1rZ/oyFOO5oPtTsxkc1qFr2qcUirb/0Go37OtUrEXdjFPGdMJ+Yfn1RoxoEPVgNr//8aQW8CXTMmJTp6krAmzgIHnqoAE2PnPhgeq96kVzvDYVmfnOF82fuN3dP09srt6G70nLBwp796bFvcaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2THDha6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2THDha6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E91C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750313393;
	bh=24oYEYiqGUzQ7u/zzKVTdOJrvjnXO4GU7c8+9IN/7Hg=;
	h=To:Subject:From:Date:From;
	b=t2THDha6eQHWBMoNJKPqipbL+ZKsNH4XmXKP5QcwkwLkyZ1K4Akhs4DFVbFOCYDLN
	 VcBORg1Q/yLiDE3Qq1488pDKapBMZcn6RAuO+j2OSDwAMjqcfvzhxA91u6eXlQgNFD
	 efwNMlJmgMvv777mIBxjUAoqpOP8ma/aD3tHO756aMTmtLyscxeFwL9YDtrCydMGPS
	 J7haynfwch0+sdxWdb+ebydvK9Dc1OZ5MHqvU5pqLREr24tIZ2G52gBppiG69zlM0T
	 yBfycOsgUfq15Y09IUU6nJLKwOeuvtrC4K7mULawXwwAw4pix/k1mNWjSH50/axszX
	 VHFxMz8mORvow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BA7C71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031339358.10607.4540104487072020167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c3a3defa2f2aa5dac3584b05cff101d34e61239c2931e76c99552c5c6d98b8
Date: Thu, 19 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750313393
