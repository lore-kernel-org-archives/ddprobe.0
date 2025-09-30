Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213F918859B
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759203594; cv=none; b=l8ZsTvG7v2luSk+3wO1ezz/tRIs8ezR+Bl0R8iAJpUFl0UHDrF8QjIZYEZYlQCOh4Ygfb4/1CuWXB/w3rSsq/rhKIqgDEFpJyuKzYzK2Z1YiQg6cPWODK5Z3g8p2xopoYNljbK+y0AZreqIm8bMmHd26cMuqxlK52juA1KTzs1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759203594; c=relaxed/simple;
	bh=RUhJdzcb+Ckp0UHVxmossrweq+/CxdwNKJ79RCTB7F4=;
	h=To:Subject:From:Message-Id:Date; b=Wz/6tDOqzcZTIxZk5ciPn+2GfZqQlv0meq4VuQdoHXthArx/hquxfzZmMMYYEPkvEggycpZgvjg4qfCdyP0Pd5OrubNSGPopnRUMpmaXXfCA8eEBZEDQMVFcE1gipJVja12x1rW3jPKC297WxU+8r+u1o5CYCAc2O1L/uImaBew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMqVNX6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMqVNX6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CCEC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759203593;
	bh=RUhJdzcb+Ckp0UHVxmossrweq+/CxdwNKJ79RCTB7F4=;
	h=To:Subject:From:Date:From;
	b=KMqVNX6m1kzcwryqlKeyWnmtN9J5mBjEOMC/gglJngjl7WszJkXnvms9kKkAoUWTO
	 vZxNTYeoB80O1zYFZuFbE6C9tPSKY0vSTbHJl13mVJbt6QtgGa2cfDqx3ckwwQPZe/
	 z/DSCNXRzo65mP0KgR2IA9LVL2U9H6Km6yPuXu5q7Q/QAEs55DYieeN0dQReQdwNI2
	 DcF2D7VWjpT+hQI2H/TGvgcnMxiu1WJ9P0sgZJh1WbbWYUXjxhDVb+X5bGV7qZhBTY
	 q14VRIGvxE19nAu2CL5MpT54aw2SR1Kc//ca52kSW3CeoZ0rkrVZuVZ9ZZgSoJEXKB
	 jqkUtu1tzIhfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B04CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920359359.2794.13799305910329480588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9275f85971e6419606637ac265d5e199faf4f261dd440f73ca133fe514ba60ea
Date: Tue, 30 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759203593
