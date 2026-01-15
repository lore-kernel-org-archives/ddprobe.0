Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C424A3C
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768501434; cv=none; b=l+NbcC0biA8ZGB7WLqJQ2QkahBRAXVnyM+jLqKKmyIKRQ71AJPVL2yElkZDPqwXj4XsD5rhzhU7/6Qvg/AwUOCtU+M1/0ES0fPOplLpElJxIHk2PzEMgMmqiK0T/MRroF59XFEXyoNK+26XHBA5qzcD9lFO4XSiUcSCgTd1Q2V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768501434; c=relaxed/simple;
	bh=PlJ5FqafBkxgx53N5TI+CY8a3adeknMgiypQl6k2no0=;
	h=To:Subject:From:Message-Id:Date; b=ZM1LFGtVtA4HmIliPxDEobkAhomq1zeIyI6HN5J7jqRyDAR7xsgE3lWCyIdIb4ipeMmDHqTlLuYyu6wJC/ZnjLUpw2beTP4n3/4ihi5eaI5w+EhXxiRhd4S4vAViuZHSe0UObdyMcUBfq64LVw0hkhdRA4lLviR2fZzB0CCj244=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBjBL2ay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBjBL2ay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDCDC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768501433;
	bh=PlJ5FqafBkxgx53N5TI+CY8a3adeknMgiypQl6k2no0=;
	h=To:Subject:From:Date:From;
	b=eBjBL2ayVm/5NhIFI8ajnAh91Yr+82VOgMDOEuglGePtzC0GW/tvnZlvzt3CoMP36
	 b9fCHcrACdTcXvdxPVvKwhdF+b4nCuxQYhz6BcLZMrfqXR5VdUtd+jnovzWMBdHXu4
	 E1TnKwLjMttpQgmleHDgGwvDLnczeWKZPXV1d6kUcgkmfJv91QYkfrBDoIz1ml+Ryi
	 13OGDVzdkNqEmbH2IxvsW2U3M/rhsmcVMg3XExrdWny7MwxUh1X2NNy4OIV4047cri
	 +BoaGPpKDbwfpuAyznyOD6GToUCoYy1lJk30Dsp7jMHppAZ68FSikSyOv6/GKH6Vrc
	 Pmr0R+Ctl+8fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFBBD4660B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850143357.11752.7527179399299696408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e333d7a2a72de0eaa8671f56c95560e65297e1c012a61ef836c0189ab59a93
Date: Thu, 15 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768501433
