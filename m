Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F85DF76
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762052994; cv=none; b=DF30800jfO4c84Mxi1MY8l8FuZDt3IF8dv+q6GFylVAk17s0OniUWeZp3ekZBaZZL9oUZzaErmMxDhtTZAMhC8ILkrSBHIlgBPnXga9iZD6GzRwfmspdlkcPfgW4epSGcSr9KFtyiKStDCKCz3O1hs/BGbYmQ2pSk8uz6jwiGqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762052994; c=relaxed/simple;
	bh=eyZsmXggz7l8yA9WJVaCrlPawYZfS4FHZCzYByP0gIU=;
	h=To:Subject:From:Message-Id:Date; b=UPcLZ0YQ6izmDgeZP8xjcAuZDg0Ra/pCQoLlrEmR6v+kQ7Y6lJqZpQ6TIZX2WxGQEms9k1yWrI/jWpUOw8aI7DaxBZQMYbuzgzfoWH2UMoawvrUJJrgOG1OxYamTvkrUXmnQYNJLaZdix459dDgJ2D/5m97Wxbb1edQGvtFFK5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3cq4vf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3cq4vf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4D1C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762052993;
	bh=eyZsmXggz7l8yA9WJVaCrlPawYZfS4FHZCzYByP0gIU=;
	h=To:Subject:From:Date:From;
	b=i3cq4vf0vJuKkA5Gmg2da9v5JGuqqzSvhj8vuTeDnKsmma8E4HPca/BfcU1IO36Is
	 bQqu9Gen0BOYe6BricF99uoI9ie0kiCPBy1YhVuUjTXAglE1SIQhjtpgg3msPOJwU+
	 PmiolQPGj8ADPhhO0Uo4AgYN7lvAs/98wdZNdZjzVkx0mAh+NVE3yts9d3Rw7uEQak
	 sXqOBq/eHSmNov+RjyOE6VqHdU8BLSRiJVFrdjABrCRjGX9Q/gdVTD+XXan49jMkLV
	 m0mL8TWWtQQyN2jI5x3QMcfQMCE7aETNu6P3iW9hJJEpoPuBiRzBgNCn6Ep0k4kepY
	 dI3VMnbRjNyEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96426CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205299359.30636.8553380572047776593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b16e52b0c66fc4ebf6bc72acab53f534ac75fb1e709bae74840db02df45c3d
Date: Sun, 02 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762052993
