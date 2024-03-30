Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AF925740
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711816097; cv=none; b=rX8icITniHRq3vJApRt3a9HdT6U3LFYuKcdVBtLjoI5maEaqOymPY/QYUGOjKn0jbYzGj3t0ivSOZdOL5Uyrc40kCyoqgI9f5EWaYWegR6LI1eTKixrtSljVbKyF69zV9fahLE5VI5Six2+jivLAx6OpGD3h1bogT/3u2NxHw7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711816097; c=relaxed/simple;
	bh=m8UHMD4+vME0DuMnFKzcJfkb4dcmJYbsK9oXXB47EOY=;
	h=To:Subject:From:Message-Id:Date; b=saB5R23X8quJK9d6AjqZlUrCkUKs0Z2hPp9u+jWmmx6CNUWeIYf/se7aS902L8GDp5a45rn14pF90e+jQJupjatjzNgq1UaDvSUIrRPIWwMnyroKgnGD+1uJ+sZOeHU2jz6R0UG5D0V6x9Q/xxU8cdgyE4MPwXMR747upmUTGvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9oOBi/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9oOBi/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE57C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711816096;
	bh=m8UHMD4+vME0DuMnFKzcJfkb4dcmJYbsK9oXXB47EOY=;
	h=To:Subject:From:Date:From;
	b=o9oOBi/U3Z34E35Zbng3yoliwN5LCEYC0dSSHq6U+kszXZIaxl77p50PbfLLpCQIl
	 wnJgZ01w+ykj908m6yUiHVRCQCGag1AVzE0E4rOgM8SaG//z+7cPzA/AyvyevIqSHC
	 opRwlHa7CbUMUmXjEVioOsJ93cUGbM5a52eJu54SJvMXK7Du5t6J7rYCwGBvE51IbK
	 RWCUl6Le4Bo4XyQ8zfjKEIgoio/qW3mmfw4bLaXvVJei8A70dbrdbzRzGKCjpRcMnK
	 CeOqpoVhePntNA+Ugco3YHubP7RDv5hYry647K6zb+HtCSX2/Z7Dfi5NMttnuilvUS
	 83qITrOflyVUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B56FCD1288
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171181609639.20643.3041635289421005660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04fac20821c95422bb13c24687b78dd6137a63634ff1b2d07e80df014fbdd227
Date: Sat, 30 Mar 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711816096
