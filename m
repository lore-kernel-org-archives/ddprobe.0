Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC761E25EF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747627194; cv=none; b=B9jAssCCjbzGNXSrFIC338S4DWPq5t4c4n5PkLH9aO9mv5aq2fifjOOdzvxPkWSBcchOXjEJsn23jjgeL9RdMsyXf4v0DAZ8OaqC4iFzput9eByfFZ2sqpMrNWunes/YV+DQeI6B+ybVGYL0mlw9uXPZsGH6JEOcIZNotQ1j4Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747627194; c=relaxed/simple;
	bh=dZsemIEsWWNWLaKVQupSC48sIGpUt4Vifdt6NbQfD8A=;
	h=To:Subject:From:Message-Id:Date; b=rUOiDu1joB8+fYMQBDQp/BSutEJvYJqZF9uVpD+IYxzV09ygTnUak2eTS2OI78Lo380F9wpMO0UyM3V5xJ5j2Z6Dr4NjU7Mm1tqmFJ48H/iKZ5klCFbruK9gbLu3MSzrLRZ/th+A3YLLMH4yKfreWj/86dY+jzW4jEG0peHFFQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efAd8llD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efAd8llD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2855C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747627193;
	bh=dZsemIEsWWNWLaKVQupSC48sIGpUt4Vifdt6NbQfD8A=;
	h=To:Subject:From:Date:From;
	b=efAd8llDwgOKUp5Q3oU6OXTrwnuBqh9VvCZcG0GBZ4UDHSDbKxVdCK6gg8muSO+RL
	 76CljPwjqnbcP9C1LO0N7PtCDSZEzzRNOANQD9aSnuACWU7i+Ns4+BRreqd9D9ULif
	 IIE1pJFPtesUVx/2BmLuTmotrVJa5/+hn9AY7Pa/HP4OrLDfLWgaTp6WgzzGpylWQX
	 2lXIX+AXAERKJRbpEhvxukAIOyL2XDfXRtJQgiD/m54Bgnw8YF9DS+ezgpsh37HrWu
	 RiaFnjNqUjAnHGIPBL/20VmJiAImaJT/ocFvnyAwNlvfkVrR9psvJ+R2p3BCBJAlL6
	 pCAWX59OVz+Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF8BC3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762719358.2837.12836932298590833183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155ae585ff71063d661e7ff4307a760c90ab65346d03894ab3992e0f2aba0b01
Date: Mon, 19 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747627193
