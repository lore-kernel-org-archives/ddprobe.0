Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAD4157A6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750744796; cv=none; b=DvDn/WkMH/0J3Quz8VQV+QQ50kZya+ogz8CX4Suz3fmi81iXq8eF6a6zHP8UDFPP1ew+lUFho8SelQKIbwLNQFGYR+E97ZrGQdV0Afy2sCEg08buU5bXKzBY9vYaBXMHObiZoricBcqqb4AEkHZLQ839vxOhmO8mr5u0V87of/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750744796; c=relaxed/simple;
	bh=MKglHHLTyKrabDUzGqF/nVs/qBHrFWDyLkTqHR01FnQ=;
	h=To:Subject:From:Message-Id:Date; b=mNNDieXlGdnUU9gUGFLrQwKsBHpmsag6o/ENGFhtpxsJtuvC5IdzJAWoB4k8Kvea6+25F5SBMEy4tEbX3v5Pv9WZA+XtSw1XVpB7ai8B+OVe6YGtGfsTagAVWc+s44XD0kBsb5EOkcez3DwpoJb2osT2wiuwtn3oKJZg8R1a1q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L13XJp4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L13XJp4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D936C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750744793;
	bh=MKglHHLTyKrabDUzGqF/nVs/qBHrFWDyLkTqHR01FnQ=;
	h=To:Subject:From:Date:From;
	b=L13XJp4L/5AziTAjeVJbHTItE13LXkDA3XRqJKkw/vAJk7ojydqsxB5iKGplSHVlc
	 n8CUGqF8Kzd9HJDyULJDz491tjltmUY2sZhhTdQy8p0h7iH3nwfOFn9CwjcPT9pVR4
	 kIIv4qEO+7Jt0g6g2NDvlJUULk6tHdqSJbfTF49y2rED3yH/c8At+9m+i8SvTket/4
	 iJ7xojFHxgX9uOSH8dRwF+/6ep13MPRFhU6FRepwrYHzi4+HM65SYw1dNXytvQjSWq
	 V+Ni2MIxdPtEb7BMWtJFKKfQ7Y+C4v//j40cy3HbvO7AnbqGwJ9x2B9ibCjCZbKz4F
	 UqxhiWoHBLg/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE50C71157
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074479357.1196.10190401175597835223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5d142c1ad2b48a4ddb12a956d80cc1dada1d4d425cff7ee8a17c9089377125
Date: Tue, 24 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750744793
