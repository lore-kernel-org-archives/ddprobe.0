Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C36B2236F7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775529334; cv=none; b=YGCQXryhYQ4FlderBheMCtgZdYgsTgFR/LncoE3O9+phWYNLSPghMff0du7jKM4iOVDuz+5B+CJeVcbcrlomTUmerqt15A6jbyV787SW2sZbS8+a7/vjfiDIaskrb/hHbRpWsn6ECVppb2FpRCYcyC0bzPPhIQZuUNzRJhusnt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775529334; c=relaxed/simple;
	bh=+6tmuc7SkoblddpMT6AsTjyCYT5+VvgRPa2N4ZIwKno=;
	h=To:Subject:From:Message-Id:Date; b=FBZa3urUjB//m0agc2/quAqWuskk+YU9tPzRxIKiXLG8d8uYZTS9MeAhMH/sGJCGJYB8MRZe/d/9UgE4VMkWe24yGM+oi7FV0zqvlOJZdcTuEtFAa7+kGeadUC+amgb3f9hcT6eJWTdxtjq6sJ3CioTVZcSR0PQ1xbYm5f5cCBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oue9efNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oue9efNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C351BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775529333;
	bh=+6tmuc7SkoblddpMT6AsTjyCYT5+VvgRPa2N4ZIwKno=;
	h=To:Subject:From:Date:From;
	b=oue9efNMeHYfigWYfo4SrYO7TAk0HnEpHdxTIncTxyqoDS+u/rf4B35l6UlTQF/tK
	 qUNjIXrU+LjkxEdOySmL4Lhx4bpvGCUA5XbCMDnSvuIBAALkh2g3Q9ZQzvVJtXqraf
	 ICPjDy6fNuIh4zSG+cm6JkUx9z1mDZ+uZCiR1Yl+NLqtNILrvusdbcqvXNJm5a75+m
	 qLTwRRacVdDZvlxXu0SMxawZbjPcJJ1MnJlqp2inNrFXsVrYOp1g2yg0OP4SZIhfAC
	 Z6Mv8WQvhGEfVDWOIRKw9xOAx9+qZJq+ebaa0+CcSiDz8aOtkekW0Rcqbeq2roekao
	 1pWl0dAUXBvog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B027DFB5181
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552933369.18666.3246337445452728343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28526446a63a62ed3c931f41a88b8eb8e7fbb320bef54fd81d35e56f8a90bb6a
Date: Tue, 07 Apr 2026 02:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775529333
