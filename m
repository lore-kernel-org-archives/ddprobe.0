Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D0D1EBFE0
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790338834; cv=none; b=oAsmgYUxp5/oTDN/+4ss1YNguzss157pxfd0wv623Yh6zzNLVuqCF9UJP9cqZOYLXQvk0qel3/kGbbP1Ditn0qZzGpNOwdVyL4f8t8/zek8hyaBPU0j2MrfVSLqLcp7MUN+1gJzBZuvFCYcPyolXRqNYDWYYU/IgTro6P6UslFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790338834; c=relaxed/simple;
	bh=91ikebM28V1qyeiQUmZDqO6mJdwIjQXK2pY8mPLgBHA=;
	h=To:Subject:From:Message-Id:Date; b=QRNpSjoPhiz3//p3SefWjStKzGlMKGwjyuEbLHOw4e9f9URzxCkjwsxJHWRjhRrMTgoYFWZjJ59PUWZA3xnWRw1EScfPMDhLAbUqybZPGN0Sj6sq1pQ6utbKmyQzLwr4OIM4GQm1uW/l/InoAJIRsub+pX4Yyf+qLJs0YHlWgfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffX1WMa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffX1WMa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1D5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790338833;
	bh=91ikebM28V1qyeiQUmZDqO6mJdwIjQXK2pY8mPLgBHA=;
	h=To:Subject:From:Date:From;
	b=ffX1WMa8rpPdaax3CLAtPUc1Xm7OQR87C2P7eLkagxni5uMS9/q6sqt5yxW3cdN+q
	 ZT2ucmCuLCOhjsheOgDAWIOp4dsDZZMI6E9g9jiKkQxuB+5q9Mzm2KyyuR6Vrzd8Od
	 Y3ui4218pYRFw4CdsSvYLqqINFKsU4hQT6FgN8V0m6fJ4EFCV+BIHvmi7w70A6uv+H
	 ORFJ6ulb1nXsGmUEIytdSyj8OKqeoR55l3lyDOectambOarWkGYaecyRGW5CB/w4RU
	 ABo9ux58n2mXMdYxQADsIwXT0aZyv0f+wt0z7FHCeMDnPDua7bBIgJTnXVwkUbYZ1b
	 RudYG4QgxORvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4E3C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033883369.22200.16696193540860291567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5e0762b1a4a6ec0587f5220602720eca205b004bec6df5cb92a8bc689b595c6
Date: Fri, 25 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790338833
