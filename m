Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156612FBDF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767951234; cv=none; b=RkSjk3Ho/kR/nVJjjT1vHpnIDi/LyUMjhC2B4KhWna4ZaGxg1qWkDI/sRmmIRjy14WDIgmpDfPlAwl1ddkVR/FncjP1cU3QPK1bI2yoLwa8kgVtIWmnwXfzoNqZFKwFodf3AFH/KfzxHpSpiycu9vWrdGcLuIPUgI2sxe8oXggc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767951234; c=relaxed/simple;
	bh=04RLW80pRpqulLpFbKZ0VOFhNMzvmLFcVKaqo/ts/rk=;
	h=To:Subject:From:Message-Id:Date; b=Att9vRI5APkCXPf48TV9y07n6qmk1H5331o0+O3Z0j+5QIYeYnTIoaJM9cOEthv6Jvg89GSpE0ZGnyKpfeuvVLm4+RWUsgn5qZRlhVLvH0SRepXxMjPNmh2QkxkgWkvwvECstVV6jdlbCyoMhIdzdsqqHqH2DGVlv0zNCagHoJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Be24jf/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Be24jf/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A580AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767951233;
	bh=04RLW80pRpqulLpFbKZ0VOFhNMzvmLFcVKaqo/ts/rk=;
	h=To:Subject:From:Date:From;
	b=Be24jf/jHdhMdjkOlQXwKUXjuHcqT6ErAcI8esg7T9QbkvbLal/0UT8mn4qrQXMHX
	 zzwRRJdOp+pFBuUn1Q1Dc8y2qEn6K+3iFgP6TT3VuxuqO3nYvguRhPGRwRdksNpKPE
	 Fs1kCan6BOq4vLkVydjN0plfck94WY1uit9YBNpDJUQ95BSIS+c3tpovqwplayxHNu
	 upMdgqxibscG8xbljskIpQtSbAKF9OpZYCt5v1oBmAM+c2f95lEElXyq9BjOY+VoIH
	 NHXjzJe3XddON9BSsYwvjzOUWnDrBwRvYmHjnJ+hUSMSZgrZsv+bIeJ08Vr/Jtcey2
	 pXPbFKxvs1BRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CE9D167EC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795123362.15401.9773239552464733345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403abcf01020c3c90987c5379f8241d04ba81c11fc8caf8cebcc7b4a9de460ab
Date: Fri, 09 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767951233
