Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46323279DA6
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756813194; cv=none; b=rw6KRKHyoRKgfTfWHMEO1mALUlr8Qabv9GTrOBTZo7ejkT0RDQDxZgh/dRh/0feA8quRTKIVcarahSYCSI68DdPnRmckPGCQu3vrCJnF+FE1ysHQ22u6V5DNLeljY1hwhE6Uh/GTwOKDNtWuw5qc2YZbh2qLYRPdML9gigc/QvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756813194; c=relaxed/simple;
	bh=MUVQ1RKmCUGn4xWXBN1SnBmiHK8B+nKKtVhocsOptWQ=;
	h=To:Subject:From:Message-Id:Date; b=KN/8tRAmciK8zq1Q5Q5ews3qh3lNusasij6K9i0iKZApoDxCL8GN+/dFU9gsOutFtkoAjhL4jq5xgJ/ahKJQY9tkW98g2Jr3+7tMbKFqfHIGurYxbhgwt87HXPgndIM5fkt3aHWu9BJ54byoMTzQzMtA3htLL6jH3Wg6AGzNtJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJLSm/o/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJLSm/o/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC26C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756813193;
	bh=MUVQ1RKmCUGn4xWXBN1SnBmiHK8B+nKKtVhocsOptWQ=;
	h=To:Subject:From:Date:From;
	b=hJLSm/o/JRIQwLBD1YnDQ9Q8M4nrZQ3eVi4sjUUYUMHoiUhnegcoXu7MqwJpp6oBW
	 cTvec6S2H4xJvdvGYPUEPR63GdP9avq6Ys4RrZymTBmnRgz/lA7WEjl9cmR6GeXbky
	 deGfzrMRWvQ7QefUrDOFgItam8P1zlNHcfIDue/jj38ORtoBmzTrI/sYEHm2f46Eqq
	 3WfnIU6CCL3QQpqeD6vQmrVJbAD/zAs5TsJ6QDRsL+5HMKHOribPrAoEXDv5Ic4mSN
	 nQyajVDPATMMqlyDm6naOvAsDyzVHTXMbHQyXw/rmlP/VVOaDLYjLIIY80FUYWQIbr
	 jsCTmMZXy/rhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD3CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681319357.15636.15703492035654854477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0085b780fddd4da6b69bf3c2eb7e348aa34c4cd97a8c467e362046dafc49379f
Date: Tue, 02 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756813193
