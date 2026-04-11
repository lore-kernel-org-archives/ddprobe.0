Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E96E230270
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775938054; cv=none; b=OqseVLJZdTQ+tS/5aLFH2uTLlIwysn4F1+tNLJpglEvlTVeBalIlsgMZZEgSVfbeHjNa08KNnmwsLveY9LIoWsZTdg+SIxy1mlDQxsr3miXM5BSXodCQFeP6Ma9x0JEgMD39kbtiQdX5FwclRcM5i+weCb3Q4jP1by0VAxHocEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775938054; c=relaxed/simple;
	bh=0+oC6eHV4kZGI8OiOYqxI4VZn3KvWdaVF1+Vx38DCqA=;
	h=To:Subject:From:Message-Id:Date; b=fWknt4IjdI5Wda2JHeRYknoV9QEHfIMfBNPrIlR7VQj5JLvgHsX3dtLLEZ2I9NX9OmT1vbVgmYC56WgQRwqVCEEfkfsyyt5Jh0xmo1oHWNAXsI+j/SFN4hHctm2UKRufiYN6POeKqQipbz43AM+U5HTzEX0EG6Ji/It+5mNCLNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaiTe0NR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaiTe0NR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA45BC2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775938053;
	bh=0+oC6eHV4kZGI8OiOYqxI4VZn3KvWdaVF1+Vx38DCqA=;
	h=To:Subject:From:Date:From;
	b=oaiTe0NRCC4SMKN8CCWClYaXhVUB5vzBy5krvjs8IkGEvdE5GVwIOKuPJZ8xs8Apv
	 Lakl6m0YYJzz7IdzXeRJxwlTYoVfEufuEANBHuX1TneW30Dlw5XqEClOiN08vMWX+V
	 FmxtpfXT5AeFJC0heFFOHnnWk01dkZ3TWVt3lO4LeJwLadC8YrdXPSjRXEZkwqZHzP
	 xUTBD7mKvzteJQJTt0UGdEFE0Y/fjcvBRxQ0NND6OPgJ2M0Plx6J/sJztxK3wp2QAZ
	 kpdt6pBu/Yj+NReIXO0JkyWKNzP1T/XP01zKCir3TJq5XXgUXPUINTD92a8Jlzt9bc
	 1G1p0zHpfY7qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDA8F3ED5E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593805368.31430.16221005907062289958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b62b4139653d05f0ee09c086f91ad8d4f72e7434e44083576bd7323fe3c2df
Date: Sat, 11 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775938053
