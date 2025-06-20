Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F366298CC0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750430994; cv=none; b=V04vV7VatsVWjgMUQYy9ZuM2kSfKZP12g2kIJu44XoUu08iHAflS6K0xc6VL8Ckmw75d+c5qo5NhCVZbsKv/GtchnDeQtW523yekd6FQCYN4jHalfZCrZKXkHKPBSPSmnB8hXuTzBlz34SkJ4qxhb0cMk1NbpeP8A8wEaQ4EUzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750430994; c=relaxed/simple;
	bh=wLEYY3CyE/+/OFVS2eChtqKIEikbyB8yRpOVS16sFLc=;
	h=To:Subject:From:Message-Id:Date; b=twdogkRGruKWHcNPshNfUtPsYan3xxewkQiaU2Q6Hr4EZLyUvP43svsPAE2BSyQY/c+9b9BbphWpwq7y68yidJy7rw7bFjUZ+i5b/Cp4TabJBB7v60T5pn6P6eVq3S1Gaq+4KIzH9aF9vmTuY80yOf2hXb0JUkIDCRkptGsgu9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqeET4p3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqeET4p3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1850C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750430993;
	bh=wLEYY3CyE/+/OFVS2eChtqKIEikbyB8yRpOVS16sFLc=;
	h=To:Subject:From:Date:From;
	b=BqeET4p3fPRmMuGu2wxLWR+vVGV3Coa08eYy6SUiKCZeUtx5BLph0R9EYot7rtLRj
	 gKAmyj/S/oE2pqyjjayOIE/VrB892x+sl3PVB6+uwlm+rjHMxCcSm6ygxzm+yG+Kyc
	 DgXtolTjGbafZpcRV6/dDygAC3UlwEczl2mHgAgo5ZovHUJ1XJwLjU4uY3SMcyUIir
	 X89vEVYO0N/3vJ/vij2QRVZa45mnqzNrmEQgZPRb8Rfin9ZvEdS9mRV6wbFzY/PDag
	 sm/k3AyJxMvd4XHz2lCg1vCBt4L/q/mGrftWA2Q9Wn4kNQ9YPVCy2n42lEoLLIlCUt
	 BPVs4xGaV0l9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE98C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043099357.21609.13671533278137132066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14cb450c6d7ac43deae55f1daba306cd4fcd2e41e43ef5713b73a7ea223a792f
Date: Fri, 20 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750430993
