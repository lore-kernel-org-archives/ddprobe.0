Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1381FDF87
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729071353; cv=none; b=jjhmGYU/7mTcERNtWRqdo7a2jvWM1FwoVEbpoFd4YVUls/kohvTde0C20eJsAPbm8mOLSrTwJSGHUxwJ734QbFNkviBW5NI/6lj7dubEnCvhe1XXF4b3eLcB5rBlHUE44bMLfDB4XFcU9U/JS9yAyWlO4hjilq3Z6m9XSU2wyVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729071353; c=relaxed/simple;
	bh=Uq7ZCW6Gq/nX5WJLjb1jk22aud5TLITSfD6bTX0uI+E=;
	h=To:Subject:From:Message-Id:Date; b=uitYiyWwkc7liH/9cych4HBnEBE9lQ9upXEx0C1gLz1puDHhMNPVgbzOorScxq/V9jVAZVM1KIONkXZGizP4Ha32h8dMgAOgv3jSQq8fPfZy2H+am+3gSHblDd517Zx7+RCnz18U/8l8RkGqzp6GuOlswTx4XpT0ibsgI53gVKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGnwuVsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGnwuVsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1761C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729071353;
	bh=Uq7ZCW6Gq/nX5WJLjb1jk22aud5TLITSfD6bTX0uI+E=;
	h=To:Subject:From:Date:From;
	b=SGnwuVsWzezY/k2mOdDxsKm5I+SBwYDHhG9MVnG770Tc7tBBv4WRPr2d603ccCOdD
	 r1IcC0KBYffv+JtAaNZtweSZlouMzbUUzaGIK7KcDpMimFsmzou9s8mMALc9UQdMZB
	 1S/c8eK593y3LtyWZjIEJ+Hm2t3/1cJCHiQD+yKje1dqMBNC3vRFmkthEnzytBSVWT
	 TSdsP3e0qDN8MEb6/fVrG74DAYj+QJQc69fTRvyhF4Gpytv8qJHuFUgOwjJ2N9pr7M
	 RpgodlLwEGT+31I4pFXVPgm3Prn1Zm3xqJbGdefkgVw2ckyQsHBwdWfr+tPPm8Jtfm
	 JSeSp3p7U5WVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92752D1AD38
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172907135358.19737.1894148094332329750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8fedef9f53503e235e2ad9616c17453c63ab69c266510804e7311ff591e2c2f
Date: Wed, 16 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729071353
