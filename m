Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4415F3090D9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759154395; cv=none; b=olI8iqUsFQQrDUSuilZXk+18gZnE88FMAro2AtJK4D7dmCXAe5j9PFpP3IpqAeeezyX5Jd5lfWfnbrH46MYxBu/WinMsLsRwV7pVjYPH1y4U0bO+Pas+TL/ZyovnCuK9cO9f18w6QF+e34mUElyfaLMoorLAhNmpYIiuoeNO6/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759154395; c=relaxed/simple;
	bh=ZsNNyEO4ejZxkBAQTLCpt1ZKoUsAoj333SSpLVIKVU0=;
	h=To:Subject:From:Message-Id:Date; b=pF/KO+K3r9l2jrIVyj9rrgjLjq/zaeHdu7AxOJEi0QBhEJpX++VIcgFAbA4iLBhrYICErS+yV0vk2jRR0XKhjNKBHsCfENG1TeRnXT6gtUvCmL5Ci+bmK8rfmQIWXxCFTxjWebWTwZ7/QSYXvdhkah20Xi6+03eaahpZx+ae5yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLRrHkxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLRrHkxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE64C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759154393;
	bh=ZsNNyEO4ejZxkBAQTLCpt1ZKoUsAoj333SSpLVIKVU0=;
	h=To:Subject:From:Date:From;
	b=ZLRrHkxvYrHK+TwEvFII1MLU+UwQL6A+VRCjMXRlXojeSd9wAEsjoK73q+/Rum0Iy
	 UmFTEj8rPXqLfBE0+Epc94V1+8q0DLdomgopSU0MNbzMicqG8O91MVdjxjaURnEqM4
	 KTSRUuF0DzJvpKLV0bAZ0Wa8H9vs9uvgrCDVtBmpU6yu1ZIUkuivqSlBMW5J9nIINT
	 sTcPR2OXEcBvUOfWvSf4pQ8iYULMH3h35QG5SpTa5PufYWDwrhBhtJU/mME9PcPeH7
	 lSq9egFDFkaNpHnaw9cQcWEbbezlGQi5mKAu7c9d5XiLtpLRNRZkLyNZljRpXbYsqr
	 WKTPmKrlrcy1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982D1CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915439361.23700.17768489508623997005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2893abdb05eefe97c1033be9ee255a90c584c6c4c2b16f793a3d7751dc7f53e4
Date: Mon, 29 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759154393
