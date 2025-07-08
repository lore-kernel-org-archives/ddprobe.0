Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B4D241691
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752005994; cv=none; b=s4c1aw0tNdJMKDnuXt2y0akMa7bl9q1ykNM+5xyJAJ7WK2v0o1FQjXu5EpSvraUdKs8yUJ08rkdgCJ+txp8b6kKIsYVML3xyoSYbSnU4eGI7Oiki79kMIjoUE9BGkVe1jnWnFphhTa+0IZ93ZfM/fUXffY760MnyRtWtkXzGs6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752005994; c=relaxed/simple;
	bh=HKsQci7baF3G84cr/LcTmieMElrR2TZB1JJFgApT48A=;
	h=To:Subject:From:Message-Id:Date; b=bmh06MJTXXkMXZq96HU7NDsmLOAzm+YytZf8SkIISnKE2XcMa0WDFxXGk4rywyVYhCPmZNPhE22n3vxhqufsVIqYcSM5vtKY9WdTRkOqXCqDUOiokmai2EE/JAq23w7cPLEPKn3ifHjLssxevB0jrir6ekPyP7tc+DkbQDfYdhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLBgwEVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLBgwEVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F417C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752005993;
	bh=HKsQci7baF3G84cr/LcTmieMElrR2TZB1JJFgApT48A=;
	h=To:Subject:From:Date:From;
	b=lLBgwEVGUzXZxYYSc3zRq83iWkBZtIUF5olmpmQvsNKJ7mGxdkpN1UJQwA0odvyse
	 tj2/Y7m/AwbRswN61/5wQpqC3NKl5TSWJsUOs94dlLgJB+vl/jZ9JdBi2EqBJBDeWo
	 aII7dwCFRJvBlZvdpCSYwKZEwWkz964hp0FfdWJMa8puayuDzwIfe1hq496pifN2//
	 0WE4DNlfCi3leyOlDRHF3cd0wKRH3k0qxoLXeaTT7XPhrwF8jCE2NxQc33+eBVG7NZ
	 ocp34OUhRr7pe2Y8KHUE9bW0JcL29oQpWcEjefNCswlcUCy/b2I1HABtLdOwdGZrEc
	 y770vlrGohQcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9022AC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200599358.28673.16321140946794580851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68fc6fe5ab3ec59be4a45c3d8152cc225fabc4e33bdd2cc3a8a39caf09842d98
Date: Tue, 08 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752005993
