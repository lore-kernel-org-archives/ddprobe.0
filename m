Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246EB136A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727397354; cv=none; b=LXioTjQTkqtpQQJ8bh1HSxll6iBJkog4WLKnmIf33vjVSNr2rDwquoa+RChfL3bl1LzykeJa2+eaDOBVx3/BnHF3hPVi/uJwBojlMyd95XEi8bk0j27cUldIFY2abf5VTHRXfHigFrmT0rgQP2BlA1dKKDrKz9a+0Xgv9vlZna4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727397354; c=relaxed/simple;
	bh=R5Uks7OjtFUtcRN3yasIUOJZyiDp3Dw4phyvaYnnpdE=;
	h=To:Subject:From:Message-Id:Date; b=V/CTzoIlAWpB/HnGoRcqPzPEHmh+j5opeBDtkTt+x3x0ZlXjJbxSI9XosznvLxWUppl76RHjqCVCqBAIMSd7WRvtNQ4FO+3c93iYiv7AfEkB2LTV6jN/zVMY3pPZyips7eKfWcAPlxY/ZEdZ/efzZnXTH1kLcdetpfvkmlWz8bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2xmXgJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2xmXgJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0FEC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727397353;
	bh=R5Uks7OjtFUtcRN3yasIUOJZyiDp3Dw4phyvaYnnpdE=;
	h=To:Subject:From:Date:From;
	b=j2xmXgJr5Y5duwaG4PA1qAt+VXqori2S7NdeXYrbMUqP86jj0iH+JIr8B9ZDAbm5C
	 R9dgPjIvFHHuc5LD87BoyBOew6GnEtg2J0SmbwM4h3PbWh6BPCmr2iN1LJEMdM2lFi
	 G3rcZdEQy8zLUcZG3JGovxTX9mI2ndaEOk+TuPuzx22KL7IKjnJmRnHO9pD/fiC14f
	 tat3S3ZJKThwF/3LWblONaogDnPeoNpBXgqG+2xHe4daR9RVBbP7HScjVmCJhxDcsv
	 crUtEHFOzDDLfEVOBAKF2TMy9xtijcHhUjtRcBp6xrX24HzurmXjY5JPJVSvuI544p
	 Rbg2qGw7g+OaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9789FCEBF60
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172739735361.1492.17261585722924096580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7fb96022adec146fd4413855f432433797c825d3fb6fa4f126c66f4ea4564a
Date: Fri, 27 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727397353
