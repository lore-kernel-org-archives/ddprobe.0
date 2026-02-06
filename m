Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C761DE8BF
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770341634; cv=none; b=WhvWFwPMjEuNUyhmh9gy7mtI5BgkvayCWmyuPVJ+YJj4dBMl5L7yAeMZkELVayPrOzpzYN0ETEttUNwQEnYNiFTAbCfKrAooGILymOda/4JdpiWuCdKVmD+Umxj3Ljpco8p5jJkR5J0UUbiQpKstDrC8ZUgKkjT6+AbIXsPeZGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770341634; c=relaxed/simple;
	bh=rpkvHaHqedyslwXO5QRp5jmQhFO0VJAis9gNQl/WZOA=;
	h=To:Subject:From:Message-Id:Date; b=DQO+VcdICNHgsV8RVRLhYnqQPTeUyh1/fay0YJe/ElV0lzLBKp2oFizSXw9+vijVF2O0ureQermLjcN8RYImlFdT8x+/TVbEwvplWdtMfZlXBwxgqdH6Gtky3LDN6hccs7q8SdtILB4CmVzz9NihIY51qDBQLr7hsxNhlwjOjUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEThfVpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEThfVpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF1DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770341633;
	bh=rpkvHaHqedyslwXO5QRp5jmQhFO0VJAis9gNQl/WZOA=;
	h=To:Subject:From:Date:From;
	b=kEThfVpVOxlfD3YrsXu4m3PYKP8qxaxX+mgS6X5R69aauy64sppsf4maBXRzfg+Rh
	 wzl27hWpY+HnSDqrsHB+mpU7TyDUI9CUsajEWqWM0tDeMzWMa2iCt/bdvpXMdElVnm
	 MeBQVu6Qeqi9xs02tUoO0q0Qp86rn6krsvKQwnUbFBdap8TKwT7mNxI43WNjXURwI9
	 moe061Mk6mJ2rEl2UmUFuUun3jW7c6jcsqiicvwRv6d4gd02bGJmYulXBgSF9nYmqa
	 NgeFbgwKVsx1M+T7tgWh30kv/865EnzyMg2OlhmxO9cSVHN96JnOgBBEEBLBx9YGbh
	 pCNcnmiQKu4pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CACEECD9B5
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034163362.24305.5036436052578269330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79621f8cffb176d16515df39056ffe11c72166c6af20f4ebaa6735ce47c02df7
Date: Fri, 06 Feb 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770341633
