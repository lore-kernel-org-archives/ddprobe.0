Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E194331A5B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792218634; cv=none; b=t0bXLQEYZhVCesHhiRjLqcLI7v0cm37atLSubLnCJhVBYvAU/eYnq1km8Y6kzf4GHqHflV6JlNMyvpMgEoEstkI4LJ/D4YTS2WLyRxUMHZo0HkINb9nAufMUBVaGi1kpW86pkTVjJ5HeZfIj+vN3LKn8LqnIrmuvlnL5x+vUsbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792218634; c=relaxed/simple;
	bh=V+jHzlU3XWcHtGftQ17CN85U0clUKXuHGLYE8Essolc=;
	h=To:Subject:From:Message-Id:Date; b=IDk3LbUUZDn5n6hsuc+PP+1WVPNg9Ex5SLEpIpiJeIqp6FyAV3BBEXccqYSaRBeHE1OgV7d/OH/q38XqLvLzFOWRxZuf/0w0bgKzYD+LkNe88yuBM7VJ+EaPd/k43kSKnBTaO/v0wcXWRBJTm8YfQFHoEBtph2xtAkz0gnzdnDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGnBOz/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGnBOz/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDF5C2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792218633;
	bh=V+jHzlU3XWcHtGftQ17CN85U0clUKXuHGLYE8Essolc=;
	h=To:Subject:From:Date:From;
	b=iGnBOz/2YtOUfebpN5svjtBRXo+gBBw20FiGXYbUJCo7ieTI/8s6wQ5MZYOMW9CoW
	 ++E6o3T7uv9f4CsxHqMb++6JlLgF+PPDy/tsG1YfsWdHhuzW0wGncCJ23y8zeTUN6q
	 8lN/SKZfhXPSLCorxBDQt4vTNV/jlm8nTjxAuZGxDmC1FvzeYaJ3s3pwoKu6s6I4Ts
	 BMrlW0K51DEPnwH90fTnmoaB87peV72XF8jIk2kqFPoGSpqGikqoebU3EVsrGw2PYw
	 S2o5JAmZtBacDxXgG7X0nAP7A1ZM7jhKlzaXAd2HcWm0ogBI06KVog2EcXcUFz1oWe
	 sgItrvjE82Lvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA805CCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221863368.28924.8798409422551915434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b33911332ceb67c235fc684a35e2d6538affdfb5f3be4aab20295e3dff07e18
Date: Sat, 17 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792218633
