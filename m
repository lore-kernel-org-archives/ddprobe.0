Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CBC27AC57
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774017894; cv=none; b=ahXVf7YpuHr8E9ZO5erQvhuK27Alfxzto/LevCjwCxe+ySYtzE0iUE1bncy3fMDi+OfXReba3iHgUnM9KZfiAvLJ6j34XgjuUcKfOUf/qTbRzcbDJNal4t/u4eKt1G+8IiNhgSMzPmKM+A4dUfXhI5ma55cdLo7RBbh3Xg5XoKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774017894; c=relaxed/simple;
	bh=2X/Y5zQt99YXMWrMDyfgDmQ6L6nXdGZXOfg0H/gHjFM=;
	h=To:Subject:From:Message-Id:Date; b=YuvdyoUDtsJs9qKsIn5y+AbEcUMjzsA4lKgGTxej2SojJOXSIGFZlYFd6ursRz58r9YF65FjHA0G6PGQO5m0djqm7cBOvkougnG2GPWDAo+YzR1Yfyrh08tunQLEpCqWl1xIEZL86qG+uBgY2cgVw2kDxRfo2u+nxF5PYE3VVvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsK0MInr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsK0MInr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D127C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774017893;
	bh=2X/Y5zQt99YXMWrMDyfgDmQ6L6nXdGZXOfg0H/gHjFM=;
	h=To:Subject:From:Date:From;
	b=IsK0MInrGp4YzKBL69QEbIgIYaGINoNHkn1hGn+RWpyEq/eKD8KoPgwXgtX+Ukwq6
	 rgK46y4R4zLJH4+7YcJM4XdXuXUOjRMf7RiKVVBs/v5l00klQo1P8NwlsdO31yBuT4
	 J71QrfdzYdZpYBKxI8sWPQGFePUW256ACXYDTI6irpi2KcQ/LFFs/Nyi00FonH/6EQ
	 vzVSeqEvDpQy9A6GzV+AsOaU6rgLbwEVtZBSv8D2ljy3SiDqkuHPPwFIUgRxs8cOq1
	 oCCSTZiHbBDAntodY0zZknD5BdFuZhHtIel4xZr16RUk1pRgMBvxxPsx6k8Cn5V5nB
	 APchpbXamQO/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA51098792
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401789358.15297.8242078774072053713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f35e11623407dcde8b0b19d4aa3823a47bf0b478e70a2cb7c677377d65137a
Date: Fri, 20 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774017893
