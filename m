Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1B617B02B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720551383; cv=none; b=hZ1avHmSzASoxNH2rIi7/tiJruFD5n4jR5eHUsvtpUJ6Iw2PKwxINoRQS0jJ6s8pSoGK7ImYR4tcafhBeoVWGCkCubkiIG98YvS+8KBnHvTCN0Zhf+9n0QxavV+pd+M/JUExn675XGqmZi2UliTfNwK2A2FAv964vilizo6O/WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720551383; c=relaxed/simple;
	bh=gZA9DFlylAcT6HJN3GvktABfAHHMnrYX1uGGLowAXao=;
	h=To:Subject:From:Message-Id:Date; b=DexPVWEMeauoDKDtaPDsUeA+pWuHjD/dcHfF/VILPfIAp0QFYNSNCAAIAPgCH2oFBEBJvf4lpTY11qSbhkvsc38rZ1h2l/sTPgunKVETG+IRTgiCIiDYKStpBF895A7Y+G2WfBPANA9IK05x+wOzEGKEUhcuFqL/M7jdqX32Olo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWtOTfPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWtOTfPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B21C32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720551382;
	bh=gZA9DFlylAcT6HJN3GvktABfAHHMnrYX1uGGLowAXao=;
	h=To:Subject:From:Date:From;
	b=bWtOTfPxqEEGL8eaDWuGDaL4Q1JjwpWzcem0pYOujMI4tUn1xFR9QDYUC4PTGRPmQ
	 Edi0VkBhrD/0HIOZs5qm9p2uVrqxK/RZom4/a5779dsj8RG9sdIno5ZYK+Y//t5YBU
	 /dfF10Rf8kSVbW2Akn5zMbb1wpCCe6P7rZ0dtUjfb/tWOZOZRk3nY6BV1ohSgZ6IxQ
	 Lu9XjayXe7P7NYZtyn4+acA0wKEvIxxLATsfEnj5EthXHxdtuIr2ALOEpS/nhiAuuh
	 jk0M94Ou3ToKo5VOEjTQaeKgBTFZYuOt6IdtjDYr6oTgGHxAwJRckDsAvc88hRf9UY
	 ILE/vNQyBwm5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5C2C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055138279.924.14789546160897025181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5e0ad2650e0457c32f47fb77237fd3c78cbd016b021cc959556bb50354e208
Date: Tue, 09 Jul 2024 18:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720551382
