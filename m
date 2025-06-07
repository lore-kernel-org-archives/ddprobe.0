Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2673C1F7060
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749296994; cv=none; b=M0188GhXdBxcZiacxMy062J2UaXjwtGuDmFFxcVJR5KYVIjHdWZGy6JXKMYkD9JUknIZMSb5/2SE4TpD9Qt00+1rynDIKCMsUhIqkQgzSpegkR9W2xiZnV2lwJj9Nms526wLNhlDuFoGbF5+W8YyA+cvz9aYIYbl0bGgVI1VPqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749296994; c=relaxed/simple;
	bh=+HBmXpDN20brQJftYlSkLyHo6x0fs+C3oyC4ZmQg9yI=;
	h=To:Subject:From:Message-Id:Date; b=aEOjZYxs6JtAKUcpJLWjxEiQYhHvF5NjHttv2AnsFZqNA2SHZD7BIZ2tDLy4hNbjCTzNxjnzZhw3khZREcOLeWh6jUfGoDA7n+dQFN5Z11nJzIWpU50zCD8Pi2dVnNNfRIB8r/NKk+pMIPPCi73hgZ34jvxfiyp3CYsm609QHt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCtYtHFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCtYtHFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB16BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749296993;
	bh=+HBmXpDN20brQJftYlSkLyHo6x0fs+C3oyC4ZmQg9yI=;
	h=To:Subject:From:Date:From;
	b=mCtYtHFez1ShtAcIAcbn0rUDFJLC8vNggppxj5tX8372W+vLjDku0RyUmovYiM436
	 30bEZczoDjBF/UTms81aL2/CkDZmWbXpFfMxGo0sjAtUIz2Jrk8sanN4M33nSra21+
	 mAl0/PA5IjZQWOCResoSsDryoRQphSSE0wO5TPKgwlWcLH6ivYa94uN+2Q0YcLy4ty
	 P2ccTwAs7gONo2cJ5vYnRx8hJkLZqqVlynN8//DOPDYSDFTaLddNiCEGhAS7X7qh/B
	 lrNSU0CkwrUxXs/iL692FWllf+VTlkjxtpeLsN5a/vEVFgKvxwDL88XGDQ1pmmMU3Z
	 TfsfPtN+CfFEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFBDC61DB8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929699358.25923.2655414715834574013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3dfcd8f1d388c23af1c463dc27415da644c317a5dc2e03da373495f855c037f
Date: Sat, 07 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749296993
