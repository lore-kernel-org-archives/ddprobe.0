Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3082029A9E6
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752708594; cv=none; b=E1Th7pA3ncIgZ+ynxdik+xOMluWwdjjcSnoItCB94+R3MyLS80Z5VvYGmZZDW4phER73TO4ipC3ZLyZW+o8rz78Mi/REnwZM6C/rhxnii+RinbEZw1gjjyp06nwPvR8NwoWm3hixjt1/xNJQERJcFWSLTzMC3CWCjXBS+Pe14fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752708594; c=relaxed/simple;
	bh=VS1vWbSYSQ7Qo2dDzEjdNfcPmfbs/4kbgEno1T1H5Uk=;
	h=To:Subject:From:Message-Id:Date; b=Dy79g2PL7yuqiE9+ugpZTPmIh5bgyxkFyaqR7kj5fGL7Vx5md4JXukKfsq03ldo7zEik5pMXvhk44ANpx7+MP/OvqnQMGTxHwq6s/q0xonwY+6An70LMPPeqpDVT0GKFw/F2mXE1LjSvgELi4KY9T2R1sIlJfEVO329EVty4phs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crUrDh98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crUrDh98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E4DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752708593;
	bh=VS1vWbSYSQ7Qo2dDzEjdNfcPmfbs/4kbgEno1T1H5Uk=;
	h=To:Subject:From:Date:From;
	b=crUrDh98noqsOcZmpZCNxW8ek9afO1b9GzMJDlOzdNkPYStFL4tH9JCJNngVZu/p6
	 t4xS0MXzfHd7jlJbqZMpJXKraxorxdH/qe4EYbqUROt54fZPzkwI1HVjHrVw+uvbbB
	 7c/ZJZS7rYmUHQpsk8f9xqviyb/KJKkS29GJpzEpHBbT/pPmFIPI5bKKuOlY22BTU+
	 2J4/TEyqmqjuI3APf4PVP8FiPo3enxJvBTHH7MjTUCHQ/4FRCLoQC7WP2gjIoe6l19
	 Sufni3sDrJRkScs2ZCJfSATOEDOIvZx1Wwkr81+jOTzEWnVKaptEE1kynmv/retlsM
	 DFzz5epPKQJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73BC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270859357.12996.17270256417555407645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772338565788af9c29a1e29ab21cba2a52ddbf9bc24663954952cb9369bb99d2
Date: Wed, 16 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752708593
