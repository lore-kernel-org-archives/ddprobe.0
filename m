Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557607EF
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714005083; cv=none; b=QB9Dze4RIUfjzw42ju6S62cxl5vm0g9KCuaqflSrF6KzsceLWQbBHkCCIJz3Y9+eYwQkHAHSLI+Ef6gA7VKlNKXIkSsFHQ+gQFHex+tSZszv+0MJpqm6JIYFokbqf5h03yYjVYQMZ0lHyvcJ+K14mOB6nRJccCl+Ef1vr7U2BwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714005083; c=relaxed/simple;
	bh=ITV/fd+HiTFH/5+erc5cZqYtzsruVJChnfOgpeX+0F0=;
	h=To:Subject:From:Message-Id:Date; b=nVb8hCDExiBN/mhydzDM1wZWNd/2A1y5Y57a7XvIrKRZK6frmw+GXY8DffBO9Sb2bo8mxbV57A6IbkpqDQnk3BsbG8NwA/GCWF/F8ogDlgjAqM9LFj8R5WkJ2a8TiAm4dNoRUc/sO7v/UZC7NcvDt6zZDgDXYF5Mfh2LCVk+d+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlGMpsN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlGMpsN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF35C113CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714005082;
	bh=ITV/fd+HiTFH/5+erc5cZqYtzsruVJChnfOgpeX+0F0=;
	h=To:Subject:From:Date:From;
	b=ZlGMpsN6OG7UK75jc3npDhhzWzUVJ3wSN6q7MNuFx37VOugebrsqgG9yl6fYLUmcS
	 ita8tQ4VZMhMb/90u73Xl7zCnLy2smfrJUGdlkR5bxdn70JMHt7QsCQvbkrQIxVPrF
	 kLiEOumcdtyrhO3j3J2SF9XSJcpFFkcyWGu9wHk1PS19GlNyofiJ2oYt46gPZElTUQ
	 f9bS/bbFzPK6bhX5+H5eNRTSc6+zmgltKJFGGw6IkwHnKHHsDbghnCyeej6hQMhiIl
	 pF/110pPQY1MXxPUJj2+5bN3uNdy6k886PRLgwOgJSn3L92zTMgxRsp30I0e/hsd6y
	 0MJ2MQuPNqwfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE928C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171400508278.762.6851663708597197001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 475f132a183cca687d63d857100a65eec08689656f201408acc2cab713bc9fa8
Date: Thu, 25 Apr 2024 00:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714005082
