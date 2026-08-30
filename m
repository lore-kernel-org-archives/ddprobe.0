Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4418C3B2FD0
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788093634; cv=none; b=ElWv2WOilo8vIoWcDqkHm3LgkpFEcKPYHgYOzMknQFwfUKN0yi+AvGFqWXIcOAkCwIevoXOhfQPTI5Sdijf4gkdsF2zJJim9UAA7T+X06d3ru8c2f9c/LUnBatTfhUTYW40GSulHRzX+O1QkQH1njj2dM60n/C6WqqbzPz4v/vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788093634; c=relaxed/simple;
	bh=8Uh1ttRDSQJBJjlfYxFOpFDsmX9mZtYjJIATdhKL1zQ=;
	h=To:Subject:From:Message-Id:Date; b=Rr+sfjz8+RQ3S/Ak7QQaUc43zB1q92BTKsyLwQ20SaYgTqnEfV84ZDjbRP/46ePvHUJrCZQSV+P3VdF3Sr/Hlwke+HSGObOBptlAHvbe3s5fNtO4nDI5bArNZyERJzQycF96ndGpaaIeS5tt8aUwtn72GlZ7LXKlbWxraJWC/hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upCOMlny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upCOMlny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0CDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788093633;
	bh=8Uh1ttRDSQJBJjlfYxFOpFDsmX9mZtYjJIATdhKL1zQ=;
	h=To:Subject:From:Date:From;
	b=upCOMlnyfjFknkH5GpGXzIIsCdnA+medpJ04eXnUSSQeKpxlJEuxD8/44zX9v0X24
	 FPrY0/P5seFBCLZjaMqbLDZCVA8bQeR7SJmeGoGKaQNqqD4sFriY+G7a3dBZ4Pu293
	 jFcD+sOaI1qhwWjqb6XcSX5DXvIxEy/lHLKw5RmMAywTIVpITdsXUnS/zCMhtTjF5r
	 /1+0LSGp0RASi+uhxz/q2Yv8MZ4IDQamwbxmxvFsvWzbc0NyQPU+LH+fUFbKSLZ17n
	 p3IUASSUucHWASSooTNn5yibKUjcN9x6sgtPgEK4hlI4i7Z6guP1mMCqrd67hOAuvI
	 baqwUqChJ6xEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB8CC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809363368.21986.374417391194842261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 751affc33ebe358b399ba0f473548ad72df705329f490e5ecf6c30d50080476a
Date: Sun, 30 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788093633
