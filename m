Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432BA31F99A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781762794; cv=none; b=M1mfIQyDYqRV4XoOhdCsbN1ROVV8VBDP4tpJDhjdUKQmhkvOtGS0ALdQ1knz4GAHFtnkYrbsMf5o3ujy1ORhH4CqJ6Zls+E3nQn+C166aYdNC00th0/QjupI1IbKL85H0dneJkJDZ4IPZpdhInQOYmZcnuX2wKuy/wzPKsVUKyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781762794; c=relaxed/simple;
	bh=s62RMivGxoA6GpqdH8lcHs2fM9grPRVvxhkPnF2AMnY=;
	h=To:Subject:From:Message-Id:Date; b=VLWx04sKgbfx0NYN9hV5Bod3KkRmop82loPLZnGpECFxXsWhNWbc1ytODgKmO/huauAvQVo+JUdfnw9HSmd3FcxwrV0t+VnK814L76vOi4hsvLP47VMxuOvnIfOSTOymTZQQD5a4wUWtrczPSgRaV7N3BlrVVpKljrJn/QSrIMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jy6d0uvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jy6d0uvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3101C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781762793;
	bh=s62RMivGxoA6GpqdH8lcHs2fM9grPRVvxhkPnF2AMnY=;
	h=To:Subject:From:Date:From;
	b=jy6d0uvRdJ8KlcDaDoDhSvwqu3WXsrziR5fpCEBnadv5wbec0LgWorwuaKp9qpJaK
	 tEwfIDOjZD2j8dAIu14dbQ/DX5MLPNOzRv0Qo9i+vrggeSruOleKEHaWMJkLWjV9hl
	 hgL/Kdt5l7Hke2zaDj5c7T+S1+KxKYESDEa0ea4d7HjiwmWUg/Gm0T27dIlVcw/nk+
	 3g8dQ3YL73ZOYZENQ4gbfxjbCVdpo1P/6wbrue4ULhvyy0cPuSTIECKaEI2DShpqmj
	 JSJHYrUE8m5mgV+3Zclfu0KQDdsSqhxYge2DcjOam9yAedJUvfF6jhfnDy3OIInfmQ
	 7ZJR66Gx8Izrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75BFCD98DE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176279372.19879.6765159368533543650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ccdf156a5648ffbb55e15e036efe3a39e34d4c78772b4b814efe764fc24118
Date: Thu, 18 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781762793
