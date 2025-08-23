Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2880922CBF1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755991194; cv=none; b=SRPvIm2FU/UOgjOcuR4Hb+wAi3rXqObKbEwjJcvtW/7PnNPLot9ue9A5eMxw6hiFdB7hsWbnKHO3oS6AV4/eoaTW6AooUAE6hHBpfX8Yj0IMyF6+mwdCKiXHU2x84xWQqrPLbQLnp76Y1W+vQEGjYt5iE09QApagkJDCvoqU1Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755991194; c=relaxed/simple;
	bh=GvNHxsVQFjHMwqxVvElfZm21l1rr+V1nwQ9tIAONBTU=;
	h=To:Subject:From:Message-Id:Date; b=FiiMNgk59sU0KIJqNYUSouGM2+WPMmJmo5MAMWHHyC6h/9bIDKC28ksW5QZVvYhV8tG+24meofhWZdKy4yoO9A8rwwFFfX2QXpfQA/VkWzlB54fwC828EHvBFeneE9+bofsZGvTcM9hKzM2a5XPUkdXcnEHFDOF9KPGNanioJSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEtY36zM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEtY36zM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4896C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755991193;
	bh=GvNHxsVQFjHMwqxVvElfZm21l1rr+V1nwQ9tIAONBTU=;
	h=To:Subject:From:Date:From;
	b=eEtY36zMT41uhSBjLxzIj3zo+IneNFmxmnFj8170EaNieY3q+XuAvEWQ2cJs0qgjv
	 XV8eHrY2jslaIFojojW5YDJ3U2PGeoPbMGkSOgx3QeKi3f9rlx5pqhK56hNaYVaiJb
	 8+STf8HM8oP93op4/IUa2MPvfW+/3smXaKR6VOl+MYP+CBk9P5lCvXFWIDuY0gGFuq
	 HCJWIRt9Eh3nDbZxDaUnh4CBbn7ovk0KGhpxvA4OWR6gf/Yz18LZt2588q6Dh3fbLj
	 /EyX6qw8B/HMKTWInU1B6RmeanwBxdgpOMElKUrusrB3W/PYNtz/MeOLg9aRSOm8mt
	 dkDOHp2TDCV/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9200DCA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599119357.8043.16783693258011032425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c758d1c930ca6047e74edf0e23f1050482ef7d6847b317ffaf04fb4be5515aa
Date: Sat, 23 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755991193
