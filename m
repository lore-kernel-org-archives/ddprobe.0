Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416584C91
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732937754; cv=none; b=ddSP7cxuGn+WimZjJ3pNRqsnphhbNnCZrnCyy6QJVsrUQOeD4SeDjc5aUilk3FQpIQgp09nBBV6E2IRlD66s/68RUBjlRF4iDvhJwm7lLZbhFWrcjrz++eKD93D7rm4Z0KuakvZOZvgNzAWczbaF6c20m6CY/EG5YU+wHVKKJro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732937754; c=relaxed/simple;
	bh=YiuBThxZqt/yJrIKJcYesNZU9qxbvn4HGLnB24Jv+4U=;
	h=To:Subject:From:Message-Id:Date; b=XjpW8ieyCZ4KIlIPAUNZtnMLVqXRywP/kayyzJzSo7YyHMAByhdBtN8MfcUv2OAqXjybwOvXvIvuL/hHT9lWzzcLbph7lzYnCTIetB8496OLaidb0Ti4HSSCLnndWiPdIJXwhBYhbKlEUsqPqAF3fglLygKIJhi53hiGMLQ/eAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvoxnlvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvoxnlvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6434C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732937753;
	bh=YiuBThxZqt/yJrIKJcYesNZU9qxbvn4HGLnB24Jv+4U=;
	h=To:Subject:From:Date:From;
	b=gvoxnlvSITW+NKbt41Qff6d+c7YLuUKMGb1DaukhAfjyJct5zonxMES8z+I5Hq7jF
	 opHBpGr4NRTl47ZrJ9bwtERhTDU1DRYFtHNlpTcwEfqzBPZqnR94uQUgAe2VEhT3L9
	 Wq7+J1aw7GHUbClrd0+RAcm9Av9QIVmgzyfsNVLrGU3NiVJlZTgAxJnExBc49emlAB
	 TRSSRlfixn7HNIhmRoKfgqnzH4hKF2n7xEX5Z4frNWojQzk340n+kco+aIX2+W9D1j
	 oOKF8KBQVLdEKItk+0XdtnP6aDu/kz+zaRDLxdSwNnHFk/VkCHcjkE0VLnBrCJ2JR9
	 lGHgBMaZ3pD1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C14ED735EE
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173293775361.24118.15983464619586164773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7619ba3e85af4f7c9c70f2d0b15da2a7623d440d295490622e4df6d212099df8
Date: Sat, 30 Nov 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732937753
