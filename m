Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A78063B9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782952114; cv=none; b=MBPiu7TvKLpkuDl5vmjEwPae5VtqVt3n5pDa68sNb1AOO9cuTe+fxxPdC4JtP2lPfQlm+CFhqp+w3QBHBP1EP6DyTdgEPCT6O8xjbkFWFzcpszjumRCKfVBzfiRGh7nZIKOJpWH25Eo5Wxc9oNwbTt9T7EtzgiB0kQWlq+OFzoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782952114; c=relaxed/simple;
	bh=l6VO9/TfShTjq0aDMhopUvkWWm+AndRfQ4UGGfcJfNk=;
	h=To:Subject:From:Message-Id:Date; b=I87XGpMq+3kq1VETu3GdeTl/MeCyAsh2y+/IQ5BHu2eCYYUokJRdssgUsrh8hK3u/f5mkZSsFzoVh+uVphrr1DppCg8GUbpVVgFr/oJ222aDRqhU9kRJW2s3pTKpymph+KvPkZF0pbGi8QjKzlZJv4R6d5BqPb+OWkEJ1K5GCPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCcVYHTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCcVYHTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB78DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782952113;
	bh=l6VO9/TfShTjq0aDMhopUvkWWm+AndRfQ4UGGfcJfNk=;
	h=To:Subject:From:Date:From;
	b=bCcVYHTiq+o9TYvED6NkbpxGuNPL15efH4wtQmb0O66tfGGKp8ufHvwJXfqNzcWhw
	 9x0EVpa93yyHLik7Px9h2BJiphu53XmQMmgs6jboMxcQrmOgKMMmDB4QbZUry0vjda
	 2XjaeWyyFhisU1YWpOliv+xXgfaT4dFdPnK5PoToxao7FgX8yROXiZlPYzcp4y71pf
	 jb+NLwNEkPlKQjYZGwq1AD0YH6QQv1egd10ZHmQy84zNSGWaQS1YJtn6AhPT/s2loL
	 coWXq1be3rwUwVDRb+lTnrj+3K5l09Vl5zuy2yo50FRk2tu34hBIvGRL3EHdaLi24B
	 /EeyOMMKBvF+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A984BC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295211368.20489.2824862102708082420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b94cc726c2f5b39f63bcec0feb944e5568590c81eb8e3fbfd208d626c256f77a
Date: Thu, 02 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782952113
