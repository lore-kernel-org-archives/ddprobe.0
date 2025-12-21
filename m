Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272AC219FC
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766294034; cv=none; b=fsqMZpSdjDkdTfsPdjgYjITO/xQgvFYOHlBVjLczhIbpdaFW077Rt2TunAn/6U5P7xaoDwQpRYCQD8+3YmYNCxDQwYzHKDcfLYGJnzcgjyLB/9HhCkwxba02X+sazAuDLCWpA+amZ9gJuPHe9wY21ux147b1HTieslMCVMy0YJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766294034; c=relaxed/simple;
	bh=+CuGA+b/sGvw7Ci2oQICVMLrxY1sQbzbzj/fdd5ERsw=;
	h=To:Subject:From:Message-Id:Date; b=fg54jT8JkSfnZRVc6tQdxN7Hk3yxLM9eFPQGt9hkVZZ8srDVuXwarbdlRj1Y8u1xfMFYYMw934DgWPqDpCTkUsA3PCx2uRO6P/dZlHuFOltmeEXWQLZ7HDK/jymFSUK8DBAcoOgRccoEFR4OXpxXiod6oMDTObrBnPkxyL+sknw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piufnZVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piufnZVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFAEC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766294033;
	bh=+CuGA+b/sGvw7Ci2oQICVMLrxY1sQbzbzj/fdd5ERsw=;
	h=To:Subject:From:Date:From;
	b=piufnZVTtvYoj8bK0eMQ3i8fxo8TosW/nf8UrhOihTrywyh7XvUUfirfZvpGB+Zsg
	 kMpRtsT9f7fJ40c9eJz1i5Jl/64PeqSSZ2UCijYE4WPOfgI1WMvf7zMrYLPu6GwMMG
	 Ox5xFBwBN0ICtJhn9V/4MMv8teyd30ugEruYawp2gSvR63FeyRYjWtQj4zfVXcJDXh
	 AVGuEf4YNq+EF5oLDTPJLd4gX1Bw3jb9TgofeH5HqHrnXkRkEl82st4bar/ulBa+mg
	 9p8Fgiq6HiWffWRdM3hEiIDktcZsQOYrXLbjiYyizkxkGTs5QR8TmdEeb5tNO2uNwP
	 DtUofFLQwOXGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E52D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629403358.23129.9622791528689135743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ee8f9e3944503e452be6ce0f67bcd252abca76fd8a8bea57aa4b181cab0cad
Date: Sun, 21 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766294033
