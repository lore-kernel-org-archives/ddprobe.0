Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD353232
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 07:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713684623; cv=none; b=r0t8v01zfZLc4qYtYhjqFylc//nVeabjERqVR8irQKfUlIDscRdtXm1J1cdsicyfJlzLXEKd8HucFXogmTY5DaZFqsLeKlnhIjcGGKVvysyFia6nbv0+RtIqNjZOA3AQZnvbLcq/6GK+Y25LTpmsyh4O8eL3imph+/IwWVjQ7NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713684623; c=relaxed/simple;
	bh=1AbYuZfobTTz/opDvY0zDaJc9G9cE7/MpDsuTjVbB/8=;
	h=To:Subject:From:Message-Id:Date; b=hQxRTJqJY/TdIu6i/HsYvAHC3PLxmtPiYzU4EUhx58N+SN4NUCj5zVqfYD5Qh28gQXrK0jy7VjNUKqkjbcvvOA7MfSQJGCnywqXQP1EOVAJJvhw1bQX9ScWPAqvszId35Z3iNcUgTkP8YbmZVKBviWHdWvUHsb1X/pgbZHjjzhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXke4Cfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXke4Cfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA43C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 07:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713684623;
	bh=1AbYuZfobTTz/opDvY0zDaJc9G9cE7/MpDsuTjVbB/8=;
	h=To:Subject:From:Date:From;
	b=kXke4CfevlaI8j9JFwzvhHmFNpxgE/Dgfey6quz5KHlyFZhL+oOr5FAuzNTxDZhv9
	 LN/60u6skO4+gdbbjHEj+VxnDX81Ys02VphXUs2P9xotACPdhPRcwx8fA6e6uRGFiw
	 RQYOX7DqsHoVc6jIx1nmJbMfvJIUfaR7iH2I1H7ItMnznPvxERX/3Nzhqs5CGuXMOD
	 OzVoi8Bjw3Udx0NvC9zevoxenUpB/TGozAENXdVKhB7aQib8K8O9bvK696foZisxbx
	 Ozf5bWe8cwg1G5MhERIPXsdifR0p7RlXE88sWKcnVNqD7VaOqys8IMhQyza6Bzsp1X
	 SXY80WOYfA1nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD7BAC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 07:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171368462278.22867.18282915819334106697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640a9d0a55b31a55be846c3c30826f424d92a4184cc14639d86702a505c8f7db
Date: Sun, 21 Apr 2024 07:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713684622
