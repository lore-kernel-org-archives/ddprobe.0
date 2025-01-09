Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279581AAC9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736397954; cv=none; b=U4kivXybiLKBDb9cdEJZXOuUwTDqGfmwfKMow/tnaB7/avGB+4WyUPAodvciv24YlVk34jOOJABgtgvU0y+jg0uRgnOqKr4/EUtnkwY9ttdgKUg807Upu2S097lCWwcMs+NMxU/y4JCXYxi3sd01Gi9CH5C2UYHIBgoyN09yYOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736397954; c=relaxed/simple;
	bh=ACtlFrIhCupT+IyiW4Nawwo2LL3adG0CQO4RdscAoko=;
	h=To:Subject:From:Message-Id:Date; b=if09bY0dDvDwgTidw3rqOFOlE02ftwzn361f7dRM8VK51GrAsvR3Epk8Z1qUVxYx6GOY68gIPVlfowN8lhgi3BfZiwJC6JgiZdX1MkUvD4sYtsRnBc5QjbC0Y44+/aXDldrOOMb/Yzo5eptJQEG5SSiOlli+eHeyuiIuuC3WYNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+Ja1RRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+Ja1RRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60CFC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736397953;
	bh=ACtlFrIhCupT+IyiW4Nawwo2LL3adG0CQO4RdscAoko=;
	h=To:Subject:From:Date:From;
	b=U+Ja1RRiV1U0VFD56an1C1T0943nucL8UQtBW9NOd+iekibxB6LoBupOb1zwhYa3M
	 Rq2y7rYTieE0xAVyuKarmo6rKxNLAvzNmeGJWTs1vxU+f1cH0RK6wopDSGE/bA2PJC
	 FCeSeL0ZCsJ3p3T9hvXB+Ory92aGA7FTc8dhk/JDgwI061HWRkpmO0x0DZLhKARhDe
	 Dd6xWTB+ZQymLviPrbSG+SbGnRte6RPmm9AvT6QLNnQ08kDjpFzNE1FLqzwv5At+sO
	 XGzFAq4e7GJ52NUUpjQA8w+1JjFUYXlZLvvuTz2h+YULQBBMx9RoiGpPxmLa+LNRqZ
	 iJFXC3OORgh3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE0AE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639795361.20001.17866215683669413959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90bd49a11c5778c711a2c6f7caa4590ca073b54e3afe7fd53e45d013368268e
Date: Thu, 09 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736397953
