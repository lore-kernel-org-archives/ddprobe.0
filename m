Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2BA2620E5
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774019094; cv=none; b=hq9yX79alOz5FjM/UzAZiOqwZ2Khr/REA4Us/xVE3G743Ur4i+rpS9R3rGMgFClO6z51brXlMN6N6ycCYl9UBkcsf89CQ8uhao46rwSrlaBdS08+9LMP9zmTq8LdnzfO/xCm6wZNqO2WroqT5lKRVYppC3FlpBHiLEF/3b4/iEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774019094; c=relaxed/simple;
	bh=8v+gubOEzFRZgIyC650FZ63JUtlbU+zzR7/7MidceIw=;
	h=To:Subject:From:Message-Id:Date; b=tX/XZnGDUZcF/u3ZUqZuVRmaUkHtGuiidMyy/KaHdiZY+d+k7bYWmmk5wbHznqfuN7oJMFqdEEGpy7u+X1FN71oRmWiLKy4wKvm0sPEgohu1sVwOsTuFXgw6BBntAH3en2DjUQgIQL7sOn9ttOSKL9whzUoMgXS7qVv6g7olMNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eud6UlZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eud6UlZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7085C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774019093;
	bh=8v+gubOEzFRZgIyC650FZ63JUtlbU+zzR7/7MidceIw=;
	h=To:Subject:From:Date:From;
	b=eud6UlZ3wXFrYGvWEBaqfUymBqcx10VXr4qWaSXarJ1fXoqkSpdQVF/zoIjGtO5K8
	 Mu6/mktY0NMbzujbCrMTW0iD+hWZ4KB4qC31+7+4osNcqR3tGiHBUdaQcytgnoD7U0
	 6Ei4P+yRk/eKax0+CkwZ2Dbt+HcDAngYceo+sk7+TqRvQS52UJANo51VxlIdAW6+Tf
	 HFBDUqnXsMYwF7XMoIJfAGkGi4yDZe1qglbIIyc5Z7xrvA1lcyAqA7JxqucUMciOmW
	 E73Fqj58xSTwKWSLhBASVXl2r+9766EHBbcFVztxn6huuoYEvQXZdUUua1q0HKUd4P
	 qshnoVucJwiFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F2F1098796
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401909360.27039.16470425033270718974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb45e06f9002ed2095af7d52fda88deb4909ce87c1504a15628359e74718856
Date: Fri, 20 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774019093
