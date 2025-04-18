Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EE31885A5
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744976394; cv=none; b=ozcIFpJ8yT+3g82lCGqYPmaWxuXYqs2Y0/vXK1TnXGtTEANHbvDK4B4BDvPn8gLyv1X7KKUX+yF9L4Gky9XxpbdGEYZ2LZytZNsvGkpveKyDDyMgCS9ZVkwIaUF/48EvVhDv6UJUp8bAspeH2I2bgP7c1Z7mizKlNpwiSoRH4hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744976394; c=relaxed/simple;
	bh=hjlrgBqlgb6St4cy0mwIhq9NKgY+AoeKboye7YApqvM=;
	h=To:Subject:From:Message-Id:Date; b=tuaYw+0YyFoNT6LdPyq9oIM8Y5NkQ6mx5kvn0l+vnCGMiVS+RtVh+d6VmwojVfdK9JvGWvlf8ZeQLbTqDa5kM96LjHiZEFynzNEOHOdX6eH1ojyVflVspyXkwWcJhozyrmAgEVfIBoIjnkVp0hBZ4SbStNMwuPI4RF273rAh6pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJvW4MhI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJvW4MhI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B923FC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744976393;
	bh=hjlrgBqlgb6St4cy0mwIhq9NKgY+AoeKboye7YApqvM=;
	h=To:Subject:From:Date:From;
	b=YJvW4MhI8Li1Xa1iuF8TcOXfZpSUwEszDvuwgzr+EMvzihd0hiub/rkn59STaccNm
	 /xS6al7Yn5MH8OwuwTwxKLc6wgMbIFWm907ME2F6I7rbXeGOnwWPCOarOjs0SlNybb
	 LfDIwvFwEkbbP8iolVjsOyotcgFDjCFOW8TzCkeWGlRb90IrG1ux+9cx+Bgc6BqOu5
	 Z+D++9lrkeRGvI6Bv5R7qBfQD51Jw3e8nxTT0tWHgxTMWWX59Ysh0dxYOez8H3b2G9
	 GSx0BtTsd5ZT0COu5uXmOgZaqtTc5wnaKHMxrcn4Jd7hwtH65Gw6OGDpyoIbc5wgic
	 dd+k/D05Fwcfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D30C369CB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497639365.1427.13802315586565371393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640496ed27add79dcc79b5acdd3b611d9a75ebf8280d9703b2a58a682a4f151f
Date: Fri, 18 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744976393
