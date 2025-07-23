Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB551DE3C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753291794; cv=none; b=ODWaxg1PWoe4neqD7tS/przW+zZnMIn0lJoSC3PVWfGObr2sBSu3AU5S7bM0f2fHbGePGNJNNoqNzArP1dQs0iiJDR+aI+sf8VVhFVe5YVn8BW3Surf3iL7MH7XKLT+1/nx5tezh3peWM4aBnMI6eAGC4NRWZHwg28gB6SKu8Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753291794; c=relaxed/simple;
	bh=xBFH4kOXeG3X2MmhGjxjq1zKHRZszEvcJYLekq9n6sQ=;
	h=To:Subject:From:Message-Id:Date; b=JKEXbkZDqFliRkjPXwUjUnz7SA6VSnwDLNXAGGj9Vd4TqNua4N0RReTNdGynEHkqjbzEdpBsR2IIH5+3vnw1E3IyY6yQOgsU/GOf1+jDhtCw08UayH7DiyEpbJOnLL8mAXxa+ePxShqvYBn8xwxrjTUFtO6mz0BNZ72KmgcQNhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzdvMjgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzdvMjgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9C7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753291793;
	bh=xBFH4kOXeG3X2MmhGjxjq1zKHRZszEvcJYLekq9n6sQ=;
	h=To:Subject:From:Date:From;
	b=BzdvMjgwwCcbnFBOD4yGsZqKHMjGUYhJ4dJDEGmUC9sR67+YAeHNvJhZUxzc1nlkh
	 TX/fv5qxVW+pqjh67t7HWXZKa9q8+6x0EKcsS5pZJRWU1niqzrdBkLRQoZ7gvlWvQR
	 MJjAHC0Ve4ohWpJnCw+38AmIFolW++oGXHcvN+eypvjBDkTeGTUMfytyxswZbQwKIj
	 ROwWaTC3Fgv5IERsqkGWVnioseA3zh4C/Z7rI/7zU18DMftKvBfWWIJVjlNFOxCXPp
	 i6JD47i3sEBxP+apJxRGMM55MwZ42+ndbePh6xaY0CZwEFfVedKb8sAEWwdQZGVHtx
	 KP7QbpC8kvVpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9745AC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329179358.21159.2989409806499573948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e77b8768e15228a178b8bc64fd34c25924ca3809ee46008a44dcd28c6e7f5b
Date: Wed, 23 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753291793
