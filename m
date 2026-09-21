Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82672BA45
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789955434; cv=none; b=l4s/fxYHXnXiBjrGt9xheq7dFW3POr3jIMOnGxwTr9SpDNwCAnPMJLuTxbe3gfC80PK5yi3x0jOH4eElzJC2us7rvEcvqCofZGFpDjpi0Zm2O0zVhvkuYglF1S+dEl8ZJLoEjRviNX5gVDGp+KDGU6hbPiB93cmnImst2exQ74c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789955434; c=relaxed/simple;
	bh=pIevzCi74hqokJK9jJVo8aD/WZXkBiHgtRHS/4sd4q4=;
	h=To:Subject:From:Message-Id:Date; b=BaDnqGv3JDRbXUfdRuBBSmzU8CG6A9048AQVFpcteiuk0hqJ2fEX0Hc32pUAv7mo/v7HYi2ZwMaCTBwYJFHmJRHv2W2hOKJydnAcNCtsgSoV70Od1OgA33UlaOwTCVFbOmT2nA+RZh4zDWRtiF2subg732wFKkGEd64BqQHknco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2avrI4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2avrI4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1F5C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789955433;
	bh=pIevzCi74hqokJK9jJVo8aD/WZXkBiHgtRHS/4sd4q4=;
	h=To:Subject:From:Date:From;
	b=d2avrI4/txAAgXgLGTkzb6cIyrVd4Hc+7u+pRRTY7Cv39Up0DC4QhkVEwqK1dc7Ph
	 Ti9igJn3L2J6IiHkGUBFOMOpqs7jJLxJEQhXErEJcBOwOXGRBf45P5JETg2FOujRHS
	 PTrnAPavVNYP3yVUEXmL0xb2X2TooH6HD0NXYoG2/y5u/OO7MFk1yb7W4giPCWmX8K
	 w+3qgnCvYWzSJ/mDVqm1An4OSRN3Cu1Bt74gAhUE7S+Yjx23GABj/H76D5iVQzDd2h
	 lVr+DEhb8ygySvq/UvTSByoOO1ybI2vVDZbyIJeA1CGT2yDPlGgnrnNljMDFDeeJip
	 0G0MF16lXlfjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA31C982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995543368.26946.17996277481547661509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3633869700fe3dacb5e125371fd7e3c9085b1e5e427fb8db91e05b5e6162310
Date: Mon, 21 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789955433
