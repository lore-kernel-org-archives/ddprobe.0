Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B6F111A1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722074154; cv=none; b=ibSz42mWicngkjwwC88/c1x5YSz1W7+j8vTBWu+54uTSHVBdpFCHhX+Tn1H7nVHCObOcA+47LQ3QSwv4hNPyhMCkLfSQgXfoANO4YUhJAg60WqEdauwuFGrx+SDSJ2jb5o99aVAv15BLgaJ3zx5cCWhyl/SF2cLa2ZBhar8Nmzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722074154; c=relaxed/simple;
	bh=OMfsyAq+rBYVw94JYXyaRtam91wYxEBJA0QyS+jLZkw=;
	h=To:Subject:From:Message-Id:Date; b=Zr+sdhwjc+/HuyWunL5V2jtacKoxE4BcTglk4Nbb0PK20GpTWfuo18dKYVc8IhJEfBrqdEGkRVO0HpO+/NaiUewr2AsvFN+cXiTUywhGwBDRAWjJPz2QKs62aD6wamnGKkQg+6ISg65RWm9ifKfxXhSTAp5xbRChB3BDi3O3hlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRhKYHmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRhKYHmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE76C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722074153;
	bh=OMfsyAq+rBYVw94JYXyaRtam91wYxEBJA0QyS+jLZkw=;
	h=To:Subject:From:Date:From;
	b=HRhKYHmkiRas4DyL36twplsejnOUopywDej0Cteq0Ql4mtdtTFdwb9OPiqEHAA3WG
	 NWijJR3pUbOS9wFyjAi8OLMA9/sJ5oF3re3jaViUO6WkYcGR9iusaGJ/O7/rRxzEw7
	 E5Chkne3iE6PJgLkYDBqSksfec8ifg5Wi4tNkzPCyGAoXhfK+Xz1hrQvksgijqaZUo
	 4qK8+wPQcwrzSdlugs8MSacd0IFaIu55LpPuYg6bFVimHGYyfDXwNPyqsDa6h2Jrqx
	 h+2Vng8bPBeu+Hu/tvTJaMO/pjFVqWjYAoQBCaeVjzsu3Fgpnz0YG2ysuUQ2ZJYn++
	 XM1cNrBnKOulA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E32C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172207415359.4942.5649521823817387239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e95c700cf8cf0f13c648b0ce04f6fcb89ca35cd4cf9adc1d5f9f5e9a45c113
Date: Sat, 27 Jul 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722074153
