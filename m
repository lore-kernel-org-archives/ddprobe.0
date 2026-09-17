Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FCA2F8E91
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789607434; cv=none; b=ryFlMI+TFzu59oCTeiJNCZcBlDVe6BR9YVQ/Korf2ydF86dL3uegp62SkCYC9gmAsh1ItiqfpYlPGFaZJRZefFHSIXs++8FV5LVToLrW5rdIO8bNY1jU2gGlgwjylL29qsif/jN9M3zcR+nhcjpGJYwkyyxun2KAs/iD7yTSKyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789607434; c=relaxed/simple;
	bh=b+bS/mDjNHPNXTi4gxJEEn7WZHdbVgobEfG1lXRpOqE=;
	h=To:Subject:From:Message-Id:Date; b=DW8mSh8MnEu5BBrZ/JqYCqoU/F3r9/RutCGgyvFJsoNiupJ7JpgZDxRSFZRKIkvrjsuu677S+j7w96gWNNL2Lq0IWKy1btJ0zUUcZeF6JoJHPJyEzv++PYpYqB9NwjO7AQBZU7GOZuyM6gL5aerNwDCv2HfbNn3paYUjdrTyIxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/gevDZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/gevDZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0135C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789607433;
	bh=b+bS/mDjNHPNXTi4gxJEEn7WZHdbVgobEfG1lXRpOqE=;
	h=To:Subject:From:Date:From;
	b=R/gevDZ7k6VMSThUR9DXaOs3iBS0PiNL57Ztyl7zA39aR/Yw/qfNzmjCWno2Zww7y
	 be2BsEMKmZodafcL+AmaWvelm20Re6pIZOPcJM2r0kaFSCNc3WApLbVkTSgnlNTn+I
	 a/qsPBnq+lZLXTUT1Ncv0SMEnemnm8HR5HAocDwFroBc+7bvfSiBr69pxxKnMraddf
	 8kAu73inm8p1u87hVNNjJ12MlnQn5k2Q2Bzp6JpBNUxI7bW7s4C6bqn0OQ8KecBDv4
	 XZWW47ndZ63zPZa+o60gl3zdhNkztsls7QN2flXT9z25et3yed/Ft1KbdOfo+jVrcZ
	 PDAoI5OnUuDsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF5DC982CC
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960743370.30540.7289683967007254712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473dda2c6dab6dacf9851a5eca47415c1b9edc6666aa17b218d56721a02cc90a
Date: Thu, 17 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789607433
