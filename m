Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBBF231C81
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728120354; cv=none; b=MuuXtdkfqqBNKkEjkS2bgc2+ovyKZ96cJxLgNK/cHb719Sg9BGO+wZTqoDUeyYxDVqyVqGQgAFH6wUPbKxSuN9v4zdOir/BUQCR6uIL+ZN0JFRYcTPfTVFpOY9S+VUvstJVtGpj8OEPvDQ6s5yKAHKxCzZFKsJAFUNMrAqJ0t5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728120354; c=relaxed/simple;
	bh=n46rlFkSMpXGdb7iverdC5KlEZxG+t/RSmuXvnSGRdE=;
	h=To:Subject:From:Message-Id:Date; b=cnTfkvTap+ibPjN3CLpP4kbHNj44XHH4rKby4wMHqKZaJXo1bQiWw+L8q7CeSFLHDPxsYeLVdA7rcx55gkB6sbNapg0lgvC2dc5uOPQ3dh0CDA7bc4F4OuoLiyj8eh6PS6pK2rkI1y9ibyGUKtEwu2+3GmOGOfmd68hlw8lsyhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUtpIq8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUtpIq8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCDAC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728120353;
	bh=n46rlFkSMpXGdb7iverdC5KlEZxG+t/RSmuXvnSGRdE=;
	h=To:Subject:From:Date:From;
	b=mUtpIq8+dJf8W8yngL9vw+RGmdCwmRX+eRAyloX8px8gs7HgSJWS9bizcGvRtC0fX
	 gLIsEb45YK3Y/2wWr0R/jUENmCwCeFLTyHvID+9Bd9vB0R2pQZcMYo5G10v3NgaTZV
	 Wlqwfsk5RV9iPC2uIdY2k6O/zw+7iHmx7z5JdF37DHZlj93IU2CmfsjBXvYyTkE/dU
	 +yUeFtgrjoBcwrfT09X6pNUgd+m1jmKVjGmJiycWaCXB+L/tfbZ326Ooj49ujKSGot
	 6TPvPvoQWavXjIVD6KqyQ/GJMyu5yz0qIBjcouyMA+dDktFc/tqyYJ4VFJQCJSr+o7
	 wJ2amreIWjNVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA43DCF887B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812035365.30080.625946637473010328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67cabe2a4b399664f969d6a80729f84576b0c0ec3c728b4f02303714372436b5
Date: Sat, 05 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728120353
