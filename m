Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FD422F01
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770542034; cv=none; b=OKZDBsxhUJYFfRRl+k4lvbAzGwtr5xAJgo+79/yOuUYjS2MY212L8HkmmC7HrvFcM91gY7u/DksZkFLoha+OrtOjnMzeWeebTitIBO746hxSOVEwBwzZMD72li6tikr0+1LLvyOidhQYld3pWnJL/6rteS/QvkCHr2ILifovlm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770542034; c=relaxed/simple;
	bh=BSX1HpV3YQFiykdgjS+YpujTmSwurAPIWY3JAMScaCY=;
	h=To:Subject:From:Message-Id:Date; b=itdubVPFNovrP123O/Hu4DaA1S1JRKSb/CZ9CY4q4b1eYojkpMx0J7sBKO6n5XkxH38seRDOez1hHFYgA5+ku1ihRXZSH8BfkJfxt2gmnEvFYb18R2Trjn6VnkUAlO19egGqyuBC3VZTmH70rEOkeLjvhhTXt0apvAR3Vr8Ra6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7pLdSVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7pLdSVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7308C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770542033;
	bh=BSX1HpV3YQFiykdgjS+YpujTmSwurAPIWY3JAMScaCY=;
	h=To:Subject:From:Date:From;
	b=I7pLdSVmw3aaxVwON5SppzSuVgpPb1ycySxKAlLIxmBhoJkoC6aYjaQ223tjRstRt
	 BO3i+8G8wGcamDjPrX71MRXsx6HbFJx//PiKsZOACAo5ugsTwd2UYqL+9OlTXCpMUG
	 vuMLaSPEmYmVtWcvgxYY4tC0p7jE46Ekeg0fkqeG9jGUl8cS3A/jUNkhIPdIJRWxHE
	 fnUQvrEHGAwV3TeGoSli4XuGTQRb4qL3ewkftyRASv0x2YzH13BzQhbnpm6dhMqsU1
	 NEdh1QQXoigP/7zv2pTmgWWWt+76yeqytRAZhm/EIJh5sol3X+9ID8bAt4INhPWw0X
	 G5SZ10lNh0yxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E077EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054203361.29316.7758175948210328474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3966b6eb7319d842e7e446e0114045b9b7adb1c8736e2221ade099389d7680
Date: Sun, 08 Feb 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770542033
