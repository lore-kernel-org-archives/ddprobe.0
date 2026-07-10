Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545B53BBA0B
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783726114; cv=none; b=HYvo+mgUqoHtV5xQRLd0l5zIbYEqwRpw/k0ZtPq9dIoq6U3LNp298BpBXbWhdgtX+A65edSr4XrDKCz+v7LapXiLvD89vfDL+yAYvSr5ZTnvVZ3uvsCoLoes1/q7vTVHs4oeOxqOEQ71h5ZZs8yfPICQEZDgERlFNmX3UwektCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783726114; c=relaxed/simple;
	bh=4U0OQcrzdJJf7H/b2tyYWlCnIlAV/pfr7ms1nEBMSCU=;
	h=To:Subject:From:Message-Id:Date; b=NA9Ar4Zonvp81kKY3ndnebADIovpfmAMoWYqIww9kAA7i9/TaumWtDyPqyifNPLTfnRyAEpkJeOlDllBHGcAzD/8VLldYzjPk87bk1mGuc7lXKgt2C/mCEvMboBBM2ctxz0GCQazTRzTBnUxfYdm3uH0SaMDNGqPbJj0Z/8GcJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ydbb5OnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ydbb5OnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB353C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783726113;
	bh=4U0OQcrzdJJf7H/b2tyYWlCnIlAV/pfr7ms1nEBMSCU=;
	h=To:Subject:From:Date:From;
	b=Ydbb5OnHJQqpO4PHzCCjskEIlJMI45ovuScdXb3vvE5+ahQBsIR9yaLRD3JdkT3Mf
	 CqtlzAVAfkW29fPBw17c6EPWn8u6dQGtuUpn2vOjKB03pGX/CyskptH6T9ZnryOQkm
	 4rsonzwzn4adpCqIGtg51UJlbUUtIJpZYKg3R5YCwAhmfmeBXrvObLR9Oh89hyZYb5
	 r6qHHOvdrFPBazyVGIoHGAV4/h2qTnApJNtfp3mdgI/DPOfOkgyfRmVjMgxcJVy+QG
	 BsgbVjz2MMOuu54NwYT9bwryyi7MQpftdQIrquWGZ2wJRcQFUKXtgWxkUeZ1WGGxV5
	 xWn52OCjGxzjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87E7C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372611368.28946.9841989969556524657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51265c41c80d3ed7fe582293f80d8b664da5c652f7f09efe8c6297607432f99
Date: Fri, 10 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783726113
