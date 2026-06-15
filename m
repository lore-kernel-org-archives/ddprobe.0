Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F6A3F4DD8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781540194; cv=none; b=gML68UyKj2PJskrwCw/lxDZZcWras6BRN58+Hywlz+SGo0aEj1qGv8XjhlT9CDTNzdTLrw07MIMGcSOzD2ytc054uR/SVxjpKvWpHt1HMcM54XnNw2nDyadk5+6T6bduS5OJhq7cDH4VscyfXnoEpTXi7qugbFlvT87bTeyrS2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781540194; c=relaxed/simple;
	bh=nFVhSYpk5eXlz6tBVj6so5H+IyIocjcALbbKZf/G9cs=;
	h=To:Subject:From:Message-Id:Date; b=I3Hr2Gl5p8U/JWi8scQfB47oKNZ2oxMRvaEDsgbIkHES8gsu6FSRy3P9ZyZQ22DxVkzSlgDgtMEhIYZXefZEvtiC5eXlNOaUL3yaVFZV0BvGj/hFQn8gEnu/M8fQXz4Szjg0z2zt6DoXLBhNwVOTWtUSbL+gVuX79jrWHw6/dpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYGLAGMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYGLAGMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D5AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781540193;
	bh=nFVhSYpk5eXlz6tBVj6so5H+IyIocjcALbbKZf/G9cs=;
	h=To:Subject:From:Date:From;
	b=cYGLAGMw1vHQx/aTe/NLjwgLKCzA9N8LJCKMyuM8x9uUc4shtZ3ckfIHHYwC2Ii8D
	 FsKAu4Ko31fRNhr9YmbxueEy/MpE2dnRdRcJdq94oalLgmjrFcw1XGd9QTWTTR8sY8
	 ynVaZIXM5z+SCSwVnIzmTbz9cOBQogQMUGP02im0GUOl5ctkyslMSvlhWkpYpnXn2i
	 /mfh7JC6Lq+w8qi9uIpPycM1pYvDnGzHBNx2VPJzzZRpxf0usvpfz+a0NpOwoKfOPE
	 9GzTb/UnDRaq69523g/EiwE3g1vSHO7KHWmBwG7jhclc2f5Xsso7iWSzQZnqGbUBnj
	 4hp2cbZyVBCuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46E0CD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154019372.13706.17659157622218576334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27baf74ea0b6d0d28a4c0848a23fe681c1079d30f293b6c8dc66a7d32663f431
Date: Mon, 15 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781540193
