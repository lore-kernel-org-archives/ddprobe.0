Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E372C18A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752789594; cv=none; b=sJip7fhMhQ5dlLp/uBed9e3ALFx/6rhkJ9gLhn1EggW2y1JKXtrUPSk04aGGweXOFgAXjc8mo8xXd4xtguy7UqnRpdg5QQARaHdc/qvpKJHL4ao568qlbMswUiz6okvOQhMPXqW5fa5pbyvmqDcmk/9Xh0mbzPpjx/+B7iCkgYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752789594; c=relaxed/simple;
	bh=5Rt5+wx3BmDehNxk7PaAA56MkIEhUcix35W5DtdplIE=;
	h=To:Subject:From:Message-Id:Date; b=oESog/aHI93vGffuyQ7OEZtZzcZhcHEy+3stNrOLeddhItxPzxmIURcTykd+uG/ZkB0eZ1D3Zrr6IKAI/F3ggxvNgNp8G6+XievDzzCGc7o43BAdF7wulsawz+TLdQGw25hus63aUzqjFqQt8tVTx/IlKU0uD0swZfawCfvSFyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pL1ErdcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pL1ErdcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17CEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752789593;
	bh=5Rt5+wx3BmDehNxk7PaAA56MkIEhUcix35W5DtdplIE=;
	h=To:Subject:From:Date:From;
	b=pL1ErdcWHKpaceISnn4v2xt3jMEbElEcddBKQ48xS9FvyYAntj2XuiOAsvzdjQyAk
	 dMOD3ooptMRMqCizMw5wqCZg2ZzwXwai8SZOvEEJFze4+5cJdEkb3w7V6oGgdKhPkj
	 GBcBCupMKrchsYSe2Q+FXx2DU/Z4JrY/jhff3ghoUSVaOw+JMgjBTZVfpEJLAdBIeO
	 mhU3pb+M1M2r5KjjEC4rmbiCGXA2wCtqyqvNkeLog0xHfOl2qvoLivWeAxEML5z1BA
	 mOmVBt8G2Oc9ckYczfgGvo6IPusu3cqMYMtrxCAUcZBVq5H0q5LCNKDXi9km2s06Mc
	 vxOIBqIQtfvIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F549C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278959357.4643.9447985860736146141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64259e539b95730644eba2ef4488a469a8a72205e739045f257daff23be68062
Date: Thu, 17 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752789593
