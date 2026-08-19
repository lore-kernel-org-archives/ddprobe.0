Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB7014F70
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787097634; cv=none; b=gEfQrz0o/yw4UrGr50HMjPlLygn5ZTCXb84bWNC8XasDZB1JrEawjqFikKyBxK0hj1dZkeB15QzG77BnbB+T6PsTD5D3yp1WurJ3dobtnKNlVEbXFxHGBy2MfQvfWypibGz0t657pDLYo8TRe4zqO4xGuDaVHsW2zEgOQ5zVdmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787097634; c=relaxed/simple;
	bh=ow5BCC73qQCvHpjDMhLWugW8B3lBfbb0Aq+TvcqNV+o=;
	h=To:Subject:From:Message-Id:Date; b=uLrv4Q1vfoJkCgKmpawS8mNsEHl4iQKeZQ//2c0x7QfUiIqLpRE6QVLdC/Cer/v4sJ2eFLCZuhKo7Dv4GNqnPhYEivSl35cjzY01vs9/L2ngqXiegF3SZK+rNRJd9PtOhpBimick5UoD9alkV1kbmqHPyorFJzSgaN/negPa4OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBk1pAYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBk1pAYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1AAC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787097633;
	bh=ow5BCC73qQCvHpjDMhLWugW8B3lBfbb0Aq+TvcqNV+o=;
	h=To:Subject:From:Date:From;
	b=mBk1pAYmdw6K6BYL9GWB1AnSJBTkHKvdQnsqALK0q3qcU7ZEFpWCqTSsYwJ8tm3l8
	 xOyGwi5EBtlYYMk0TEDp+nf6m6q2GZ1iGISSXnQurctNTv5SLk2yKci82Q2zQqVgAF
	 QL4iSqdk8o+DqlI6qsO4YSwvrfKM5MSuKnzD7XOkF2I/K6cmJZ+W4GEZeeg1PIgJ5F
	 XH8M91MD7Byg0XV+UkNVDu0RJXtlsJkwuwzAXxW0Kw/eOwGzjIfa+f71zlD035ZYZm
	 LQoheA/88rKjIyA/vj3C0ewElSJeDUvvCMqIBqXKJGFAqOqOnQWcymzZ4KDINGCGaL
	 fSRongTtNU8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B371EC5DF7D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709763372.24696.7203980632343557398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792ab6a07b20c8be1fadc3237927d16bb8e15227e0afd4974b54eeee61759509
Date: Wed, 19 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787097633
