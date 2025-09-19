Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E555155A30
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758250794; cv=none; b=Kn8XLfDa0a3SLxABTu7o/EAxTGmQaMohpMiaXucaxJZlQXWzxnLiHp3HL44KZv+VkBl3qnTuBBbuiTkcEIDZ+KlNJIO7/RJqqvbrfeAZZNgsqMYVJ2oRVltrztyC8zGlR9aoV7OoxehzgbLmxvNswhOmFe7zXJv6K/EQHugWovE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758250794; c=relaxed/simple;
	bh=iSqmTGu6H++OxXyJA9zrbieL7xPqzW3Q96DxIRBFoT0=;
	h=To:Subject:From:Message-Id:Date; b=O8EBGx0/exkFUe4ff5X4r/FMl6Q7367QYMxn7uGJRK7kq97HyEoDDKnD/dRH4MukCFLkdPIhcPXuVZoYXG6LYMFeiz8alZzJ04Yg5ocH9P4U9Ws4v0l6k/swj/FyRHh+LS5uUmp0B+0pN5q+Vl6UtmLxjkIffrnT+7bwp0ejQRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5JlYJ0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5JlYJ0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53FDC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758250793;
	bh=iSqmTGu6H++OxXyJA9zrbieL7xPqzW3Q96DxIRBFoT0=;
	h=To:Subject:From:Date:From;
	b=t5JlYJ0GOYo+9hNlUlAZ6RKHHfVl2P9fw8Oejo59SCYXKzzzhVSEHwQOy2LUxRYUF
	 MmHSPkPA/0VvVpARmn6W3bJX6FJsybSU7RxfyCKm2uEUqffgTA426MvBCTACcigSI2
	 cEy1Ezs+ZP9x7XygA53XoTKpUIYBstaAKwjMlGPJ/bU/+zfvO8naXfbMWYKHLXOYCj
	 kTOjzWJfa8sDmxT3h6UvSoCmxS35QfT1xJtSZQyWJQrhdHQvyMy325370CWwAq0Y7n
	 6Gy499agOWcZSk+cIHfWOch789Cf9nlp7kieZyREZuzs6/2vYnbADBcKxFfOJ6NcyU
	 aESK0oKFIowRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919D3CA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825079357.13313.4358430965632434635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944357203792b9706f9cac63b34507874382abb129cda8a8abadaf95b05b9dc4
Date: Fri, 19 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758250793
