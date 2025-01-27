Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5638A53BE
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738008354; cv=none; b=TidiXREH4mUBkPGLACvrK1R97uM5L6IBsR1Zp+0v1dYhMC7TKOuCLPzG5MfGNa4ZAooLlWAgDBbnBT9TSyLfOaejYJbV6FtjyngTypj9s8FXgE+KARYjlJrUE9toTX2Ol57P6mJ6FVBw98M2xmvBAgXb4y8eCQpC4gTSBKlNutM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738008354; c=relaxed/simple;
	bh=SLQDpwIn2P6ZFm9uJ3JbrqI9aPf312thPZsNzD3MD90=;
	h=To:Subject:From:Message-Id:Date; b=Yo1JG0RQO4Kr0Dnvdz/iGqWqn8cPMI2BtTfahL5W/GMwzCWrh0IcygpFcoYhNXdGCSNfegZO/DBDoso2TudxUbU/1uKzrpu7EBvoaA9mk6MJMkv+ssO9ISs0sNh3Ztq/AWe2fT13XJuTTOMv/Xd9tS0HijUaUDwoOYRVshhij0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rk+r8LK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rk+r8LK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2E1C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738008353;
	bh=SLQDpwIn2P6ZFm9uJ3JbrqI9aPf312thPZsNzD3MD90=;
	h=To:Subject:From:Date:From;
	b=Rk+r8LK7ee2UoC9mhyWh5XHA5Q8WIuTLXuqkewq6ASF6Pj2EP95gtkk6nAtp14ocK
	 EdAlAMYeX5Yz0f2rjSXfenYI9ZZsxQ7EAsIA7lixy3ug3g9tX7PF/59Wve6zOoGJ2L
	 VpYY92HKjbENppb+d+Aj9TWo1puC2QGt5WjdCsQheZJ/ANGcQZYs1UrnHHpwgMN4qo
	 o5rD04TqxLaGXY0IAnV+xrkl0GuIfgM8j5MvyIyLOg5g04ZHfVccnViZ/XQy1SC5c4
	 B0rkjL+V3nsTnR2mqyjetm6hHnGH0aR8RlM0QyQPKlFGTUVbmLPGQLwbEbWGd47G3V
	 DXHri7RtnBdxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4995C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173800835370.17344.9316153426387446825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6bacea2ac74b4f05f7ea27d2f9aeacdeb99c536ae7462926d296b2ab58ecf0
Date: Mon, 27 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738008353
