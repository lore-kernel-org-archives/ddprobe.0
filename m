Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD8F2D12EC
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782568114; cv=none; b=SFoGWcGAhWIJ+Kfa4q+KcvFsgbndt6USMvMKv6a0hMIywV9t1ImVODOVggBTiklN500WV7D7k+sCWHeogrCvbdZ23FYO8UN3IG2FaCJJi7eWy35kAQ94P33k1LROJjcsizBcRfA0cXYyBzd7584mXNC03beh1fLOZdEZrsmbdyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782568114; c=relaxed/simple;
	bh=Dblsu3NrYcrLmbqMIBZUBOyD0bzl1kOsKWX6gpHZ/pY=;
	h=To:Subject:From:Message-Id:Date; b=LfPfCuGfF73tv8fjvYLaxqbGNSy9VTwB5oYGTWcUW//GmlY6fTqFuT6isZODazpg9D+e17yMjkbVfouu1WBT0kpFe4KtETK2+FeN/Zw3rnfocc0bfc6b8+rdoOB/X5djp8g39Qg9akk+6GCh/fnQtlYtj7BIcjp63XAx7lo3oq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKaCFO3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKaCFO3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB94C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782568113;
	bh=Dblsu3NrYcrLmbqMIBZUBOyD0bzl1kOsKWX6gpHZ/pY=;
	h=To:Subject:From:Date:From;
	b=vKaCFO3WwDngtqHWIw2SvUV0Hlgqe0LgKdxnk9ysQJ6UgqkiUXMnqj4qwRvccbXMt
	 Gz40dzz41uMKS2olzMo81g55081QiERFB/JDpazbkRcwLivW6xnVk7oh6ch9oJdB7y
	 wDkDxtghzN6JmQq9frUPhX1pI/TymZaZqVEo4wq3KjuUeKaEwQeER2c8GTFaV/vI9D
	 ioNF8suwoqcKfH7KatBdFN+C9wRMQvmpc7idlDEkhJRHfNWzmNAEHWOo0RyZh8UteF
	 /vJv/5px7fQs3518ancf1thEOlusibJKgqEe1s+pV52iCRztTcQRhXcQwMUdCB5f4m
	 2P/6ANbqi/ImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B349EC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256811369.4974.5836998617467980351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f5fe2b8c56bb4f97dc271b30125a5ffb500083fde28ed21410f5418d0abd830
Date: Sat, 27 Jun 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782568113
