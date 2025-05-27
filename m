Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4121F4192
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748381393; cv=none; b=SZHppuoYxgemgHdEjtt4czEcH8KwvQmaE/XM/wYRA7kRk8goJi122JXlVDLDALP1msohFRMSzbu8x6UgfQqw+WoZd5b3oF2o19tkxU/nbv4dvHC9bjA0XJADyXnWrSS1lISLD6ZGtoOdOi4hEz07pUDgHTqFxJg3pKGVkbZXEQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748381393; c=relaxed/simple;
	bh=kc2pyq8esD79XajqDi9ZOG0PFOnh4lHsgHhBHHFI8II=;
	h=To:Subject:From:Message-Id:Date; b=BXrO3hYwX/1La5XtfvaQaPv6r4WCRRutJ9BXjhS+i1Jwckh/tYvjR7onWUiA4562yyYULxNG+TSmhTVa32N9k2AKWKzbCqy/Gr9GE244RQjVvcPvzIiyy1Zs7ZkfgWL6FMb2Z9ZBwaShFUTFwdqBtz8RGs4tjjltKRWCpSvcpSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okaV4l4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okaV4l4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748381393;
	bh=kc2pyq8esD79XajqDi9ZOG0PFOnh4lHsgHhBHHFI8II=;
	h=To:Subject:From:Date:From;
	b=okaV4l4FdmmJ5T27f6ZmWO+OcQFCvkawzZG5BGcWe3Zvc9QTnQOvsgOgM6TMcnz5m
	 3BtUPd3VaEmwLlkYJfpDBY+750gFrOrRDwkRGvznEQHuuP6iBADqgPnYCwnKGM777P
	 et83RlNKMr7fm/WEWsFg3oD+qUkEz+9+WMLMp3v1zQkXE0HRkHxqjCdV6YLELWRKvk
	 OjjzVeC/rCLlphVPok5uJ/nZyrQlvAvqyMYIV5k+QKUuZ9jp+HosXy5oUhoyJEA17q
	 HkDIlchjqKs7L/E77XM9EuT4L/7RZD/3Ofand00D16ZSq/pRQyBb3VT1PMkXA9Faqc
	 A/LhjBtkYRONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F63FC5B542
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838139357.3208.15112767900492061275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a35a6007ae2b83b0382d071472cc591beda6bb82d62afd53e10eaa6be86c459
Date: Tue, 27 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748381393
