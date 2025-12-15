Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41287225A3B
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765803774; cv=none; b=dRom+SjcCFEedVMTD4WdgBnzWop1+cOyBLSGhs3BhHwl5TxY0vhfID0RFM+H6LZtoDwsxecezeorckDel197PR2deQxbW/iAXnT4IJ5mmX6dPDacxBDO6sH+z0GgPPtOLaRcV/CvgyP3xbFxLP4k315YTKk+D/SyFfT1zFQkFxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765803774; c=relaxed/simple;
	bh=NJFd9aUNGdoQDo+Tj1vX2TFG9Afc862wU9ryXhMjOiA=;
	h=To:Subject:From:Message-Id:Date; b=ju8Phu8Atbqz2vZF0yOWIoGuIykPODIAdBQkYmPzJg6JU47K4SYigwKbDUAc76fEnzOnMw3fF9e9Agz1s0IA9RnZgtb+m/2IIQIfdfgR2IdZWL5NR8ya5Ny/2+2Ghk56deeUdb2zLiuXrgnnZjPrBHa1K2NYRJ4Lo28DkHkyvV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2SJrB/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2SJrB/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3797C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765803773;
	bh=NJFd9aUNGdoQDo+Tj1vX2TFG9Afc862wU9ryXhMjOiA=;
	h=To:Subject:From:Date:From;
	b=K2SJrB/FwL0LQ5XEx3XHZ09U38DM/hmMKFeYpwrZm2sWsY1c94L8S6prmjLBossqd
	 Fi4WkQGvz+U9wEq73rs90sSd98d6TGrF2AgEPkGttya95Yle6TUyCPoCLS5lKb7onr
	 V68aJCT9TuoH0U3iuU4Rr/CYDVWHyGClA1/6nEBYLFY03PchLV4SfvBT8qjh+j7Vkj
	 94OMDbDYpAYVgNMdGXNLCxSMJrpWT6haubRVwlU5ygG+ADCd1ZgWJ0x2zV8yEORG1m
	 NV7JwMf9rUJ+EZvep8wNksMQ+X7I3YmQ38eQEKkH1nZc3BAhPPUW2RSpotic3h3qjX
	 5Hif9fUFsr3ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A8D5B16E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580377358.18044.14395118332068895101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70aaac02de856df1635441faad93d5efbade4e0d7715c3d852fffe36b7c95285
Date: Mon, 15 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765803773
