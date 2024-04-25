Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB74152511
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714076543; cv=none; b=SDMrcu0NGiMo3wxbewerC10SZYKUxvImK1NcA+JDpENszs3w1TL4CPo4b6plCZaZwiMpf4mdR5ZS7FUhJuDtg+bSwj/DkpkVj6qX8miw/DwQdpVWgU5fkMWE+/hmy09uOvKwg5aXs33dfxchX3H2qbU4YQTuXUi10zpXb6+H87U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714076543; c=relaxed/simple;
	bh=/4P9JdWZiDvMgo8KcruD3pq/IpRiVe5nuvA+yjIppcs=;
	h=To:Subject:From:Message-Id:Date; b=O7cAdTBMuUiB8tkyRV1hGUpPDAfFg7TUNyg2qgTi618HnjQa89HOg5CfTClu+WYIeTQk0vOS2A63Kp+M2Qqkdr91FpSawsspptxT6f/K2+TiKityyjlbQP4KeMSJv9M/M7824Vs/roVOza8uJYVP+CdgZo6xob4eCqzmzKhI72I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pl6Q6jAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pl6Q6jAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3781C113CE
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714076543;
	bh=/4P9JdWZiDvMgo8KcruD3pq/IpRiVe5nuvA+yjIppcs=;
	h=To:Subject:From:Date:From;
	b=Pl6Q6jAJpa28rCW02R04SyYEC+USUWYUuPoaWvWCr+AJGGBu3NVZo27xZYXH4yKBW
	 3fvT1XJx5YEo5DULzGbO4A4oFf/cLbSBs3xBvnNvIE7cWoRSyGAFLc8BmNLG8ce9HK
	 McEZhEdWWLISY69vrfpi54LeFaiLcbfQXgBTQWcQk3A+kLm/3nEm1ZnsK5mJ4h5giX
	 rQYr0PjMTbUeecrSeiNBhvXX7rbc4q1dne6FyCmIsMHn7ytl7GYXeS6E4eCRdribOJ
	 z3ikHEvYb10dy4MUvnSmvqDdeIQ49ZkoZ+4V64FP3donlX8OsbmSo2LqasfMM0d7yV
	 DRWZ5NxGgUgfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E077BC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171407654288.27025.2600458391224802489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8e4ec41f1e8e89f54234a00c98f0dff8dbd278a4780ba949d7b26f8cdc1f62
Date: Thu, 25 Apr 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714076542
