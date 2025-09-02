Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9D6270572
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756802994; cv=none; b=sj9D+YVHieoRa/h7WJMi4BzfrFMVbhbOfmNP26W/LMZSBOTg+47H4jmG4U++XMs1gkGp26EmXBLq8j+idlwKA4aswaYqxlDCvwHf0ZRnneaGDIzm8Leufd8cJLxDjYrJQ1UILgzva42TbvOxbhpQLQhi5GPWYzQeCum9eth2+DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756802994; c=relaxed/simple;
	bh=AX8hVx6w2i/OfojRsR3l/TODTLYzK9/qOzmPvzp9eSA=;
	h=To:Subject:From:Message-Id:Date; b=AdumQtPs/pXTJ1YIolQh5ZMyl2S4qxUJ+LZ48lfiQtbyCYPS+nT02L3SqnJFekP1gCWGK6IW+gm3vxsBVAPT0fhx+T9xBddJW1FeM6D0vdMvJUUr2j/TYgF3O8YdGC55KPZDIjpxWCgYq4Ynw9HycjqWX0ZXNwBLrxS/Wvq6y5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWEuXpTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWEuXpTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BA7C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756802993;
	bh=AX8hVx6w2i/OfojRsR3l/TODTLYzK9/qOzmPvzp9eSA=;
	h=To:Subject:From:Date:From;
	b=iWEuXpTVYNm4pMXqSZfm9HCadqsbht0IA9PWCkgpLkTd1q4PimOYEw3J8u/PI353C
	 9MPsaShc0IfTM55WnQNIJV5zFjrpQCOUxTpuA9mJP0El0ByUgFJcRPo0vvqWXPu5Kv
	 2/uZqnCNpOTOV13Kaf+3ySc6+jsws6M2zlKPqnzzcxYeNexTDtjsSnGcEK32AS3x4R
	 4p+cbfz9ATkWuqseSqZyupEHFhj1w0Mk2uv1ZWVyHNRJIpWvIQs7C4t45mrjHX2Mms
	 jkxaqqrDlHyyslNu0ZnWJDs8X5REVIkIKAurqauK4vn2oE0zNolzd5z2DCP/O9v47Z
	 0OMmOP7/xh3FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA4BCA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680299357.25283.15752650544059133377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff78bc066265f7dbba9661e035f947e97d418bf2f15c042f7b2e44b272dc0aca
Date: Tue, 02 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756802993
