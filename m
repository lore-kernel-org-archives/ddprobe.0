Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1AB3E5EF3
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777311454; cv=none; b=MoKp2TwFUznVVt/DXFKvTMzsIIbWBjKNbMhUyIJwKKMQ/HXdpTsS/X2x2pwyrEiSlbd6T0oQ87MVsD31yu+r1l4Q1UktGpdCqKnyG8s7zwQfAYRCriQMyJfcmYp9GcA1IpzjYDek31/xXGaTKkSBL64Zhmom/JpLyOJV0AsOQ1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777311454; c=relaxed/simple;
	bh=ksWweRkD/bIFAWxrfloDSsBge6rvYrtYF/qb77JBQg4=;
	h=To:Subject:From:Message-Id:Date; b=ATqsMXDtusExeu874hBY0l42KOlchFl6IEGSwh6HH2onzTn7+wDOL8hU3Aq8xkQdZUfBUi2NkVzcWFDE5l7dcVW6BW2mtREbjewuWoKOcLA6vxxV4Z+tL2EMo4K3M41dtEEZ+jgE4YAED8zf1K39qZVBCzp+UG7Rqpv927STUgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1SoRqYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1SoRqYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE555C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777311453;
	bh=ksWweRkD/bIFAWxrfloDSsBge6rvYrtYF/qb77JBQg4=;
	h=To:Subject:From:Date:From;
	b=V1SoRqYer9G1mGUHIqOXKcIvw+wXi0E9M0XxiPP4QexpB7/HI6S5W3Twkg3KFDGoU
	 3/00reO0YfXlOpx/4TykD0ULlkslBaZRnnzZyD0aLKFR6j4gPHKCAJvvFM2pHg/x9P
	 +02UlvuhaHsd5wephd6zdjScNNZRq6bMsCO9ywK7KQ+s9xgDrFl4r8zvtnwgUBx1Xr
	 cEEKcXs8mlYPQsOhczHSGOnpkAyjYb96UV4PYRB01uDHYPYaCC3C3ReBhr4Dli74gF
	 Wk/r332FXZTDLsl2+4eKyxOgp73N223pYmtA4L0BGY0KJSW9beJIbTZuckmL7SvVpo
	 NIi97GFmM1/Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1C2FF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731145368.6191.14956462685667139981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9466bc68009baa9f134d25df89b3eef98f4454aec5ccf304acbcd9ee57b032
Date: Mon, 27 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777311453
