Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499A419D891
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 13:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742910595; cv=none; b=u7kkkeZ5G6fmVd46/FDk+i6jpliNjKJpwNILTSeNKeJmSsnOk7K7iOU32Y8dgousVhTUVXV2tr3Fj2hyW+zVyvBfufQPhusMTYn+k0b7Z9Nsa6FVa/7AlvMaPgj+0ZFKsx9zYuc9uyBYm+E3Iv3dSRtTUc5Mm8KwVjnfv52uxDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742910595; c=relaxed/simple;
	bh=bT6QrEFmsYvysoaNQg4GtK089uFkJkC0QDpJm+HjR4o=;
	h=To:Subject:From:Message-Id:Date; b=onff1+oCdPpBZXe9fcO11RpiE3Xa8pVqIXGR1sIfMm7FxijmOq6sYDz4Y/dJFHYDbXQiEugsLd1lioYpAAAUPMvTx/2ADXIhalTXygqxwTnX/V44qYJ/VJ6SMw5bjxQv/mbF6cMN8iNPhZdYFzLNNjEdX7XMHlFAqZCsU3SZVjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKniwSSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKniwSSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF266C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742910594;
	bh=bT6QrEFmsYvysoaNQg4GtK089uFkJkC0QDpJm+HjR4o=;
	h=To:Subject:From:Date:From;
	b=lKniwSSoOmIX3DkCMaYft5GC5SwYVxNVYuShyUz1uFMrkNsBz8ZO71scIFrolYVsB
	 OZnBGKwG3J+QgckldWVRe82/vGoWQhQmOisFFAWzLDn2bYAC2AOs2RqgSfgtD6mExm
	 cOkTlXS6dDPV6UnK2AmkrlVzVpxzoVwYdpES8xXJQ3iK5XqEgnBhPMn/oqF0tN/H+d
	 35D9uKRkU46lm5pPNnxtn/M3X6kfo4WpvZIy3DUlFIN3YAsYGaF+MsEeeOPi3/+Q5R
	 ZPJ/GLRXSSwNx0Y7qFtqac4ZciutXjfqQfucNpOTPXg63FtChoNUXFesoDLyAQ+48A
	 GAxgpl15Oc0Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7F7C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291059362.3210.15195491743714260731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81d9c1b401deb750a24257df977a21b89da8b76eb3d4beb5f3367598713ee6e
Date: Tue, 25 Mar 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742910593
