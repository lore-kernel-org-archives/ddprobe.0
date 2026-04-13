Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2C1D531
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776058054; cv=none; b=Fiv72OKCMrX/GENLpag6GJEVX4CpzRAMaOr7PLRqWy3jFNGTsaUchltLiRPXWIHvMDPElVpW2SpcH8btiY/hsKRIrGLiVLD0i4cGYFraK1qCV6AX4sNDFckBFI6w26RUJAhw1AYjRTYz/H0rMVoEp/ZBCaKoynjVo3L2EDb+nFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776058054; c=relaxed/simple;
	bh=c5tctFMefH1xRDWIue3og/nXk/JwKC0RX+td/ViEJ7c=;
	h=To:Subject:From:Message-Id:Date; b=sER8kfH/6Ovwn6IComhkgG9NFKcxOTwmnzo3vhJckoyUKxkd7dAbAGrdBf1wBurb+TgmlPkHBOI8BOJdB9Dr9AWqX8leCUh4B87QOUJwprVZcMi8VjRF5vrOyX2thErISMI2723kZUEAP+gqbE6lCMnyn+k3ipv7J/zBPeo7itc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tlzx3umb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tlzx3umb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F88C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776058053;
	bh=c5tctFMefH1xRDWIue3og/nXk/JwKC0RX+td/ViEJ7c=;
	h=To:Subject:From:Date:From;
	b=Tlzx3umbG/x8RZgZth2D2rIIeUTxhLbkHuuw5ZqYRdz+4upARWDlM2fEtM2WjIn0U
	 Gn26WCUOqcbqFpTbBp7hYXAfdWPe4fSFkr0YvJEa3Lxm2a8u1NYjqRhcUCrkNuA0Em
	 syFw4kqcbHMRuvX5WJm82b+7unJucDA9amFmKURCKjbKFZtpoIGxGsvNg8oj0sSdT8
	 6mZyTfcs8QGgpAERnptQiOqi6UjmMRu4IsMwWeSKD45Dis0D4w9mjj5znrvS1rUIYI
	 Tv+uaNGikO95QUKxfB6VeDJ0zYd4gYn3DXrBQWRlMnwnqGvO67wxQMaHSwtKCtJAST
	 pt3WgOMDDobsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8B5E93813
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605805368.4993.11188293676187954610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af56228a82f52f2cd0993934bc31ef8e420b594a4c0d15a9736f0515e207313
Date: Mon, 13 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776058053
