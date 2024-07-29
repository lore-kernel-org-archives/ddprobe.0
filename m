Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3751155CAF
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722268554; cv=none; b=Y99pl5jcir9tNe+ySH4Glwr/K9G1/vL3G6401POf7Z6yrIjYLrdTpnOSrCFP9T/tsVRjD3EGzcqumBJNvYHqkRWq71+qG/fF+I04yaYcY6Ih34bIuwLpreNz4ZQYPz0La3Ycc1deH8rC0nHfnptQXDN/xIcgoHd/1LcLI3OEcP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722268554; c=relaxed/simple;
	bh=EpsHYgF7JlLxvb1anvHM+uW/lsXi4caR8a2LAx/6X9M=;
	h=To:Subject:From:Message-Id:Date; b=WfOvhC47U96iRSJuaM3VeXGIuaGwSclo0JYmUI4XxjenOGGNUdSfonT5B5nD1gOrwKCaPg6BMtYF06llPImVSH+UdQFHWDmYm0zYJQ7drvK2RTF0JZFs6BX0hwin4vXJWxs22T35d2XBpd3BOAeln0jpZfWCn0nQlKO/VGiGZ1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLZ7UhVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLZ7UhVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3919C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722268553;
	bh=EpsHYgF7JlLxvb1anvHM+uW/lsXi4caR8a2LAx/6X9M=;
	h=To:Subject:From:Date:From;
	b=rLZ7UhVg7xzB2VY5c8QEq0sQBw6dViz/neCcyH1H6EzMwixeBzUc9LNdNGKmyL1Xu
	 cuKwvwkfIfKAwUTx1w3/fLsPh9nj4IwJ7jYGlSpDGobP5LBEvrnLr2C9Na6FVT0Ad5
	 vjO1HFidNuSwMyo+qAvbwQ2qXFcwcNnce0ifrSGahNh0taoSRBKa8p0lYgOM8vd4Cm
	 oNez7cK+LAfKoLplRhJBEI4MkDJ7zh59D8PpWcc1bYJrcCAzSNiJgfSDMoOYNW0uGY
	 4BHMG2mHL+weh8glKnjWXv8ccegtZpFC7axETFH0P8cpObHocxxiw2Wvy3U2jrd3EI
	 A0RwbypIN5enA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948E9C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172226855360.5655.12671850012832614132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72cfde8a963a7147e7f82a708708e1e69a14fe05278041972674e8f9c7bce023
Date: Mon, 29 Jul 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722268553
