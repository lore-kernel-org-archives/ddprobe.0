Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B01818EFD1
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778318254; cv=none; b=SyXU9QFpGwSRzQWYAUgEfgMG+oyzA83dno5/dFdFhsZI7MTTMy+egD6lhWRs8vXEI+1RQm1tzY0QwO5tmFfwJZaPs/a3sXTXhZgZnVxqsbGN5v4oSY9mlLHRbGTo+bW19faetbWhbB7h0wSIcTYrzDuKsVJe2ZvOwYsKjFFPOFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778318254; c=relaxed/simple;
	bh=opuSydds30OZGY2stwExzPVpKxnW9pNOiASX297r9ec=;
	h=To:Subject:From:Message-Id:Date; b=jrNa9lvAnXk+HGEEh82GuNC9V1HfvXO1PESsX3sNNXqwqAgkJ0kECyEocIenvjtd5d7o/Kmz98X0nZVhzR0CmUm9zVk+6No3dgEaCvis4FtyORvXW2OH1QzwMz4/0o8kBtI8eWCi16n8+JyGM7U7n8fVN7ZWKiP47Dn7BxsVfcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQyNqGm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQyNqGm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3CC68C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778318254;
	bh=opuSydds30OZGY2stwExzPVpKxnW9pNOiASX297r9ec=;
	h=To:Subject:From:Date:From;
	b=gQyNqGm3cjBQbTyCDRP1XdXBDimATKDeB2cTslK6wLTUug9essTrXJmRO0fmKrjzE
	 yftTXRYOG4qsbmcjZ30Xk/l7RrHUFLDw4D2I6Qg7dq1lSD5RVuVwuSf+t8dNKyuyMd
	 +l58CWX82tOehdTTDAh8YfYd6vCwHLmP6+aUQc7s6V+9BhIWs0k7qqa/2a9eed42VV
	 dA0tz9XOyI6aoiQcn5Z3C4aSE9DFpq/Opg+PiJR7FPdKwQArc69eWc7XZjOKOJEhyo
	 WXqc0EaynyKbNtu7uLITK2Pz9ewDnqXPLUuO/ZHqtqm6Y6VBlIE9fyKXcTbwou84Vh
	 +Js6nMqfpZk7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E37B5CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831825386.29395.7993661394609278063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70bca0d8434d6a7047d44a6255dbd27ee2081067adde9239d8413c48b58d4c04
Date: Sat, 09 May 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778318253
