Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A35721517D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737566754; cv=none; b=ZG3m7+06kIilKQm9kPblKFyV9DirQ2dB4inNTAOAX4QMXUHzGlP59ZK0NLFiC8uD3bT5fH/hT/629NQPCFu15gYQPnLrkM39XFwjUHTmWFcRGwpVBV9G6jz3F05vm8yeongZi8TY/wYV9Iro58t93cirJ8JSlQ7hD2AwpaOMRGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737566754; c=relaxed/simple;
	bh=H8vItQPlkDyxc4h9gI2o0aAnh6+i4xO67PXrU1SL4mI=;
	h=To:Subject:From:Message-Id:Date; b=SsQ/PHJZBoiNoY5tpB1IEif1imagaQlY1en+REygkdRPpZy1/x4TNF/D2y57itP5LwDmOH8KxT+YF6NwfVGAUoiO49nNonaB8Ab4sSKyE9aBhR91vpcEnOT2Il3j5QaFf9ElOqv6qwFQLE6thvzZxTA3EBZqC/DomVi6QZm9pHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7PzNV9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7PzNV9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BD3C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737566753;
	bh=H8vItQPlkDyxc4h9gI2o0aAnh6+i4xO67PXrU1SL4mI=;
	h=To:Subject:From:Date:From;
	b=X7PzNV9N7QTIPxJAesObySXZDb+MCjXgn4FGvFoLuIjU3N+jE9qQSm/JLdPENmbkg
	 uINQq4frh0wesD1x+Y4ghXCSE58A2QS0KGbPAfyDFk1KKmMno6hblMATD7VR7YZzR7
	 wvKBt7xeDWZ0S5hs+FgY+gvR5JXElZW1bXJvRQFLBKuDkdfVXY1mH2/J8wJA72Tze+
	 pVb1xEZx0uGl2VXLqPOKGYlooqw+oYVSbj3/tWMEczSswErNaTSB7gmvcUw/WBjEAW
	 RTR4l8FODu6dpovWTpXdgdkcZmtvl25g/mbSo/gRpFBNvxdNCjhezwNhm/kBRngSgq
	 hFmAAoR4lV+Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B7C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173756675358.2547.7394114444703910266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36c0222a9cf58b47520457e99c170317cc318d762a548d76222eea1506d95f1
Date: Wed, 22 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737566753
