Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F277625
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718932283; cv=none; b=cyR7Pozv4ZmWlRgTvT4Jpv1Z0S1SoHGSTOxCU+2jQqae7cXMmh883UVAoapMTEzKMfc//t5m1IGv48GH/u/+96lOSrXe39LcCHlazIl0JV5nLsdjNQKbbhY8yzZEGWmkZViL1zRvFgKq9DHaZTdngiCC2S6GX7IzIZqm6G14mN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718932283; c=relaxed/simple;
	bh=4aBKvLNeqG6JjzirB4wUuQfZTAL1qvojlTBrFoB1xXA=;
	h=To:Subject:From:Message-Id:Date; b=mNhHQeh2ljGB3tYGEwFasQNe8tADDw/yZK9thvd3MWt/r3sOdUT0fy7updxKQ2lt8sbBYGL3WzqiXzBhED5E98gTKO1GMVMWMfxUISjV86pFzLdGoA1MCj3BXHr77lbTQDawAQSH9ASGJn8prBsvabrZnuuKTO0DIVB/rJZKskc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNqD4Cy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNqD4Cy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA1AC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718932282;
	bh=4aBKvLNeqG6JjzirB4wUuQfZTAL1qvojlTBrFoB1xXA=;
	h=To:Subject:From:Date:From;
	b=GNqD4Cy7zOXACADw3IwB9gPmQjFTQ/oYr4Fg6I2EpcNbYFJV7nWbF5GT94npIq+O0
	 SzUo64p2y7BMihIBKvR99w8v8In+9KBejyHUMvu2pvi4DIneJhweRSOQ/bhzOVUcwC
	 4GJkm+M/5iBk5+vJNfNSE3zTK2P/i1ESh7ZdLG8fvWNQPtvGu/rflmGOzXDvydtQPy
	 fbFgPU6t07KPfDVP4aGgUbRO5Sa7yLG39xlamoQUSxh5qMnvUbwWecyzdvOGCvfSYE
	 J66kmWdrdqmoyHYZq0/d9/50o9AagBq/7sXIsAf/wwLNQiOgg9k6C12Vo3ALDpVywo
	 nd3i8GvDmsKBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD992C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:11:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893228276.29303.10363483076768524309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc681742e00a8df0d4a6f9aa4d9653d04ebd4a3c57c4e0b6691b811029efb6f
Date: Fri, 21 Jun 2024 01:11:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718932282
