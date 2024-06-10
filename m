Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557AD6F303
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 21:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718054903; cv=none; b=O1kWiARKvH08OEwbzfuwzfABC/U18K8elQQ8BLwI3PrEgfvNcj4UeLDVvSsN7K2PFy8+Qzm7Pnb7H+Q9v21vLK67kYsNdyS5D1YkNwotyQfRu8FSC+DYv02XmGiiUhlrhcXkjsTgVLZDS6FvbNpQozVlai3TDyvcrkcqCVE1tzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718054903; c=relaxed/simple;
	bh=AGG9yDyfus/6O3H/BlCdwgAU75R7ar3lvRUSRbrmspY=;
	h=To:Subject:From:Message-Id:Date; b=OFypBh8LgL8bE3hWibKU8p0iKmfPF/JRoFj8dZ4o963lTgDf1zrMoAiqb+slAV1HF0ChrUsqUVkHa4IU4jpQYsfqVEboDy1OVA12LzkHTwkZcdruV8G8xbrTcss+/8zZaQZ80SLuKzOedTCW2S5ntO5neNIL5JaBw59cUbSYncM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igvCyt9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igvCyt9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1005C4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 21:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718054902;
	bh=AGG9yDyfus/6O3H/BlCdwgAU75R7ar3lvRUSRbrmspY=;
	h=To:Subject:From:Date:From;
	b=igvCyt9r7gZkSH2crX8w7PNkqGYmLlXdy7u1Yp4Xq6VyD1m4rW/GoKzDQl/wysbGi
	 fdUdCjsinkeQIo3SILCo2FTfVdd4qhkZ9L0fVX6cbNXMbMpXoN7Gu5S4FrLcUAU5cM
	 uwRmCVIIhEhU3BI9FqXC0NcJVrO+7P9ka3x2ZdFikozwknoY9niK+NozPyhtrZvRGj
	 AR69q8GmVwlruu5zcClw3KvV66GpxNT3KDA4juDrUBwLwPakrB7aiJJtv9jK9RQtk7
	 BpWmXZwm9o34gzNrR5b8qDNAfuIHDvCwG5FTbp11i0QZuacsWnTmCjUXQY5cMQ79EZ
	 lO4G26hB0foEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB498C27C5F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 21:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171805490281.23313.5610041389929755372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be7c727f569257fa83d9f04d82a712e05fabd45812ece8b89c6a8b2180b8a1f
Date: Mon, 10 Jun 2024 21:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718054902
