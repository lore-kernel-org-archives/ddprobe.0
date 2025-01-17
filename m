Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276FE15696E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737129354; cv=none; b=QdYI9HxtNgQnh6zabyoi4dtyNdvnGcfMyScoUJ7CM/MWW8VLZGgS+MRF4GTLk46ZCjxyTlr8hHXHAfiwPMqZeYs8sfw7gNBLOfSXp7iJ+WxBgEhi3Rrq9bHe+4quaA5QeDEMITgg8N009gcuL6PNW/zNWChZvH/YuPxCoJT+GUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737129354; c=relaxed/simple;
	bh=OyPuLJQJyZwEmqX6RPWdJlYgNrjU67QBX52+E39j0S0=;
	h=To:Subject:From:Message-Id:Date; b=lWPEWnX4iGyUgRji2E92bgSxiEUXtr6qeuOCMQ2GuiZSivQFx/NLLL6uNa+oE3nZlaTJqdwFawEX58WL1m2NumNzN0EpxxfHO2WGfRr6+GYYJfHRyzlpqY5ILtiO9yzIWZMw4zPq0OUz9jEd6pokWoUqQulEsi82PP3HVrbB8Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnUjI3vb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnUjI3vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0750C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737129353;
	bh=OyPuLJQJyZwEmqX6RPWdJlYgNrjU67QBX52+E39j0S0=;
	h=To:Subject:From:Date:From;
	b=VnUjI3vbAOs0TKrK9S8tov+xg5uMETZ93mq/Isc94hwo34rlVu3z5x3q1LfV5Tip9
	 Uaraz0+iNeAVvp6/5UHwCXDoKzTUoRJftX9vrTuav29oQh8VxKgNpXjHPwixtaBlrv
	 90cnTxfMsCljDB9lLzJzJsL0GPw19ST1tCBZgRvgD/Kc4GzYv0iR+pfORusHIuLNwB
	 UFvmUIzhPBHueCw3Fdb1v39kHaPL9ipcFOkbhyxAgdk87jaWLkOVUCcMLL72s6xO9W
	 2o8JB5jYBugTOS5HgbBLIx5avPpdgPag9PeQhe22NP9JqLHP/T9Lz58tnJUnUo7cK5
	 qBy5O0cRVRGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91304C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712935358.29516.6173741777607692496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e19195e06daad79f9da72951ac4930c7dca67ec4fc3675bf01fd3f8c7aa24a
Date: Fri, 17 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737129353
