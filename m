Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314B426B75B
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775430334; cv=none; b=lP7+4Ds7U4TxbUJnFcdSAncMMoGyTwhXmn4/Fm97wJh8m8AoNO+YRqLFmwY7b8WDZMTXEYvQXf8/JRYvWAiWJfroVCmCrvOq/NEWu+AcyzcqZIe95Eyy/lHB18lQvGre/4SF2c3KlFdyqvP2CSVAtL3Cu/ckHkor8GYWmVUEU6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775430334; c=relaxed/simple;
	bh=4Mw1BT/AKpraNnJ7m5kb51s9uR46IddOyCsg3GFuZRY=;
	h=To:Subject:From:Message-Id:Date; b=mMbr4ayQWeXDHQ7F9RrEeWZh5NSTXNVc6OSR6mAYv41sGcG7lGqPFNIr6gpB3mNpgka+gA8yCyC/7+WLlkQ1MegiWBeNs7XpDqft1NvK6AYLP6+79WX1IRqMf3f2nUFHbKZti8Octvyx96DiWyulDd1s3huOPyPVCSehkCzZZBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tu12WjVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tu12WjVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FB4C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775430333;
	bh=4Mw1BT/AKpraNnJ7m5kb51s9uR46IddOyCsg3GFuZRY=;
	h=To:Subject:From:Date:From;
	b=tu12WjVJb1GTls/1Ocnituk7czdikXE1ePZLEXSZUZKWuGZ7uUHs5p3vLiuKS1j2f
	 OeHzrhpbCzoEtuE7LPFTgRpMS72QMwUTfcBL84u5NavuOilI5067QIxuskthQAuQxy
	 s6uvwRT33oAA4N7lzQZgyJpNf3hFyBiJ8uj4AKccf+VHKPzDHFFglQcdshNk3Ag3gv
	 cA96uIjVFi8OZE8No/gO5fUtl+xa62Eka4qvwBmjkhvrec5hv2ZRxZ+kQio5aC2bKF
	 CHb1+3ul0nUI262lufVyNrs+9Iiubm+FBER13dF6RPDdfdyrR5RmMJPseJJcjUjHyb
	 o6LLu7+IcTTIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC9DE9D826
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543033369.5796.9713711194628262869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf830ac6eb85231edbd2d446f865d8bf2f9497108ed3580d2713a7ff74a13852
Date: Sun, 05 Apr 2026 23:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775430333
