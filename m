Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427D6EAD5
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728092754; cv=none; b=rRgiBZZ4ptWax7lGvAB4t30qcDqGRUrD/SyOVfGoSjDsHql6kAw7b6l3QD+JF6QI3Vm56p8DqhSWH/WGZTifoa687GPe1bS05//S9XKPAQK5hehv771eMu1PNd143z63AQWm+kMIvc4GBYBhCpHvGgfEQWtsKNLjW7tMVj7KGPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728092754; c=relaxed/simple;
	bh=HjgA8BZQbcPu9CY3qVuXQI6RrXi72ZewnZnxioVJj1I=;
	h=To:Subject:From:Message-Id:Date; b=bYRz1LBhzioYrN89vuQTJ5aTO8s0KVkbqcMJH+APCiB3ivMi4JA9EqpMX3/wvASP/PBPx63ncp4Kh1mfJLe2L3WEZdFLaZZNjEooXrCS64ub4D/cfzzM/f7h/0p1bLD+Pe0VqxFcP9StpITpJqqcRXrBBH7WSVHTMgdZOf6EvRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2drCXJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2drCXJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4B5C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728092753;
	bh=HjgA8BZQbcPu9CY3qVuXQI6RrXi72ZewnZnxioVJj1I=;
	h=To:Subject:From:Date:From;
	b=r2drCXJ2jk4Um3O4JTClLJp19mrmSdcz0wyXv5ZSMLBNRshSYYi+Niw2lAA0tXKa0
	 QAgK9wOQqrtX2kQNUnnqacjFpkCEFWV7oMEWY+4XRXy7gpq0RbAhotUOQ3CZh4T+d7
	 2JdQo677bx5SBvC8L1B6qnukNx/aBC1YYYZYi5E5FTXlaH00udo8nmsQihaX6EwVaA
	 y8Sv3t9JveG1Wvw88ZJU13vhjaa32yj+l9bIOXwusceFmdvurzvK6LTVlSl22AXU4M
	 TXPQceoiwmwEyVPm640dOBuAxV6qIUA9xfYsY9qFI8JHe39Wh9xVzw7ef42P6vaZO9
	 9S2uhQph2ZQnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0872CF8868
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809275364.8540.71663338762516454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a9ba21fff9c77c1c7e2b440629fd759e05f86cdb7c1db2b6cb5dde9752ee97
Date: Sat, 05 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728092753
