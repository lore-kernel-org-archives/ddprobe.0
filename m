Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5374D30CD81
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792192234; cv=none; b=j8/q2XHXnbWAPP594wOaWpXf6seykQ+HEpp52fHvAh0l3GZC/qSBGrLBqmBvyYxIJDUlHatHDbOMZ+uBGlGw248bgjbEI+BsrV13HE+hBdO8hxLzUNcxxSRiIARlkZovbFUmK6uDC7KeLIDxXyqDSfalBDKHVce34i+LvRZUV+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792192234; c=relaxed/simple;
	bh=Y3KVfg/3elqWVzrY5fN6Z8IVhOLp63R86JbuQ9QYgTY=;
	h=To:Subject:From:Message-Id:Date; b=JX+lhuEi5FcaBI4Kq9D4z6PIlqsUtpVW7kY8gsR4ku+edBEyy/64xk3stk59BLfdh+RpjM5xYYTZOZVSTQQ4ipG0bq60s0gNVkSLfSADDGfYYjMlJLW6N8Cs5/GWib77RPfiZH/chgDBNd0F+tRSZjfLs6t4vZq8AzAJJRQ/sZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtYrjxUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtYrjxUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3983C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792192233;
	bh=Y3KVfg/3elqWVzrY5fN6Z8IVhOLp63R86JbuQ9QYgTY=;
	h=To:Subject:From:Date:From;
	b=ZtYrjxUCpWNm8Gf/06AhT6gmRpz/eotXLprAIDi1JBOR8Af24sNtix5vBfSKqaosX
	 tPH9RH+6k80YVP67LCBGke2RkmqEbb2IdoM3NlWbvueVu2gmvmpxhRPsQiN3pNt4cl
	 yXDXzZxR6h0OotMJy2L6eNTfBS7Uh/jM3azjpzb350zwFci9oK26W/0BdSSvsqvHwT
	 DYVHgWpA2vYf4j22gmJPs4qaA8eUE5O0j8ohJ5Ee+araxrI3wCeeLKldi5+TBIDurO
	 bz14VqBsvVNsiQmDPvzlS9+cOw07enM1hIckMxGd4+hkfHUnycnSad37HnTqvlpx3m
	 7NL7H5w/2onxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE129CCF2C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219223370.30129.12825356532179359411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b041af6db6691b24634d50059ad9524d9405f82c1440cb847244c1880d7a375
Date: Fri, 16 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792192233
