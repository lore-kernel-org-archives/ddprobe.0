Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2F443CE6D
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786974034; cv=none; b=Jogko+bSr1fVkudMdSwm2+4CD5X6Jmox79s/tglOAZ+ICpefaKksK6AdfCVh87nfR3c5WgPeOYdVq5vSyNjkp+CillKYl5FwKzDAvWQu68buMAqw6NpJqkNgony1LucX4EW1wl/OGYiCh8ipU/3wW1KvlTL3u6zd1uHd3gEsVpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786974034; c=relaxed/simple;
	bh=H9wwqj1jmvsPEhugzUEIl0KtGB08qFkZl7kSF4+VKBM=;
	h=To:Subject:From:Message-Id:Date; b=Nwrgjm2C0iytDhk74zZG4XZZ3WV9H84UOtj9BT1h2akCXUBFapaFOYcjm8bMk4ogQoXfeRemdjriVzigkkO7VNm16QDJWkYTjmB5JvKRodpTGropSz/LORynQPE5z7VwpdxtVLaQ2+E9QjNDE+NgYHyiJVi9J2PFEpFH2fqP0NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdPueZFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdPueZFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA0E7C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786974033;
	bh=H9wwqj1jmvsPEhugzUEIl0KtGB08qFkZl7kSF4+VKBM=;
	h=To:Subject:From:Date:From;
	b=kdPueZFuHogopkJoFdSLqBbPO6hm/IysDEMH62NaKDjZbauTFPPUIeL7NY0OImWac
	 8/+jTXGMGUAa5X9mgCsvtWvzS1bnj5sPa30kYeMOpe6d/0uLD7Nuz7nkQCCSLhnhqY
	 AhBJ7rehoCkRJ2NqicFAlrvUNT4cGjczYp1bAGba44cPfICxg0i9LMl4gwZILcqryU
	 ZLbA2k2FGt7ORgengTkRVFHU987HLReEH8hyxFjFMDkZA4reTYK7A509wgMtfVigTa
	 r3bbIa8EdtRzpiTQLpZV7NUoZPwSM11J7GNw+kWLafN/zOkbRiiaBX2eMWg3OcNK3A
	 lUFBHi5gjn/sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CA1C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697403374.28965.10438427764016762981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de7f5bc1d9e802d4a6ccaff13120c595fa3a44f84fe8eaf1b000792068280e15
Date: Mon, 17 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786974033
