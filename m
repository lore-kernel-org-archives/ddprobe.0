Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B76EEBB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756080595; cv=none; b=HkBUjlk7vX1RGMCQxZ4PAqBpwHqHCV/5muiLjyLe67MO9KjiHFodqOnQOfRRFCY+L4Az8vibZu2rojg43UVPqYhujslZtN8dgiXsoi+XCbaIcCYv1ylKKOsfBIMcGavxiF0Q5KBC95wRkdOXD6Es1Izhv6dGaUTOxBX0NxtloJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756080595; c=relaxed/simple;
	bh=CG3kE+r3WUyDGETJeNG7UMjpPcARIjChtwsWftagzJw=;
	h=To:Subject:From:Message-Id:Date; b=gvqviCm/3fY1+0b0v0q3oKmKG9mmI1zzQAb6fN2QaLfD/urgTXAPI26d5cjfBs6Go8JD5xTOg9YVNUM47BcOpfTuDIiMh5dExB9eAchYf7GSZsEH+TtjHe+saxeXAPpytmqjqWsWpOf+QIo/KxtjaX4iphILkTAxR+0TOPlL/Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQA1y/um; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQA1y/um"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0333C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756080593;
	bh=CG3kE+r3WUyDGETJeNG7UMjpPcARIjChtwsWftagzJw=;
	h=To:Subject:From:Date:From;
	b=KQA1y/umiJJ3l96tl/pZzotc5GKl+kZK3vUH6XBJ0B/OcmxuoWFSOwEYMIsWV8do7
	 W2nCExTOeNW7yIELUa2HSIhKiP4dNrBtbaTWqq+yoQv7jPTtjZSwHcakamPXoEVxzb
	 BA6iK2644SozYjj5257M0iJYSVCyMTwMjfIaA12inIVB3Mw9rm+ftioWsa9z1uhogU
	 5a9ElvLHb6yCTvEe/Sej0WoLWjoNSkZKz6bbvqxch4Wbp9cE+Ox9ylwKnhP38Q9W3c
	 MtfvqQWE7DV5MjQNo/bvSXjZJII4GsLh/FWIsrw7d/R5ssT5eSK/YF8lUV6zxlFXJz
	 9aUb36SMIOKxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B6CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608059357.26111.16336663528718237817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad107ea1a9be87cf3dd619a21ada839d73ee8092519b2c597249fdba4a3b6b4c
Date: Mon, 25 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756080593
