Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160982FD1C2
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762211394; cv=none; b=HbLtWycRse8hsshwqR1FQbYfvKioP8FycywKzkoaHHUWgckFRNjabrU+boNlZQM2OyqIx75rRHUvoBDHRpsF/sRujyaPiqvwCFx5jhcD2ykOMLEAvaZSyvff9v14UJ30pPRowHIkv/MNw17GL8Q9qUYe0WZn0krMkMU/iEg4Sls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762211394; c=relaxed/simple;
	bh=j6rHrDORbsXU+RK98F6jpMYDwzJDJ43KB6o3al4t8sU=;
	h=To:Subject:From:Message-Id:Date; b=IodOspiBVo4GapIYDVBNXH+C/asbUqun6LD7It4/L8r0tG2dZzmBszEfpjsoW+qFyJlBm+4vXZbZVbpw+xqV3kbQFiOCYYkKLhE7zcFrzdcPDVHFUZAZewAV/xuGO4h0rI6YURXxhFB0tVtV2poPPimX5W5qEi8j3TJPdQwh0t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUerxEYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUerxEYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45B5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762211393;
	bh=j6rHrDORbsXU+RK98F6jpMYDwzJDJ43KB6o3al4t8sU=;
	h=To:Subject:From:Date:From;
	b=CUerxEYweXoSOkAXLNpbnBIIPzBCZF1yefQCpFLEf84jWc3SYej32lwoQ44HcapqM
	 eBXltS56HdmaWS5lM5Y2V6R80tmJwilKYnZIjK6V325q6Jk7tfZ+JA/9H35l/3m7W4
	 m8AIiD38A4FivQEimey0kCZwfaE/mMGkFdCSCIJreuEQyJiSyVgZhzFtKCjrHnhtZv
	 P6Iy9SLFEQknJ/TNDgjtUJ3kfRmH0FhL0fboiwvneZ7+owJPvXomTAWFFTQy4quVVL
	 BeK2EsmUycUnX37IIVAJKPnR9Ti8/ixysabjJ7lvzTNPgT/Dr/9FfxMpVjm9361tLx
	 Ka5QwcCwDOxwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D96CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221139359.23544.12109964307102226798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17d903ff572280ccf3c2e6b7754b70d94ce04b8729925623ab2c57d4e7d7422
Date: Mon, 03 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762211393
