Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6591AC88B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749332394; cv=none; b=Z/dBtdozevwA1v5YxHfm64IghR5t/KUqgDdAegcziyEAosWdicBu+LmeT+i3rihrD29Q0O6OKHACMveO6QTrxvelP2udNAOhbAZHW5encEwSFgzhsKjtOVNQco4PiQ0k0pV1anyJ4Iw65JSE41dyrKEkpq0hjTl+Ew3dM7Jft5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749332394; c=relaxed/simple;
	bh=+CQeuDVHmgdq7VbE4ScXQP2A+ZPh92/U/F+EGWdAAp4=;
	h=To:Subject:From:Message-Id:Date; b=fRW6l1S9BIvMgtQ/qhK7Dt0eH1g10uMjeWaOTQgy64OPgrN01qe9zeKV+HlWzqC88q447xV1oqbh3+CBiw38KOjAM+0pcnHqYV1rXHXS2cCt407FcsH62F4Ez0eOsCq7l0zhVLQYrA7/O73xwOtBlnzySrqMsT9M8Vi7FsCQY0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh22Qs3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh22Qs3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA1C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749332393;
	bh=+CQeuDVHmgdq7VbE4ScXQP2A+ZPh92/U/F+EGWdAAp4=;
	h=To:Subject:From:Date:From;
	b=Oh22Qs3hm60QBfr9oAtIUbt7FBA1HnLHWaOwavzg4XBuXCh140YSvlLEQxaiKG+k4
	 DO2uU+HhS+33STQ7wDzC49kP9LLkhfs29jlS7bj8J3kXC32sixK+ptr8PcAYciG8Hd
	 lGLMDrnjGvKSQm6bC3nJ3rTUF2n0Y/7dCnTe/lKaf//I9ILEFJeV9gXWkupObflErC
	 8//W/1hn238jcqxZFzohDxLBi0eVQWJkbshbszWFREopam6zlvoyvnQI2F2u1tj3NT
	 OlPgDr2GFQlushf5KRyCthnQLVPdoVJd3hcJeqxu+LXDDc8XEqhHtRvqeknNpUdOD8
	 IBTWHa4MfudYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E22FC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933239357.25967.8465027453051403239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea036c87254651badb24e872d2e3e2d7ff76fd4ecef268d71af98f2dfd24e59
Date: Sat, 07 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749332393
