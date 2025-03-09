Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5492C1DED67
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741538334; cv=none; b=q39GMYIVpMfzDIGrwXwy2JMIHyAHrlkhuamGRJMCk5dPf7fLujQ2YyQq6B0DYP+mlTQtjqG3WFnz8g2KYkTkd9TjrR0uszKC4Ei8CK12xeMLHKztUvbyAUCgsg85qPuVBwDgQ+COdV79AkBvbFmfNjkMvrlLZUsjQi8AY2vtsec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741538334; c=relaxed/simple;
	bh=a7qXdpHOWVI2d8DIkttw2bfTXf93xI+eoz5M+jK3t7A=;
	h=To:Subject:From:Message-Id:Date; b=LrtDPbgioiM4I3hfFbdddWaGKpj+aERDVXoW/YGIliCZ5lkn2/OQ5wiRrpCg71x4ZkarUm9YstO7fDDQQwkYKMblUlYLJdm2tWDEIseYreA/ywM4HLlZrvdtBpajOIEE76xBQCoZ08LXfNbEudUWPgmHGHZpzmMwYXN1bD9SDKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCc0TvLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCc0TvLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A60C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741538333;
	bh=a7qXdpHOWVI2d8DIkttw2bfTXf93xI+eoz5M+jK3t7A=;
	h=To:Subject:From:Date:From;
	b=sCc0TvLiqS+UqYckPoZCfUOzGz4viX8PTe4leUU9NhZlhR7mBChdRSqQIlpEHBTRM
	 NMdp11avzFRvGMKesdHkbi9XKbL0XnFi+62uMi3ALhgj4nTFcR0ec1g8mIVxKX5kIG
	 LmX2rv827qDn85X4i6fN7NBnicGjOa7b/V7LzocD4+pwTi5xtgg1xrIPgoCBcAdvxJ
	 fMjGgcjbpmFESSIhu10xTnRto7AQj7W58EfwFgSkGWx048ip53Vxupoa1QRwJgH7WP
	 j8ecOiP5Nl9mMcs00amJTHS4wSze169WR9+P6PRd5fQpeYkJtOH4NwY79hsAJj/Y5r
	 rEm3/h697bReQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3A7C28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174153833361.1606.5368918853271185706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d144abea7c50978783b021d18bb12732eaeb08a3c2379d3566701aa1ab257ae0
Date: Sun, 09 Mar 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741538333
