Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E171A2C25
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749119394; cv=none; b=H9feJ8Al1KNjiwsV5aSPVwRbBNctjqHQid/IjcFXBcPt5S2XEIRQTNj/q2yMQh2Wjq8fs9I9dMAzKWruuFIvLr/85isFS+mCsUnnvwC28Mn/rn+/61L9H52aqy87EWevQWo+BuO45k+lYWZ/HQPR9iCc4GkqrVD9k3NPisyA5gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749119394; c=relaxed/simple;
	bh=sOVgmcyghehCKNhda0fJeHRM/nWneSNi9TUK6anf3ZQ=;
	h=To:Subject:From:Message-Id:Date; b=dxxdJtQMxmAyDrrdFPzccBKU/PwL52jkDrYgNBXcYwU5OkESx4g92TI5T9ojTwnQYGVTDvG4KU9SggOm9vNnzm/7VWYYkqaM3iBTBxt6t/9MPynOb9gx1aT7DqgWyO/FeGQCHz+GI6et4n9GQk386QiEg0H/+gRP+GUsrUlOs14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwDqpgNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwDqpgNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7683C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749119393;
	bh=sOVgmcyghehCKNhda0fJeHRM/nWneSNi9TUK6anf3ZQ=;
	h=To:Subject:From:Date:From;
	b=YwDqpgNEeu1QpLpqiTznFNjRfuAtWeMGY2wkeOQaWUegZ2mUhVu4ZUQaqf4gVY6Cj
	 tkGpLh8sODzp6THCZ78o91L18brfGNvUgct7h7U0P19J6on9IEXvXTsKj0liWDuj+H
	 ib0PgWkdUYv6OITTTz0NRhXlz8tR19q2aCuUpWr6ib1BZnQApOYy6rm00EsdjdoxTl
	 U/qgNTla5IWv2lRkk+5JbKzQJKWIBm54p4PmGeNEDgcEBjU8rkgL4aV6u3luMGnIqp
	 vHx8dCP45Dz0pi/NRcs/yIXERukX0GJ/YGDENBGCiXAIlhdodD3hzxd0J6ikYn7wbk
	 +WxWpD/WdvJlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B1DC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911939358.20133.13794558653518244619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed4d7ad8dce9b49eac2bc1c31b5ccde54bdc7f90a54eb52a5a4ef3d88ecb33f
Date: Thu, 05 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749119393
