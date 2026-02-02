Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537F12F531F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770060234; cv=none; b=kdCRNxZ4T6HxA7o3AXs4Y08xOxDEUYkbprkhEpchltqF8gq4GEDD84I4vakmtYKY2slpjxiHBaQZ1hdWa+I9h+suVHVVlQ/izw5/z7Z0cCgvXOj10ASl//Jy8cLCK4L3JF6sCaB1dPeoRFobN6NXfIVkrd23fvT+JgSJkAKlDww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770060234; c=relaxed/simple;
	bh=q96FhtGogFit40uvqlyaS2JViUv7jJ4NCA1yWInDvuA=;
	h=To:Subject:From:Message-Id:Date; b=qRp5tkw2yMj7Bpq7bVm8UDJeGW054KbGtLEh1UkB0BCU4kLSjll0uzgfxPID7+h+zH4HGvQ7Oy5cw9Uw/37J+sp+gneSzXnuCL21DQm/ZSh+GuZpLyKIlfPD0lqnKOuXSDy40f0mV7IpD5gdfKYR272xkrUTBb+6PwnPfomNlN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxRAkOCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxRAkOCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF35C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770060233;
	bh=q96FhtGogFit40uvqlyaS2JViUv7jJ4NCA1yWInDvuA=;
	h=To:Subject:From:Date:From;
	b=IxRAkOCOiHuPkA2FWyWi4iL6O074/bkSkw0xtGx488FP0COHNJ+2DOGeKx10n5+yB
	 fSApq+oRDVKxbOXoM21WIW42r+UGyoqQlOWxFaqAdM8QFlb5z3KLtCG8nwin1RX8Ov
	 Oo5o2xilehYNt3jX1bGTT2mVc3P5byoTz+zpNKzhuMEkb3b55DyAois9cp/8F/NFEt
	 whlJ7SVddHETvqKhN06kSHYQPXIt1wDA1k83CxmSmmM0qQw1QTj9qguUowqPovMxdu
	 4+y4Z1GTLkACuJ5Sl81TaplAHcIejRKPbN5CdbZLhj/yo3LRU5Y9MG8hp4UYMB87US
	 KRfzGiV2tmwbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CB7E73179
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006023360.8714.7961575189047869223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51615aea9ae4a1ed6569be114d5f6e4bbfc5cc267528abfcd86418d0a1723efd
Date: Mon, 02 Feb 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770060233
