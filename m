Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098151F60A
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706217497; cv=none; b=t1MEDyJHjI3bLcyg9H3N+VIk6YaW2+YO/a/yp+PTxbmioxOAryLHtY6niN/PbmuiQGMJJH0fT+m9NemW/64vFuDcHIok0FW8qdmqLn6/QRy93f3CIZqswh3ADo6A9ltKYX3qox3L0CcNzkSEN0HCuOGAWDdXxdxlYYtWwYzWsKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706217497; c=relaxed/simple;
	bh=/pQD8l8dvkaDZw5sVk73Keb6wEQWf1QRtbkrx998psg=;
	h=To:Subject:From:Message-Id:Date; b=X6HhWu8em9bJfEyo6RStWj+AYeWApkWReB2VSVEHlv/T+OWEvADFdwfAvR8vdM2iF10/bcxqnXoo5J0u0dXJsg808KzG5m3KIwtH9c8DUwYaNgNoPM39ZI4CmG1RMVEfGZ0BpDVSYO0SnP7hiNu8NsW7ITpuqmSjolHGqD4KrAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwlAThOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwlAThOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C461C433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706217496;
	bh=/pQD8l8dvkaDZw5sVk73Keb6wEQWf1QRtbkrx998psg=;
	h=To:Subject:From:Date:From;
	b=KwlAThOlTFN+cildDHKliHm7opuBCw5g5V+GNgIvVtYZPQOsrwIPpw8axUNqNC4iQ
	 AvLmcls/isbTC3mUr7KwXF7l4Tbcnus+tH9fJTx4FNA3Sv/Skgy+4HYh1Dgi13FiWg
	 rsTuwLiW39XuwqkXnwShDh+Xi9ZfUUs/iFWK3RW9dxGQ8uDuALHtMUzktPs28XyTFx
	 qTN9WJPsLrySG0rVfEebRzdzF6FtvJkMNF9JnD6AqsWiZWCDdlHSWRdoZx+DhuUYmC
	 t5qm19a1wOdl3HiYHU8l6y72KHNgOCqVt5/OM6Wk1u7rWZsjY6p/iqbiyZpjmA9QPa
	 PBw40ncz3d04Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB6AC48260
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170621749637.5380.2068568217318234180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eda1bdfae930da1199b523999f87109fa2d366dd147bf8f0c232069b8046c2c
Date: Thu, 25 Jan 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706217496
