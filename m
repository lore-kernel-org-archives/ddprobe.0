Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA213BB2E
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712954963; cv=none; b=nTxwLmRFzLnL+L5kuuYjk3C5IsZTKHV3C7FsLHnI0xiEhmH24zkTxr5HmSOx/EH6Qti6kE9ifdSYBBFtHca0YHiXEbOjDV1rnjBNcEsQII7KCTP4plMlXB1FPwtOzOT9dDNfSQj0w/gwhikm95wRX1DWEcA8fy1suJBnlqR7v34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712954963; c=relaxed/simple;
	bh=XWBY7mOGFLESQ9Zoa+yi+VGI+ajtGTajk4FlaypIdvs=;
	h=To:Subject:From:Message-Id:Date; b=MuJnwZFp/5k9PSWAmx6UN5+0iM/Mh3s8nWzDni2JxlcKdt+GJkjxE3D3MR2vJTWG/7Msu5rtb3yvyosG6KF/JCCYWnBrSFCnstciEbgeaXhG6YNuJZvj7XrIl8cjv85/3sgwDjc4MBpded1XCikTq7ac3GtWrzBzx9NCXe/x4hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXG8oI6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXG8oI6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71DBC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712954962;
	bh=XWBY7mOGFLESQ9Zoa+yi+VGI+ajtGTajk4FlaypIdvs=;
	h=To:Subject:From:Date:From;
	b=nXG8oI6TdZ4L8WdI89Ra7bry60xZFv2bzO7fdwZvHrmmJ4kesQPhxxARfAbjqQjtn
	 KBFCSWwj7Qd0lB89l5P5ynPrxRyYHtNiJenuh6X7pPTN6Q9sYiJpRu7XNmo/Rp0R0V
	 /nw7HieLzFA3o7Jf+iD7FroFun3jHqLkCwIC+yEymh/frlFOMAMntjp/LGsr/hNmUh
	 rjAyvo/ZArj0qAgkvu5+vDAWRB5JqES2WVO3HuP9/HzTPToCwcdYIGhMjuBcbkcHge
	 i5bRqS6CrF3zcG7JJPtVNvbyq33CwZMbRnqd2oi0QbYfig6aV8g6GsGKJMQYG0+E9C
	 FhEZgjqFfaNRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C150BC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171295496278.7263.14036724633338765521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f194d98bd16cec6af95a140eb1af298dff72f7fdd40588bb189e87aa8ab4270
Date: Fri, 12 Apr 2024 20:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712954962
