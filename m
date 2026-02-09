Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFC725DB12
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770622434; cv=none; b=rYXn5S48D4Suax/SCTvIT73b5J5BxtEcF6f6wn63Z5sZ3WntI1ph2mx/oLdZ2Kcun0GMTqrpmxYDtlo+1RFf6E6/nXGqKug2N2/zdHt4dw3ARwTbuv5PEJvXLNyLbE74kbZbK7ZJxpbeQstuG108qNTFwWS+sa7dP69YFGv3zOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770622434; c=relaxed/simple;
	bh=So09YImVdA+vkVKJZRxQFcgKK9bgSkNFXrV9GoGJiHw=;
	h=To:Subject:From:Message-Id:Date; b=MBFuPfZ+xI1Bq8ov/8s34MA//80wkjr6gK2luzJwCwu3HtOlN6gHMAdlW6N2si+CEFff7062twWr9Cih0FpDYs8LOAvllED/W42MLbDQ/OuOJWV66f9vWR8jQIS+FVRro7lK60MQSzKiMLA4YG6FvdhabTsqUxGeTp2QGPjU5Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mT4L906G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mT4L906G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEF3C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770622433;
	bh=So09YImVdA+vkVKJZRxQFcgKK9bgSkNFXrV9GoGJiHw=;
	h=To:Subject:From:Date:From;
	b=mT4L906G9TbQx+9t3HHxS01drEvPlPuELU4vwMKllVV5AUww99UQz/kl9invYh1JH
	 iyd/hVbvSO7rcFAYP2ut8nn2dJHy00aqAvbFfHKf7ZaGBublKH1TgmWQSWH+hCwyrB
	 RyUPlgKDfuAAPcNphH6NkQzbkIhZeKJGVVDyZh6Ph+V/CElB95Ub5KsxxSmx7xaZWz
	 EJIvT72RTrM3wgKNjnvDuQqgMGb75XtaAvK2AuSeHa4ubfeWX+itjYhN8Ta4Fcc8SA
	 4bbbbKyu0wzqGKqZZgXQhlbdYH/8sEX+8LoTTyAqaBwVQUkf8FPmotJUGfZP98v4t2
	 /1hwaB9wTZPig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA706EF071C
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062243360.10768.13821761896622777654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33a13c5e200c7cf10c1bdefcf7887baac33360e6f0de53dee971aa34059757a
Date: Mon, 09 Feb 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770622433
