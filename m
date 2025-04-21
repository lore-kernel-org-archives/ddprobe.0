Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE747462
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745217594; cv=none; b=jIy1OM/fyNxD9ibCIs6qRsMF7jOQmdc5SY5oltKQue3HioqYsZj2q8it9BBt5AwiErir11Qcz4p8dZIUyCG7hoCoc9Uqa8bQJJZqG7Ccpp4LWj421/d/YLkocN26OLoTxihqJEfKxtov5TuOyY/r0+632679yHcjrQ3vV4aVSAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745217594; c=relaxed/simple;
	bh=+OVk+31bbl/Hiy5We/mF8IPVxx/U7bp3kIw1FWWlW/k=;
	h=To:Subject:From:Message-Id:Date; b=KX+Axyipyd3igqgdhDQFN8wWUw0dNSWhR7seoYsbmdoNugl0v0j9H0nIOcw5NuUGbH9g2z4gHzgDrlZeeGGE7BPtk+0VHCSJ98FhhFxAM88rni8bSPAfDpf8Ga3uQdiV9uKNIjfcJxKgItXZaJ7uAgRQSqhSkq2ogyZOfBL0fEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ygshyurx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ygshyurx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B198FC4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745217593;
	bh=+OVk+31bbl/Hiy5We/mF8IPVxx/U7bp3kIw1FWWlW/k=;
	h=To:Subject:From:Date:From;
	b=Ygshyurx95MrI+4Bbh3MYhLDb8+Q7q22q4tFGlKw2QawNhK9sMg5lPAIApg0BXUTd
	 BwSfIum8K+aFYNersgPMAe8rUlLq87ERszsxdKkUZoXH4/QSi1zTxkpD4M5EuZs2xp
	 MmcKQDKc2ZL7UaUikcbf89d3AXuqZIk6UB/TnOgOSCj+gKo8M/CLMV7XtWjkyVjC+a
	 +rR55GdL7hm3JfhwPJTa27td6YZgobNA/QPRos66FoI67scHo0kZfmuENdHCnoJzXt
	 D1E8cCtFha2yHsPjdoju18gDEMdejpvLnywS1/jt4CXYpn09uh6s0TZIFADv9UQZzn
	 keg4jySBzLEQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFE8C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521759362.25746.2607723250668514752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207335214de8524fd6c7f5899d0673a8996c7e1462127c6c13088a34109101d5
Date: Mon, 21 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745217593
