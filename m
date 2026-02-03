Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27865361DB0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770147834; cv=none; b=uhzsCFFT9R0ONOpOIl0FzpX+BaV0PBuvte1kB4t6678DNVUTXh3dyyV0rUNiWdDGV0nRvslv3wK7lxG6xBTumyHSMhmIFW9p6BalJi1FZp+9w7vyM7HjjzrAjpR3QoBO7YfOuIgfWSCHhSr9rtCgRyjx+yHkcqhcnU7hfAsRaho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770147834; c=relaxed/simple;
	bh=5kdPSubhdgX/IREAOHgE8iXE3DR6C36EnuEmYhKgiew=;
	h=To:Subject:From:Message-Id:Date; b=DodAehfBIYAX/v2YbfF4RvxsqkbeP5I3cI1SyK+oDUdXKRHzIe4inVpmj7HY61Di5TCE959xp+Xtv9FPaCKNdnaDhzJSUqdtoxrX9sPGq24rsa+ng7ArJxGTiLboT3nM81cHBGdCMZuoG0dCz61/Tq/ypBMLxH0hKLc0nIYwLrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaTOddGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaTOddGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A96C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770147833;
	bh=5kdPSubhdgX/IREAOHgE8iXE3DR6C36EnuEmYhKgiew=;
	h=To:Subject:From:Date:From;
	b=IaTOddGrWbwsmhszYHjewRPKxXP/PlWtvaUEgfP4SMoEvk5ndaXQwNyiEKFH18xSU
	 1IQe1OVVEuSXZXBmh3zZw+z8L/gU0EHhNQnebvDTbmnRI0/ZDvw2FwVwJWA/Up15+i
	 T3SDedV2lIDefh6wxgbKt1/P5Hg1XQlncziCuto7nl6lV0X5I7l+2Ad2RYiQScHwPc
	 MlX6mKd8U4UwKZ7+Rnjn0Z1eeprTwLBZD/k9ew6Lp60YjB4H+Q6yleQu0IXjoO6P1q
	 n3wS+01FOxc9Kvqkto/HLE3lx90DKY/0juoXNzcmeTCITLAgudfZ0SQn6MNk9Ub22K
	 RonqrYG3oBQuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03BDE8304F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014783361.10804.16746394676537398254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afed1c3a52f4534ad0798839c3141eb2747d172e52129394dcf2f697e4b4e4d6
Date: Tue, 03 Feb 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770147833
