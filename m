Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628AD160784
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716844463; cv=none; b=NjFgJd5Gway8+mbaa7u6H3+pq42ttFoTaTx6ai6GB9KXQv/OsuEKUy6+LL3z6ZIkkkzOMws/nH4TPd/YUZIWQLf+80d92EGF/uwvpFN4Cb5IE1ohGo8YrzJEQVSYsJ/gFkYRVvkutrMK00vMyW0fOq8bm0oaVCWTa8dCbp5Rs7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716844463; c=relaxed/simple;
	bh=rt1j+m3+PZo4BonTH1+rgb6lDnDLorXGx5CeJX9V18M=;
	h=To:Subject:From:Message-Id:Date; b=fKPEKTBYA7odZkpWUu0spABX0m4oNBDTM16Hbdr7YptQXkQEX1k1wgAzbYxhHPACqHiXfBy2m3iFGKEWi+zW/hKkGtUoHLIRjsT8Ytq5UZgvtje18xuKVgnIhplltcDJwbj/9As3btNOocccdayjiGqHq+c45KU6QQmagSauw8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHqutV3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHqutV3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66B5C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716844462;
	bh=rt1j+m3+PZo4BonTH1+rgb6lDnDLorXGx5CeJX9V18M=;
	h=To:Subject:From:Date:From;
	b=qHqutV3WW6OB0Q5XTTIqCQuHynNiJnFrjNjakiGYnomVNjxPLEm1pjVkcY4gpTLgg
	 cbiRf5+ikfm6zRJQNxOnUvaK3fGFSfjlFQr+zMYxGnqTyf/7CjTb1YKl0Zs/PD86II
	 ZGsOiUVXF3pEPd5lgLHfSdMDlF2alh5u4Q4q0bBnI2BLQIuG/ICXxHcKaR9ncc1qcf
	 vhkTz75hdWVMD8zvJep5sBB8qkYH5jy9iYTT68LIZMPjIECbEm5XliuKmrR54ixvW8
	 55knL97bnIOOEPZZrxgJ9TEprFljEpNOmLKMF5bnJn3UAqnnXTXjsS1H/oGchhsGeF
	 8ta4OdYLndWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70A0C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684446280.820.14110539930723996986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635d534b7cbab67ed84316e806c5af4f2fa0c1329b81e2244236ec1a4bec282a
Date: Mon, 27 May 2024 21:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716844462
