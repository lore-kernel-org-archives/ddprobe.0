Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2573DD858
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782388054; cv=none; b=Bdb6ftu0My00Jc9AqFNFu97Wz5rhHUBI6a+2wna2bOnoBQENoxstbQKI5kc8ldDYol2huLqPqoKIoZmzrxNNbRKyOSsI0BBA2/g5e9gIV7O0Y3Ys2pax2O6RVt8UI7lS9gbJi0pYIWP12svEqCNyiTw0LAuYkAqgZKLcwUDCKis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782388054; c=relaxed/simple;
	bh=UgeT3D04iqjYHxqa4JmIbshbQTZ4FJWoZL4kxQ+FnQM=;
	h=To:Subject:From:Message-Id:Date; b=UATUDuDw6BqbLpwrYNJaEnF9e/RMXAXsZEIs40iw3Oxkuqh2QWOXSoRoAxBXtYQ6m+w8703ETlRiy6dVt8RBMM4tahMRJhQeWpq7KpmNsIBzrKrdOp/eco9mnBtNX7ZFron+lGio3UbrfM+6PgFQ7OxOUwluRewaTbTRSkDJhY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHn/DEQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHn/DEQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5553C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782388053;
	bh=UgeT3D04iqjYHxqa4JmIbshbQTZ4FJWoZL4kxQ+FnQM=;
	h=To:Subject:From:Date:From;
	b=mHn/DEQBVCZDYuCFBwPyRnctCFP63Rclhmi7p1pWEJDgxuLSsUsiIWlxRNzJThxtQ
	 BYzAGeL9XqyPAkqWvwXukUVgj2ARzAwnYwYUb2mvRLoblRc7dAbDNqfVTQjhwR5dsr
	 Mk7WaDdjt+YMkLPo2Chq7RTQdNyWPHvg9898Z+w88QLuGpM9UMxNmTFtoUZJQwgrqG
	 MrKo23T3lWPCCgQJs8iObCfcNxxtk4pJJApTG3FjxrVVZdC/lvm5zox0UaMOA6dGUW
	 f3+Z+lpHe3tzkceEMkWuLKmRx5M28HhI7Dg1gO2zOKsZZVzq6zCX45zxXTCIjj/9Yj
	 yoDWFns8RbzKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0736CDE001
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238805371.28590.16494259325814678044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c460d598d1f661f0cbb74ad99848ed9268ba6e0ce964fbcaed5e712bdc75ba
Date: Thu, 25 Jun 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782388053
