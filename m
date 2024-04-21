Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E54F205E15
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 06:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713682223; cv=none; b=cE5x50dwieWhL1g1wuQMMo6ncjI3BR7jWp5aQvxkrHiI7777ZQORpWwas+X4/9Q2n98T6LKzmN11L4BRcUo5VqU78eO3++USX6QcCoxvZkV6Xqfe4ebXhcaLzqjFmpR44O8PmyCWZSlgJX6Fl359QuXOGLIoYm5fjeCXd2HWDys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713682223; c=relaxed/simple;
	bh=i1Crgg40b2bGuxulXyiDzbRMcYcePO0WrRQq7sgU6xw=;
	h=To:Subject:From:Message-Id:Date; b=Wn0zl2OddSRBwnnOf5Wb1VdVTeZdMdRpPp+6HDKzKQa/0AINN3RolB9BweQaV+i0Aq1v3ahQlOJXzli1/ET52/JOQo7mYQFTRc0R0fqfcjNEYEtEeAiP3zfri7UzJ1yQiJwBt/v2DkGUWBxeP5WP3ONvfOOQwy7QHSBoFS1ppqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xa253Kdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xa253Kdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E58CFC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 06:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713682222;
	bh=i1Crgg40b2bGuxulXyiDzbRMcYcePO0WrRQq7sgU6xw=;
	h=To:Subject:From:Date:From;
	b=Xa253KdfLIFehUzA44cskWcFtbQah8+ntRntKckQHRJ0mz5AUQPsHnpP20wWgPCB1
	 gg5N7rBK9Bginy3jns/SBp4m4Tlkf0XX5oClkCPgqlJxUMsEtvgzyn0j8UPvJHM75x
	 2MwVkcIir02h0NbhyCSwmmI5qWVfjfCTtkR4U13wdjbYS+DHE5H3KLs9smxU6alzp5
	 NSbDk/pbkJE+6r7kouGeV9HLHEF+QxkfKzASb2Gz7rlM9b1m7foN2owCt/VhSGp/Gq
	 B0kmh9GvhR+XK60qXw3cu7KC1uqn+sfAQEHtTW09tug3UQNg1gEM1ka3WqGQOXqS5L
	 VbjpOk0XQMP8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF9C4C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 06:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171368222281.25679.8360190189563690253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d697292ec1aa516dceb361761338f62de12b918511d5d25d1ba29d56fc011d
Date: Sun, 21 Apr 2024 06:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713682222
