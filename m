Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4858E63C
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732509354; cv=none; b=BPAe+ndFPRM4tJWM7K8UGd9WKBg+VsZvPCuBtAYxNLdMCgLfhvHbPDOxRcTvyVQjKzc/eICx5MKLBLhyrkooHWKNFH0jb3V9B8xszfo9YNJoaX+GqLBoWByWSEhrBpGOFOb/zN69JUMzLBzYK2Xh8D7xaf4WJzJN8TcUMFfRG2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732509354; c=relaxed/simple;
	bh=9xLgZydcB8DKd2YXIOtYr5Ns+AySCxdRlfY6riKQM5c=;
	h=To:Subject:From:Message-Id:Date; b=h2w/+wj8ZNuqDkZXMdptwS0ZW6/zUWTkTGBzPlFb7nQ5dv67ZekN1V5QxJMZ+aQN5NJZWszPn883Q6yqJVOPG1N3xOPBWB0bVqFnsq4NF7/cb0ER+1T64KQWPo6eG1OkfRAWB+brjX+M42gQz6ERgMc8tkkW0GmsfBtgVvad5qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or2UXMYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or2UXMYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A14C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732509353;
	bh=9xLgZydcB8DKd2YXIOtYr5Ns+AySCxdRlfY6riKQM5c=;
	h=To:Subject:From:Date:From;
	b=or2UXMYPsfmXpwqXnjvTOZLrDoxaoj9XE20CX1kuZEWKCSrl334HOv7Kmv3TOmq0o
	 LEPBs6S1XE11ofeb9WakHxdtiVcmjsp3FZP6jpZZdE4cF1S72GDeEJDS1Rfnp2gQem
	 K/WQB6iBcublJ5b9FzRFaLvqI1g10qB5sB2k/0ATNQ7UZF+PB+FG3ueK5fphC+zONP
	 FGlzUf39lQjGy1RfE/SMoXmLoTY6WAuX7pbFhYscA17xqkyduGwgF4DU6pdDGt9rbX
	 6rWPd/nOzsN5/PNdwXhCOsiwTlyrVbuwe4fVuMLsY6lSyKzpFCyO8ifxfS231m6CFD
	 cchlNPUA/20UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB77D3B7D5
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173250935361.19408.1485216301737555718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f53cc063b67cedecb2774e3f57a6c03d35b414876a8b99682212730f3a9dd3
Date: Mon, 25 Nov 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732509353
