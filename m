Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FCD56473
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707832697; cv=none; b=iO8walyDXLo52DdsyWDVU+piTS6A5fdZn3gaK49GCx4mzVuxqRSlnbiB8am5hMj2L8bLduD++TmsGmtQ4WyAjMYKQJnIeaBImEqZOqTeX493cgOYLnuwuBWmbXhLQr/sJlHv6FK16Tnec3aJUO9BMtrtGPBA3V/T1d22BLzKsTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707832697; c=relaxed/simple;
	bh=sGC+IObOXV5RCUb9z4rjq1LRKy5DViL8oe32lsJWpcs=;
	h=To:Subject:From:Message-Id:Date; b=ZW8eVhz1UxIJDPJPAc4N4j1uByMyF/YfQEuppUc/vkbgiyxvyq5hBkrm9iikVG7IjInqXyx0NOIcoyoTCUd2Oe2pRzw851dJnXVOng6eoCyWGCCdaOPgZXOA/2XTWMQVo5BFk4AF73NIsy7O9MnlYQTg3Xp/m3w93ULsTyeSrQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnQX9cXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnQX9cXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76169C43394
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707832696;
	bh=sGC+IObOXV5RCUb9z4rjq1LRKy5DViL8oe32lsJWpcs=;
	h=To:Subject:From:Date:From;
	b=cnQX9cXjsxFcH/rUEB0vqe4XnTE26H8ATYK+JxtbBq00wGCNuU4NhuguMFuCP+MiY
	 intcWypx18Oyy9uZrVF+3o74i0Eyn5fRlv5aGWscPtbMsgWAAU26D1sA7zGDpincqQ
	 PoZfO9gZajbhaObN28KGWNYAYZff4c3IpHglZTvYihYp1jX6W/4EnbR7vU9NXAouf3
	 34apXsDRIGfnowwZ7fYT2wxPoEGjXZN2CgtHJd0NlCWmNzN+PChYfx7/sUUPNagGp4
	 2PMv3AcOQ/u96V0DZgY2fw9Rhhk91270o7CvmdIQrnwMmEKHVei5z6vfYSkwy0xOEk
	 E6tWoSCJdzNNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B5A4C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170783269636.4827.5393030506904540666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3f5d12ca7d125910a91cb5962ef0dab15f4aa147e4da8ecf6ab3183dc0393c
Date: Tue, 13 Feb 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707832696
