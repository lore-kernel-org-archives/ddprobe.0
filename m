Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFF745C0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767270234; cv=none; b=dX0NYzod+AnBbAmBvyqYrjsbBoiCBlGTS4UrY4ntlx84ERJzQKAmgRXEEALp5LVf8dYuMj4xRQnYwjvMn+f7U8V9GhdfC3mmcFUbGa91FC/vKSPjgY/liLuqjnBnTZvJ4pMAGFYSnS0gvTzjTmgur6fqzVpHlzeTvn8u9n5Dx98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767270234; c=relaxed/simple;
	bh=srj1OgQQVYY78U3DsBt2eZz8qP0eEMWaQFAsi3SdDYE=;
	h=To:Subject:From:Message-Id:Date; b=Na0HYdIrokHlyAgTJ7LRWAmgBbRixY12hSTXMLbHw/PDhDcxjyVPMVH0N66Vz7mrBgYL6NmoZKID7gGkUAwPHwgIO8UEOj771kl29nWwsa00u8IlT2regW88IxouapM6INy3RxhpRjHgCrtlKhIl6Fjg8ANiX7dk/UDcrLUy7og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iI+qBuoe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iI+qBuoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7F6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767270233;
	bh=srj1OgQQVYY78U3DsBt2eZz8qP0eEMWaQFAsi3SdDYE=;
	h=To:Subject:From:Date:From;
	b=iI+qBuoew0WZKns556Gl3/USyzq6YTUaVaOJbjwaP8EZdt8LQj4aI0HndJHluR+So
	 uza2mkB9adfpMcgi7/rVRJgmog6mlrsI0JRsI5D/mVLhIQ1CzTcyjIPtbbdqoot+Ds
	 N7XnMGXJC1SseLNCwBgXs/vpY+6PBfHkCe8w+JpjzpNgkmq9spJAcjKnXcDGqOpTHy
	 LTG0zJ/1FmoJHfEMrZKBnO+Jn0MUF0zuHYJ0Z2HqFbJ8XOg1H9iJWAdQQoTD6GyLH4
	 vIiK3oKW602dLwWjElbULZrlficwS8PezUJ7C+S1I0JUhN9mFq5yNuKg8RYYuIJizR
	 okLSA86901AtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A6EEB597
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727023358.27613.16503611404627722797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2fa8fced2d8787771d1dbd3351de5d58f9c11fae65d1d54e56bf4aae31cb74
Date: Thu, 01 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767270233
