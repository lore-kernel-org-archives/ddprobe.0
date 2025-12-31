Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2451374C14
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767165234; cv=none; b=nTQtlsNDwgaLQ6pMryWdHZu5bYtaqcdxdCXJN6pNwAhMw82basFmnRSmZi2AyTCS0LfUDyKfAUIKvGvQ8HO7GiNotMtQQ96LHJTcqFNc8fkPE1SjxdVhjqHMpfIQl3PaUN1ACjUn1Jp2fuvKyXzbUC9XQ4ogLNzQUUr1HpncsjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767165234; c=relaxed/simple;
	bh=KmHqiqr1F/ZyL+GzzHI5Dl5VcoZ7jR0L+8v9aGEzLZk=;
	h=To:Subject:From:Message-Id:Date; b=MnI10pIQKpLzFCo34HYjsIMb96HazTXVOswxjmvANd1jKzMmeV9XulvFbhzwJMoehZR9ov97sCtatglAb1owC4szPpzBwldasyua1Hu6UAr7bginDlANntot+jsqns24Tz2E5lb65tBzlljO451j5c2aM7sky7t+A1HqNX7Cnxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEH/I+jX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEH/I+jX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A170EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767165233;
	bh=KmHqiqr1F/ZyL+GzzHI5Dl5VcoZ7jR0L+8v9aGEzLZk=;
	h=To:Subject:From:Date:From;
	b=gEH/I+jXlDpd9y3yXSLFzPZpnv4vG62vYp3pIuO72z0r/c6U1Q+elRWrk6k+F1k/W
	 5k3WRJWMA3qEpL5eETLMWbhCFCMOa4lP6AOuOmwuvQSr0V20exHV1eLm+VwSIp0+PH
	 dBmIF17lq9NwwdDyDDaowtu07HWa9y/5fz3H05PoMIE2zo5GxCy2iJjPzM1wj76FgW
	 vQ2v9v6sRlh2nuD+IbqINpjJY2YsJpeTh+mEBGDsAm4PhdobgrsUjgGOgng7BA6F4Q
	 6etCVk7eNday7CqEOprAEeVHlE4f2XcPyW2kH8HK4UuBPLuPfY08yGF5jQh5n++Gmm
	 WKr0fvq0AG12A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BEEE57D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716523357.23992.8753423397926852870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b2370f35c355b3af23f0fad2f2344f343a0080fcbaf0bfeb0ae5d2c67d973c
Date: Wed, 31 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767165233
