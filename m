Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306A132B131
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783662514; cv=none; b=O3h2vt1L8wuXEejDYVeVkzHxN0tVdn1vHxQmvbz2Sb3UcezClFe5QTe7IICumGaTqfh1csfU0WqFyRwX2OpYTW7qmK8omGemzPjEZUmZZ3t0rcUX3BubwcLCcf954BWy25HUgfYyj6HT0Z+KJ7NMit0CBEk9T3ejh2FqIMK4zDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783662514; c=relaxed/simple;
	bh=TkdsKl2YJcPC4vMhtESfna3Tsm9FmN0JC4/QkHqKedY=;
	h=To:Subject:From:Message-Id:Date; b=MYSdIyP6JnLOw3piI91hoe8K2Js1GJ0nS3EmYkCp1jX/jtIg0Ha8r2vMyDU6j3pfGcLl09+DnPX+DjK2Gazns4SMVQO7fLCqCBvTgq+3WoeK7bRfpBn3fFF3ULbu0qUe/UvXXcCIElnODA4S9HU6pbToCrHuctJOpzYSCT3cJPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u46BDlVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u46BDlVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97ACC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783662513;
	bh=TkdsKl2YJcPC4vMhtESfna3Tsm9FmN0JC4/QkHqKedY=;
	h=To:Subject:From:Date:From;
	b=u46BDlVlbiC+C9mCDu/+GhDcRtbYjVhp6UmNH8GfHC44QKNaDwEGS8uQhts+NGsdS
	 xV5JI6NEyJMw0sEcbay8jOpE23wBW/HsHrCsVWolDn9SV0TJGjQAS6jM8rZn8ujTZR
	 RTJ3/2nFIlmCQWCJPzLZ3edKsJ3mV8kfuv+Z3e8UNHq91C8NqIof1+iCxdK/JoCq2N
	 yogIZYsD8KZXZNrWQr6B77hBs5Ax5lDdkcVyjnQJJmxqH3gSdjJDltQIGumq5TgKny
	 ip/eMHNgF5tWIXsPGdsQIHxpsryUJXNzFsnq2VUhhUffym/uaf7bgL+ZFdnBx4dwIv
	 uXpAQz9JhH/ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77C5C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366251367.26818.6245316641182773365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e66e06f425bfb4f254fc71f650fccf15147ed295d9da454a75edd1c5056906e
Date: Fri, 10 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783662513
