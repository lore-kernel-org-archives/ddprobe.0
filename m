Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3893C385519
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775925454; cv=none; b=swrdZwF99Rg12W8RGAhPNwXl2zWXV0vEQSYfcPsTRhoGj/MVKzIpXXcMvCIbJqxWOV1QrJl2KaBvIuGhln9nVbQcx0akoA9KdoMb3asLzuRxue43FrKWn0QeeUmMF8xJbz9VaMIfqQKlcbVGxrsFi2sFQdB0rDahvnd6YNE+ZAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775925454; c=relaxed/simple;
	bh=5YRtIwQtMyPxpONlONQSbz59jNLn8NfStcTN1biFMZo=;
	h=To:Subject:From:Message-Id:Date; b=C27feuuMo0wB3oc6+m15DnXWQYklodDScbTmGFdYnwQdhZrUzZogu8v1x7VReyfwM3Un95DvnS1KrQxzmrY5Sb5rsQ4gH9HgxrkP9s60SX2oI9nknXO5e+oTDrCtByURS6m0lLxTQwg+x1/pxi32v8xUslnkkaiZ4RnmBTAdkHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpztpFp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpztpFp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C382EC2BC87
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775925453;
	bh=5YRtIwQtMyPxpONlONQSbz59jNLn8NfStcTN1biFMZo=;
	h=To:Subject:From:Date:From;
	b=YpztpFp+twPRfoXw33dhqkNGYdfHhZDGJSlvzQZpTp6qQWAxxAcG0+8okjXyWQHSG
	 p1BsYbeBraAkTEeabbiE+9RttL5AdfrK3qvz2FNWZIT2t318V8QVTkcOOEYNhvokd4
	 30n8l6ogDTwx0wTFd1nXS5X/gCkWYIn29E/RgWEVBCeR2ekoU/rKwA+6N5FzARUqCC
	 A6PI0id5qAgl6tauTY4JdZnNnQQJ7zOVMHYh/j1hM6d1rmysmUGzMYGDojHsaY9I7r
	 A0PYLLEk7K+OwJNOGoI49oSXt1hxggk/PNIvKJ6ZTnPGrGP7pIZWDHbNqUJMr9jMQi
	 TXSC76/qws/qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16E6F3ED50
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592545369.11382.16732997948177971871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6d71a3045a61e7d7fc7fe82e85bcd70955db2604665c8efc0bb61848ff4c27
Date: Sat, 11 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775925453
