Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB9926D4C3
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791838834; cv=none; b=hK0zRhx6CeO3vkWroVs6IGvAsIoGcZl1nhWndVnU9MEA9qv/cXhEoFx9oz4olz4lhRlAt//S85BQHJZ13Lc4+sxLsm1z1piDgYfhmx86iiGHKSkNX1+sNSa60WiUcKdaZHa0Y/dRMSkYBD6Si+RvDm66UZ1UBXNm0pI1Gd8Kahg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791838834; c=relaxed/simple;
	bh=aYiv3Vu/MBHnLmXYezrlympdC5Hb53EfuRJLuADg5z4=;
	h=To:Subject:From:Message-Id:Date; b=F8jjiTrDgXKBsvM28hs+jEw124TyolubgI4DFepiyuiyJBqpwK9ecp6eVMHKNvZyqnuVc4tp3EdNv5bxx4ryako/WcEgN2Zz9FbF+/Tt5HNO6WuSMhaIDvHKmkpG2m6h8RogSz4KDIAdzhlbRHE7OQeO616nNkZHW3C8Zrm3JtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUTcOGX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUTcOGX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD85DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791838833;
	bh=aYiv3Vu/MBHnLmXYezrlympdC5Hb53EfuRJLuADg5z4=;
	h=To:Subject:From:Date:From;
	b=lUTcOGX9ITtA3WprWe9h/uNwXuOUJOeN/siIebHD35bkd+GNj+9JUlLE3MT0voJyI
	 0rD9BdSvm+w1GZmtOiVc3ZpyIvxDDerxKcs7qst1E/nsfYpyYlZL2v/l9a+Ryd2h3M
	 tZpqJCKRPQKFKY6uNzYcG58P3NlnWsFynPYBUz1s9L8gr1WR7BSUcTqR9B9Cz7NSA8
	 jAYjQCHbSfrT0sQDsra9cr+30MYJ6QlBPpOoMez6IPyeU/VN4Npw6AMpkagAT8oI7p
	 4YB11BgXMecGFk+N4AuJ6FXeRF8F3oKzgQhlotxKIp6p5LepgN/TueWrvWhql16BZ8
	 NBTxboYwnvx3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF61CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183883369.6332.9344037318450517437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa9d858328d5b0171604a6bb7fb7a4a9bc162c8ed7a4a1dfb0b05e304ff6be7
Date: Mon, 12 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791838833
