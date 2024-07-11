Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856BB19F46C
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720732643; cv=none; b=TosaIMerhuxEDf2yHPU0VOjl8QhuoLUO6yaH7m8QWY7ATkUkWUiRpvsHejknxkOw0EG+k7lKJyYorc+rT5fEVVFJJRDOTd435nopxY1dkLMsjaBJxD7c1LqYQyLyDAbdWynpPjh00/KZdw018XWwx+1mXl9+u+1+r2xSB7v30I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720732643; c=relaxed/simple;
	bh=S7pZW+0XvRA4/OEKs60nU1jK23RKpWzsuCE5xft5CLQ=;
	h=To:Subject:From:Message-Id:Date; b=pOen8rdu/eVWIFmYkuTglr3wgl0jhcAt+wxqYL30jWNeCafuTbH3/XWiwWKXwz7/6Qs8Cm5I/SNMVtE6KmH5N7o7DEtEtuXieOhIDZIQUvpJC0DXDNNKlN7++guWV316Hb0gcoIR7sLfNCvfoeZNjhQ0FCXjXkvmG+BW1f/fYsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDO7C9yN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDO7C9yN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3A90C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720732643;
	bh=S7pZW+0XvRA4/OEKs60nU1jK23RKpWzsuCE5xft5CLQ=;
	h=To:Subject:From:Date:From;
	b=HDO7C9yNYPb3FagqsxXcusjbFWpzcED2ITaTKOF5zcB31dGxgww6seMKJ3WuWJuGf
	 lnR92hdD6aMBnjQdrCVgLZBhULkXuApGjdcCWR1jc1Wo7bhcsL1JtyGOencXKF0kqG
	 POjCaQk7pGgrXhkXkW3iio5vtXCFVpuJyHk+lzdD3j1DzCW0fht3aB/DXJ8m/083ID
	 C7KfH8Q5QkTYF3EWzq2v8tX+XNw/aSzpTrX+bzgm4tvYC/gdNTG0bJbcSXIsB+HN3A
	 PAt6KIIw9uAtxkYLpWzk5GoIpE6J8PJyfxzJp5obh0/+D8cgezJO1pJ4HbTEh7JunA
	 v1FI5/uMbt1IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE61FC3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073264286.22514.6720515330687019326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f3e171d301795e7d9d5743e7f7411b66ddc72cdbb0074c968b275842393ee0
Date: Thu, 11 Jul 2024 21:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720732642
