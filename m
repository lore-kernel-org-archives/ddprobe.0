Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4502AF1E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 20:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728852355; cv=none; b=LR9SD31WYTNEGmXCYxbK5qa3ZCIrJSGr0F+x1v8L8qnOMp9bYieLjYN5lhGvs1nHYD/pqWlzr5+xPtIH/qXb3MVE9AyFaL9sPn1MPkYxaRliVzi+OsMKauPFeKnmNWpvpvyp9Nrb/UPdvfefguy4NY0ac2zDCwbwB5cqtTAMBdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728852355; c=relaxed/simple;
	bh=0fqN0O2R7R4CDe7AqRePWMMhDOi4q7P/z3w1LQph+Bs=;
	h=To:Subject:From:Message-Id:Date; b=Ft7BpBGbxxnnYBfqfB6O7oyYRDagFumnCs1sVfJcb+iuupWVXX2jymOGrSssNePcUqXGZuXw39vprqqaueE80FBPwHVEf+/h1uKlarvVY4krKdvm/EUT+0lCI4v6w/cVmcj7iaK4JXKKC2nLG3Fb+yGpYNhL3SK9nqND+fiv3Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIrSfBwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIrSfBwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB033C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728852354;
	bh=0fqN0O2R7R4CDe7AqRePWMMhDOi4q7P/z3w1LQph+Bs=;
	h=To:Subject:From:Date:From;
	b=sIrSfBwqht2xdwxjdKA/vVai/JDaVQIgvwE7/BaxbmdIofYEHlrJuesBIu9nrqxmX
	 yrKN+guHRdZ5HP6ot7KDxspLrmI4FgIjTtP+oqJxwjxY5SKMjQqj0HI/nIKU9ZaFDB
	 GnJEuj0zLl2CmHbEcBjWRtG8CFMopSD7X/pb1u9pJLVt0/y1yUPoLIQxYxPpmkDyJ8
	 LR6HNWCJbCb4bbBOfAKtAMAyCf3N9xr4I8DEp9SXNaeOWmXNUCs1EG4jxV4puifn+j
	 l33NDBZlFWjB+idfek4Gc2OCsh17X6Zly2nI1uKh7/kiq9vlz14lk72+jxJ4uomqR0
	 pjMZ65sIqMZfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977A5CF258E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172885235358.8688.1178505303986644019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4dcfa2383e99316e2a1d0cf13321934c2f09be158a635a0cfb52c99aade702
Date: Sun, 13 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728852353
