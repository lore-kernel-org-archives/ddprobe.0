Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AADC1CA80
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 04:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714622543; cv=none; b=gZ+L5bs0KwWOXOtn6L6DZ5VchwVOWASfG3rBlBcpou5gmGyXJHwpk9GsTzxDDEjqxL79xchMaKFrR1IgtpF05r3ML1dPy2CJDQ4tpmeWcy7Y1XQ4t7oj5e9V0geyxYGJ+n8SA/l6152gTYZpiNiMTL15LzY32Sry2aQwdIXFrus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714622543; c=relaxed/simple;
	bh=xzRNuk7gTj2WSmmOG2xkK+CvRRsLt7LZAsqa7kGGwNQ=;
	h=To:Subject:From:Message-Id:Date; b=ab7DHVaI1+dyKGMAoWmyNh3cUypWFm9lvUrFqf44jnOXz4edZpkqveDBtjLcckqep7wrB9gTkR58iSNYmI+bTB3OzH2+v8WYVike3wW7I4rav/qwI2h9qOu4Xc7kw/o7yqMkOvhfk+61QfU7tyjfVZdrvwhBC1Uzi0zc0y2bzFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gb4KDwOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gb4KDwOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FB5C116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714622542;
	bh=xzRNuk7gTj2WSmmOG2xkK+CvRRsLt7LZAsqa7kGGwNQ=;
	h=To:Subject:From:Date:From;
	b=gb4KDwOIRSOHDMKnscUkxmGYamJMFcLE9nugRjrvB9eY6p/uFYQtPdDw9hMu00K2N
	 qIrBbqAhrGsJ0/QdjDvyqVTh9HzQrFvuo3RaQx/2QxSWFgty214qWLmSrmUB2Z/08L
	 2md8k2Qimi4spXO11E+PCTWe49xuLAuA6hH1J9Bdh40L8OUHlSBGn4i1Y8iZpLPxCK
	 z/dfPMuSR8Sk7KjRIdQPU3JgEbKY5JHTOQc5e8cq1HKoMI18l9Q0+a0r6iQR5XjcHp
	 /JRDa/TzAlsJVEcBBfB5ChS5+PU4Nzokc9qRLoC3kmaVPkZ+QPrlymkRlgBTf8rKgA
	 e4F3H72b5mY7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3314C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171462254279.13739.17277023794331619920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cea80bbff20ea6f14e8b1cf3d464a9aa1ad4e15daabb20d95e0cbed7139e9d7
Date: Thu, 02 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714622542
