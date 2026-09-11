Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8E81A9F83
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789166434; cv=none; b=GC/N2xeum5FcUXKkhdwa7w2AQeoqfxyaHl7+JBjcAMkeZHfpzUsTBFycRNi/TrL0ff0xn/S3l+fq9L/YCx7cfsDZzR51lv1lXuEYefM6aYB2/1Z35QTcDN0jRrtbcxTwjAmua2aTSr/7ghPl1yybqGpXiFIVKeU+DyqrHqdjzcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789166434; c=relaxed/simple;
	bh=F0YyJQtmcm1OXfpO5NeYPkTLn6kizj4L6PPigo4bX28=;
	h=To:Subject:From:Message-Id:Date; b=GsNUa8YaV/2nvEQblnt6rr10McxU0bUPIgC6xORuvxBhvw5Sh/oBNm8B0q3EBuvntujZL4cKpyVD6M7DLJ1fYMqA6yTjzWfmjUYiA9YRFbNunH2mUf7vhBBuWSKFHTVqJCGhN0h/3XfzMev4aDuWnpMXL8LYtuK92Be8ap1uxcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2CSryiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2CSryiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA79C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789166433;
	bh=F0YyJQtmcm1OXfpO5NeYPkTLn6kizj4L6PPigo4bX28=;
	h=To:Subject:From:Date:From;
	b=e2CSryiz0ykVw9HhBjbr4o66Zl4LDtYz1QuUgtn52+AkXAnv1ur6ma7c6gKRSPWsm
	 Mn7b1lqIP0bdZXGgiz+vc+vUfKfqvTdRM7zGMHBqVeAqzEAKlkYsDRGQgvHCimiSwC
	 2GajwiaTmoGas0lXnIWcrk5Hzhxm5PqkS/1ig9XiHfnNuF/xPE4GUm9lx8XbokmJS7
	 cFnErgYISPYxGzqULJf+e6UMMxcq15Qkloc1O7co2I1ebTzob565sJiIfsGZGDBaiT
	 WXk8D2K1e99uZqdCw5BgmGwN1tOY6fSKmXF02hMmNwGhgn7gExdWQd+ZdUKK9QDnZa
	 GEfZseLx1OCYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4D1C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916643369.13545.3937372533704437380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd1db9758ce3b515523e549a96537fa8d9dc25fb3ef45e9da6baa4bf5af4c0dd
Date: Fri, 11 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789166433
