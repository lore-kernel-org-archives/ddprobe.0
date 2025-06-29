Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21794522A
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751237994; cv=none; b=ojNbA2Sg3CfsmWyogrLjfk64F/Z8lQsbz++eQRYANZxJG8ftLVq3kJqlRB8e+k+w675AHGpwqJ2hsQsoS6nSYKyrHsLJPMhVS9REe6l+IMtD+E00v8FQNwmYdTmBO1m3ErqFfyNvCCFHUe2Nc+LNn81HmcM+1EJ/FlkjfIy5tTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751237994; c=relaxed/simple;
	bh=0beW78JXDw4stW6O4ogH4z8UXJ2QfQWDsN3UhqZdQpU=;
	h=To:Subject:From:Message-Id:Date; b=NJQduIhkh7DxFzzYi28yvAeKJtj81Z5QCbNbmtys4PJB3w1o1m9TX4GRygyFbEn5OAVmbPhsf8Mnhw3Tvd95x5HBXim+xxtf1XA/E8VFOIEEdZjsOOgq3O6wUOA8bPNeVRbqiGbA+HJklN6ToqFgR8cnkrjIvTJEkOMPvgIwNl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLASx433; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLASx433"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AD2C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751237993;
	bh=0beW78JXDw4stW6O4ogH4z8UXJ2QfQWDsN3UhqZdQpU=;
	h=To:Subject:From:Date:From;
	b=cLASx433iIJshUD0TDHiYsbmgZOBqWBhaVU7QecG0HHh6rdPPyAvqW809CbixMLXT
	 pQfJRcZzsPUvqoYZlr0HBu0HCpnbk5YtDpTHkF+TuyHvvtgqWLU/Q0oZxmdYCkRhao
	 0OEmLygdlc19sAMQ3ZnDX9KRcFWzA1LDXkKcCumC5m7Gae024527/Xg6Oze70qo2nC
	 XCSLg6RHqNGGZbQ2tfJSGRVYVWL1T2PPpqErSaGqceKPPALf5dWrE5IGgpkzPAXG3j
	 GdM+0NZzbRYTwkyfssfTQhi56Rkej1+4lGQbdK2jVQuODPF3HSm/w6qItApCk0mywQ
	 hej37fTb9GITg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6CC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123799357.30743.12481922191392373657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3fab250006bd2899b79923964c2241361af96e56edbdd7fd544119bc919a85
Date: Sun, 29 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751237993
