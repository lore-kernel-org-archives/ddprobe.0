Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F08332BF44
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771059294; cv=none; b=jpPE4/dSR7GYeZflywfrjtAiv8FzYiDueDsan/JiNC9XUvRIB4KriZUrMjIxM+U74LDKOxHdXJBJ2B1OBnHQ35/rJpSFgkldz8YS4yxwUDMsWNuevI/oFqMJE9HxrsGeCesApqiqUY1TUfdL2do1Yl6Pgrjks0iP7jTZcI0Vpac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771059294; c=relaxed/simple;
	bh=HEBD6d/6r2HlRIQTEX4fbPXw+wdas+Zo5d2aF9+0vGk=;
	h=To:Subject:From:Message-Id:Date; b=PVR5YtfI3kK2R6CSho5kBqNjfwChjeED3BTbOQDjCwniqUJELv4pu0ghg8uYXA8gtxQaVnzJm1YOBQvR2qGfKBDXQ/3bEnK03l9cIxLBIO+dfDlPljINU7Av4JSB84D+6Pko2UxrT9rvu/dh6Qebpts18IuVtKiF/UNUk9NLQH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eu7LkZ4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eu7LkZ4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FDCC19423
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771059293;
	bh=HEBD6d/6r2HlRIQTEX4fbPXw+wdas+Zo5d2aF9+0vGk=;
	h=To:Subject:From:Date:From;
	b=eu7LkZ4+142TGB7vPDTm5OBrRCyjgWJwLyLdibISkmDnIF5v/PErumwqr7xIwR6yX
	 72dizu3VYIsHECQEPzmwVwlaHylVIO+PSvXNtn37aj5VXU/EwPBvD9sw2/sgjoaAmi
	 AO2T3d/zqaimDFfdX12gaBfwEFby1X+WL9DvP1NFLYp7iQRhfTM0pagUcPZMlqF//S
	 H8lzfYWX81w5teCICTX6ilXDafDCDndrzGkbrv7ODIK60U2mE0opJ/2gaBa1sA2Ke8
	 9foSx+a0/Pd9uVSVtLxKpHIh7Zyp0Q0TOq9nPVOPIOWud98jHi1/LSzZkqCt+IRpTS
	 AdFFrCNUU9gxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DA3EF48C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105929360.18945.3476906695239423817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392a33c0acc741c5fceabbd429226edb69d2689fd38ff8bcdf2bdaba65956abb
Date: Sat, 14 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771059293
