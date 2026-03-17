Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECB32F39CE
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773764094; cv=none; b=t0ZUi/OSc6NZzlQgCwC7boaGM6lvIQMu+Y/ac827XUTwvu7lxnGjeaXup+idKd1qlggUjDAoVfrc0mrtnDW2gVZVv5hFzcAATRFvt/H1jwmFB/+2ZRTbA5NnIuMdLONEiideCi3BF3v0S3OAEWnYDhSsqLtLE6TE60nAfaASJns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773764094; c=relaxed/simple;
	bh=hZK5Mn+KZVeSUKV23/IUEcRb5UEZ0zOc1zjtLKo9uuU=;
	h=To:Subject:From:Message-Id:Date; b=oWcJ0P8o7hGYFF0B9NMporS/4jVNUtV+Vu/ttvq1ki61+kBEb0/epej61fp2qsy3Qtr1CG+NEQOk8pRobfGqPA2S4mMsGfJUwpxyfCa+DFq6c7kK646JiwAbS1yuoeVrUunVV78YagX4GSUjcCtLLswrYFdQGK4kDUHEJIy5duk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plb1VUhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plb1VUhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCD6C19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773764093;
	bh=hZK5Mn+KZVeSUKV23/IUEcRb5UEZ0zOc1zjtLKo9uuU=;
	h=To:Subject:From:Date:From;
	b=plb1VUhWmedAycBWodvyMysBLALl2Ynfrag+jmjmVwtcUdVQu+t/dowg7QZzPTeG/
	 thLnPKyVuNunofxcR+m3aTRWAruImgIGuJ/EghqpfZJ7CwO+gJe4nFP0530/SMBr40
	 VNsQxcp4Z8PzlGHXmkYbqAXSZTVM6DWOSkImo9EoNhMLhvqIoGvkqnNegzkdecr8Hu
	 fJWmSc3WgJDWwyY1jYGRbvmgwlR3bKRY9eFkGcIPMsD/6eush5fS+BIJeXbHRFdDdq
	 mDmdhYszfexiUO+vevMsSDV1BYcIrl0MxLmFpuZMVSO3E+ZlgI0snYDP/XxvKv1/zv
	 iBNMWjD765D+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BBFED9EA
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376409357.29508.446360703531555535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50725dd00f80ebdfa28892be7ec216546715fd71ec4623c208d10e4a466aba81
Date: Tue, 17 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773764093
