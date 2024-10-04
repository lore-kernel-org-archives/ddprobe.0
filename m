Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDD31FAA
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728021954; cv=none; b=N4yrASZGTA0ViMph+F80lNXz3rTwIrTPOLysAlD70zlaH0WKcLXldyVvIw9xxo2luAyM3pbVj/i0TjEeo6qUTHq4U1/aFDdNDs1MZlI5TBg8ifp96GHBuZAqOyaoXfCnLKkeSnejlJLVr/Yoy9LweNTjAgxbi32EPLpqng7BkOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728021954; c=relaxed/simple;
	bh=ndFjrVOvc8wrOnhqmXAimk05B6RGXgC9srQab9DEB9w=;
	h=To:Subject:From:Message-Id:Date; b=FpUHN1GHu3cLgOiNCS5+21wQY6Qsb4MQAFpzbQTW2jPFs4xFBXZMjOBQLTIsbxTA9nUA2j0oA2oYPCBYXqcZ+qlDy2Zmm8sVzxV/AfbxA2mSZxseZujmFATY9JGzWsVE4RaMKJ4fjNRwL54y23yhvbVB+pBZi8e1RhfAzHeAbfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlZGtDhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlZGtDhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AAEC4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728021953;
	bh=ndFjrVOvc8wrOnhqmXAimk05B6RGXgC9srQab9DEB9w=;
	h=To:Subject:From:Date:From;
	b=HlZGtDhiagixgMHMO1mciQNTYnrkMfcgAyiu4myFEbqlbGDAzxHPI3/2coqkXGhxl
	 XqQt9WU7KUMAl6xYZqvHaWgNgnyQXB1L3WMI33w+Z0CMykxg+3kClLanZVbDnlc/MP
	 kK3WD9tlWL6ChCEWinqmi1BeMn0cjm1RnlzX8HBHn0pWEAD9zCt/s9CyZ7v7c3ibvY
	 RuyPDJLEWpMk+t+235O/o9/tKZfCWbfjpBGeWdlYMBySIwRGwMZ8mdI9Hl2a1f16MJ
	 SevqEW2HLlRCnE2l4QwASL+f0LCUD+wpCq+ZMhIC69SDFVvv8e5fellSlhG/xzr5fH
	 T+vwsP3LZi9Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C06CFA749
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802195366.28008.8774279415686256547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b990abd63215d35532c138cb4a85f052ef35be93cbced8dd8bc09bf5c4ca8ce
Date: Fri, 04 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728021953
