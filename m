Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338E6313E3E
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758736194; cv=none; b=kJXY8COpOp3gvirQSsPwZRc9DrlgIaWNVkEBU79khDQsmtU4DqH8o55Gqc1GxUuaNh0xxcJ4QMmJmJrhJo+F2fqYHCPRdqtSh7AzCxBTNTKa603wl3yp76UPptXAhdlXBQUsVYS5E8/2/STA9Xrb5qqGvOm0t9O9KfIlCxPfrhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758736194; c=relaxed/simple;
	bh=hAaXmAwPm9tOA5mxo8h8x2A65q4nASLwmgsn5y1cVuw=;
	h=To:Subject:From:Message-Id:Date; b=Ks4ZQQ/BDDpor/cf6qYQBbvgT0Fx6QX5ibX7MjDJbdsjTbSqUw54yS/SKwT+GArYU/8+TQhWt23MFYsF9R6Bt9nZzM//JS2s38eTJNGKeA0R+LxqkUs/oLwq2cUt/hzDUV2GyAR4goKEtoVsO7GZvEcXfLhEJutFS4IGj9AoSfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJcIETuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJcIETuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C19C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758736193;
	bh=hAaXmAwPm9tOA5mxo8h8x2A65q4nASLwmgsn5y1cVuw=;
	h=To:Subject:From:Date:From;
	b=bJcIETuuGeuYO1vC/rkGTcXAVMrzw8NK/HTMrf9EWLqrERNix9BGgrFBCzR0NAOeg
	 tQcsD23KsZws2o31TCHOghtXifWG9kJRhtqCYQCxGEq7YuaSy1b8RiT/n+A/I65OJ2
	 CIdbjBBiB7e6J3n2HT5Dfo+k50k6s5RWBH7OeB56Tl4NBOm1G8rR26EsItadTcK6Gm
	 7xz6hQzoaBClMhObtuNgRE5mu573WkTkTrnOGXn2vIf5/bEJyfu9TW/PSSPOBDST/j
	 hLuO+mnb9H23d4tTnLhL2Y17/YDjljwj2UVORC0R3jmusL4JbfhVM5SArY8Bqcn7nt
	 eEnRN0t8S6v6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F54FCAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873619363.5148.8472953193867203767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f132b065847350607f0610cb27d2c6bf1fba2e18c4c20b2d46d18e78adeae2bc
Date: Wed, 24 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758736193
