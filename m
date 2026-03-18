Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDE2243964
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773813294; cv=none; b=dYrQD9q2fw3esxotk7Yv0K5S5aDOKej1W0bK8De6hzajm0JhOZ/jo8W8i3TOCytTKji88aGr3ZqlxvbMRCirNlET+YgzRyCnKttlpOM4s/br6vscU9N1SMHpNtEudDg1jWLwtKJKAfvvJGGVxz1lrfy3VzS+tNLp3764i/uRXJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773813294; c=relaxed/simple;
	bh=9vr2nz/94zxvZVF2wSrV9n5AXAYo/09E1BBq7dicXJU=;
	h=To:Subject:From:Message-Id:Date; b=tiDf9Ua8iR2iMMqDeNx8jTfLhjJ70eqtEROI1nJz74L6Et+yMOb5t4mjEYebWWsl8lNoDfF6MFwOTL2HS9wZ+PxLtNKvFjtE/4KkdPoqQPp5nA0WxVTD0DYV98p+7iP/so8JY6LVHnEWiEZO6j8kP1z6eS+lf//FWG6pGyBDxAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tl6db3zu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tl6db3zu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D907C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773813293;
	bh=9vr2nz/94zxvZVF2wSrV9n5AXAYo/09E1BBq7dicXJU=;
	h=To:Subject:From:Date:From;
	b=tl6db3zukq6c7tX0nBItoi3CBQ9/qYaUAn2F552Uvj5Nvj6Wje/Paq+lEGwJWUqm7
	 buwABxQQFBM567/FlTuY0OgOMf3P+WM87kE7rk3UMTbkYscWNhxQw5D+AFBbQ0xmqv
	 aMcjqC1ZFT/Z2SYzDCBodggbvW5L4NaEISFR2/A2jvj6JW3AkSTODuB4eqGdLqTwHW
	 IgmIW3JRyUnj2p0LxuFsdcDv06zhIpxE3XtKeKaYKu/kgeA49K19k6n1NZqRrM4dbF
	 JCYJn98bOMKP99wZL0ZRiLW7bc4sBzRmaNYvhUWeGaHfrs05bkIy3p/Adbx6iqBjRW
	 kI2GmiFSz73rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46CFCD0AD
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381329357.23884.2027112328905811257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3252db1078a45823f2ed65f088333c3d70b5342f8627efb49aef6346805ef0
Date: Wed, 18 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773813293
