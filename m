Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617FD32E68D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776224854; cv=none; b=Uhxkp1gMcOU8cET30SmOkc8gAwoWv/Jzd3dRQeV1Fbd6357Tkr0e1vpoIi31MlA60qGOxbPAA2dBx1CFXiN70zYeKudQyDzgdLNa/Y00MSHegoTl4/EX8FILccXEkFeHOXMw8rfUcirzo3auhngVp4thD2Xv/B733yw8Pb0FWVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776224854; c=relaxed/simple;
	bh=QXdSDXbF6N8Yihk1n+5eL3q54khghb+KACDaqoznt3w=;
	h=To:Subject:From:Message-Id:Date; b=PRQCYSevgQO3VKT/1t3Sn9gkenarRxtVTW+4VYseRLiLWCMj25MN+yFkhUZKzuZ2lceTQdMucqGP6I6Qb4GjLM6d5p5OOiS2QJAdUNzjKs50rtQJvWDWGox0KW1XkT+8Bcw4WzsAw5rrY84TVjX78ELEUGUbMcLIuOB+fSCK1qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtUQoOHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtUQoOHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C1EC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776224853;
	bh=QXdSDXbF6N8Yihk1n+5eL3q54khghb+KACDaqoznt3w=;
	h=To:Subject:From:Date:From;
	b=rtUQoOHavVAqccBYhCYqqXWm8BBhTYlUHmOEIRWBxT06yg6cQQlog8cGcetniXs4R
	 q/ZWjutDnDsl9KfnZs8J5Jj/CsP56NojBBgq1aGQIXdKyOeCZHxtpATrIPsGwO490T
	 YdqecOxCtxYL10BpmCaZ0sGM3PjSLbwse2c/THFvhzo79IfS2OGKypGasXSyJ2V7c6
	 jUPIWOfdjdTkvxj4Y0zoezknHV2pM6GOkT73aOHj2tHx7QgRRi29a5wn4k7Hd+RhX/
	 MDGeRDPUZc/FfacXYo7H7EnNLT64DDdR9AzfD3JIKGr1bDPFvrirR+FfsfSHsnxWKB
	 YZ+uKdd7G/pKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ED4FA0C23
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622485368.20337.7155670211229558143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91f1cce1575bbff89166ccb2f2a9ef2906fc3ceca189ce83e65a096bdfa5bc3
Date: Wed, 15 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776224853
