Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C471384B3
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729115154; cv=none; b=k3FzGxjAysDktYNrm9jsbPzdtH4WwRhIO/aZ+4KCRU4txALvnxUfSwWmALo1KW/deAFRxp9KZ+wrFzheXtEcWIlcxkM0YBmXl0NzfwwmpUzDFvYLR3rGJse2gEYJaMcWLrfmtDDU+lT0wi/k8VbpWnLefWf3tVa70BPE+QzRIzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729115154; c=relaxed/simple;
	bh=eu3TsRRcz9LQdgW7bxu6Ui5NjsLQP5Jgh4QW0XBMmxU=;
	h=To:Subject:From:Message-Id:Date; b=jSpXccXCT0eL25419jO7pGhpGy8e9oI8NVkyp9aULQ9pzsuPbDGd9CVOomTQO8tiEUfUaRYOtENgF6r0MdaRS/XQU22W/SKI/q3k/Sj24kgHTZYDe1eaLdY1Uhb2GBgs9ckxQWclqKcCt4SFSjF7aMrqCfaOsGxgmjOdwTL5gZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XE/jt6tW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XE/jt6tW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8559C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729115153;
	bh=eu3TsRRcz9LQdgW7bxu6Ui5NjsLQP5Jgh4QW0XBMmxU=;
	h=To:Subject:From:Date:From;
	b=XE/jt6tW4sNSmkwmxmOCEYQfi6Posoy8NYjcEi8gflUZVTaYEIi6H0XMjF9f+rS5S
	 MzROVggiiopTnenHo/s0tV6YlFRjp/AXbr+vAZf0pTN2OXxwuYHTmb8DgO40DMOuob
	 dIHBqGs9CeQoOGsaCE76TPDer1RWRJpi3cCaMFLZuVWnx1r5Nibd6QsdK8kj6TUMRN
	 RJmWYppwz17BttvOl7aSnNEZeC+qSfBavTlRoYw77/QdIW/4ZD1gFjJocZhz8Ln0lN
	 Zz8j+w6bbh98maJa1WvlIXcmp2FdoAD9K857JdcSEtmEbPQz/RRcMMzbFSVWlD0yk7
	 QJb7jLnZgNhyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932C6D2F7CC
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172911515359.4749.9646028805444275375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f65b2a5038b1af88182beec329c4805a3a87bf625da35dfbec02df11c97532
Date: Wed, 16 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729115153
