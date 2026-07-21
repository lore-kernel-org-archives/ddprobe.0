Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3FC3C4176
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784627914; cv=none; b=AXfbtGBpU//5xdZpVVXhtG4ggKoSvjsuklqsIlPlThnt5gqbwWwDfF/qoOkGC79AH5udc8ryBGrSe8k6zI4l4ImZgQq+aEnlcZYE49LOp7u5nzCmKPKkX2fs439eUz7t9/SKoFC1qy9ZrgcIbXgMjlASNIjuFbWFi6TwFCkkCvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784627914; c=relaxed/simple;
	bh=86vOQE08ZxCB/fW5HXpSK4OXr5FgTqUmnmtg7letiWg=;
	h=To:Subject:From:Message-Id:Date; b=ZjnYVcKfm8tuv3kzOOmKv+td7z5P14WfD7xhPyEXefkXYsGVyK6nWXbpviSzJUJqLT3ML0ic8EU40KNwqXP62Wcf/3Nak0pw926Y7Ru80krMwb3JqpaYMiDKzmCo4jwGIqgk0r2vYrz0as1AWqlwo3uxkQX96GFyBmAtfNWQSdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3Ti5Amb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3Ti5Amb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBABCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784627913;
	bh=86vOQE08ZxCB/fW5HXpSK4OXr5FgTqUmnmtg7letiWg=;
	h=To:Subject:From:Date:From;
	b=V3Ti5Ambn6N/hduVAO+lyLTHprS+1xCu1EJZLWfYQdAD6EhHbHLG+fjNvd24ysF5R
	 HOMlroGzzfDEAmYBcIEZGyNulKq9tuzO4oSWQEKf3aGd5WpecKcPCUSuPsBhEbGro/
	 H13mmT1Rb5+DBQLZfpAGMzrINWhgVmuwQhCaS9BrdLwF/DKYeaHG1sKvUngCgBZ+LM
	 KeDoMliVMQ6vqbBTkhx7EAUxyb9GMzcUCU4+KNMDLtPI4SzgdmCghaL6FEmVQQEhVQ
	 U26RFilXEi2ixIrDI2zV166m16LJWYI3JZoYabQpHgA209qWxEvzi9WfhrhLGxjd0o
	 VjT6FOQHvuEIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60A2C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462791373.3261.4914132311551770814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0922380a474a183ea9ee117eae0501016fce5f3152bdff54b4603b5c3b3003f
Date: Tue, 21 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784627913
