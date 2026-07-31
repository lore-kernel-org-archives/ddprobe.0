Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE8E383C93
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785489034; cv=none; b=rXlscG7re0mzZOaegE4Xb5lwu6xqWcmm63ZqWREdkZMGck0JZ9R2uzWVdyf6s1/P9R0b7JB15gd5V7lzvz8WKql0rZlqbBT8O/Dt8VIpC1IHQihpjbIlMuPKCOXaXP+cVrCYvTVO/I7a3VQO8nZE8NexJTpf+FU3eOr8n5Sn5hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785489034; c=relaxed/simple;
	bh=v06iNeub2hyc4jNUgQ/2p4HnSymhF7RtiAH9a/X8VyQ=;
	h=To:Subject:From:Message-Id:Date; b=shWC/4cPDnAUu5HfzbJq3GakEC5UB//t5mTm6FSdYGDYMjxT39r+6QXZ7ImHNMYWd8U4Op5qvtbuqVr9Lyuj4iKQY0mGyhM49jMjDoxEUHK+fwytn+dJeaC3YQ6tMZ0rR+TkhjzgM097yEPMINP6ff6yELA42VHKgjTY1lAQf+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxrtrVrf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxrtrVrf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8AAC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785489033;
	bh=v06iNeub2hyc4jNUgQ/2p4HnSymhF7RtiAH9a/X8VyQ=;
	h=To:Subject:From:Date:From;
	b=gxrtrVrfWyo1qiHtVYXzgdtUWH/H1HRprAVv0U4UY3JOlD46DUJsdywU82GuR12SE
	 pIy0niUVDIWktGrsybXCjKObUO++YmBzR+Mz6gr6GoC27p4rGE3H9ilpPDM9OdkVl7
	 2jOSXyuwQ9fTqWE6alEsFu0FnvVt32Bv7B7EN0LnCiTg+ervt9QnzWVNKlY2mKL2tg
	 snnLd9rP9khub5ohNJrejGbwNJRsk8eVpM8DxC9OETcPJdEhpO23nJ3U5DUwYGO6CE
	 yi5qiE9v2TvvSkFGzD4W9lv+AH+OTijrl8oPFFVVFuE8T1h2vxKeOq46dBn7YWjg30
	 krAypxVOunn5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92BFC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548903368.13528.1360608483946157265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cf3bc3f5260d5a24ab72e299581b23617d520324a0ae347cfc94fe70d5618e
Date: Fri, 31 Jul 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785489033
