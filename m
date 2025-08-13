Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4DA2BEC57
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755064193; cv=none; b=cM2JIBQpdEHyGRdFL0U0UuLPDOS87kLemWq3j9Z74Gvoy7F0kf/7yLJiX8GW2Dr+pauNjAEHxqr56sd0tKtFXNbg+jm/+CpxQ+eabrF18kghpqjeiSUWxF11YChZyeAL15Rx1pIv6Zhkv8ut7JrAYfFrCpvRQjSs5i4ZLmIGE7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755064193; c=relaxed/simple;
	bh=sJra20j+/xS2C5weCXlRKZspOc9EtWcgr+1mMInaqHQ=;
	h=To:Subject:From:Message-Id:Date; b=sgomIGfItxGFvNGVqKlOI6pVpqPgOhdn/vLPv8eY9mOzguStuAt1pmrvO0zDQPpss5uFhedZvXFIXSbfaJ5sPfKawR74iHCTcXhVL1oE2lYCOnc6kz2WFqZpb/K2y6fEVw8RTD0+WP3tQXDmJi1iQgMOJ3kpm26YhSneTWj+4wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnJTcfVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnJTcfVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA7DC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755064193;
	bh=sJra20j+/xS2C5weCXlRKZspOc9EtWcgr+1mMInaqHQ=;
	h=To:Subject:From:Date:From;
	b=ZnJTcfVdOsov1qYDqDN5uXbkZOTKWPmP6pgsvm9XHxbz3Ts7Es2hMDjdK2qRB/i4q
	 XGgPLKs0g2a9YrXmkZuKo00g/NfxH7rrmvU1AgeIQ1VLwkKwbVeJvPq3D3mkWedVjS
	 x54MnOzfyjjV4MIZdOV4ctrEtm1YFXVmhY92qjuA2IGaqa4KseMWArNew0WKdPiKik
	 Im3Nry6xr4zk6D8jtbn8eRb7KHLvPEt4buvGYKjuM/d0yIea4v91fBjGIo7vrMo7yW
	 Qy1HA2i/1cYDBLnXGFfg8B2+vW0AUFRE6ORKxTjDVCc7T1RpxT5LcWBA+Z5eDi14Zt
	 HQ4NUavHS+g2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE48C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506419358.11465.14049554338132299898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b0e7afc9b900bf322384d5676c0b94c34118d4d26f5fb4ae8b819351017bcc
Date: Wed, 13 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755064193
