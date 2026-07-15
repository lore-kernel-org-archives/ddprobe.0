Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E98481FBC
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784136515; cv=none; b=CsWQ46YZQq5B0VGyQUeNXuOjGTILHH0DwTp0ae5nQrxZVBw2M4kN+3SyyB2yZBavFHAV38YnpiA2YiRmIN5eZCwCWEF8BX3WFdo6cVovmRsNk0L2wtKDNfsiW5P9KMAjExd/PVxJWqhw68a7jD/xNfvTPuFhIk4Cl4yVYnNfG0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784136515; c=relaxed/simple;
	bh=ktiyEqjUeI7BQSrLh2piUtSrOAR1x6IhkdsQC17xaNQ=;
	h=To:Subject:From:Message-Id:Date; b=t1/u52eLCB5Nd+hYf1x9E5dM2ItEC+oFMmTkxWlCcun0voppqkGrgGWk7vke1OeuzOeXuJHzjA0Cij7E7xYXXMNbic5SQlYKcm7BT6Uyc7j2dg8XpGhmAuStOzO8FTl09Y9tG6hBJDfULLmz+rhJW/rKgsW4m2redKIhF+Tp530=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reRgK8Ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reRgK8Ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFA4C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784136513;
	bh=ktiyEqjUeI7BQSrLh2piUtSrOAR1x6IhkdsQC17xaNQ=;
	h=To:Subject:From:Date:From;
	b=reRgK8WsJa/Bh5hObvOv1Jj3rA7mNVN5SYVQLiv7o26Yu16R04X4fzUg9B9GUtkc3
	 chN8MfnXO7pQ9geE6XDpZQzOhza5+tI2Qh47a2eregLVYxsWrKkFu+SaATkOPQ2ToO
	 t+K6AuDScftyDcAS8xMePBMJeAGC4M5tw7fJqFy8YdQNkmdu7vhuTJLB/c4k7Biyta
	 /dR7f/nlQ8Qdnvbtau/O3sCwMd/qel5n7tjLwAHXOQmgVBdjgH1CzyfCddSME3RGTF
	 s7NV4isv9oLiKUc2hub7A3Pz6BXMD1Ijz1bWiEadyplAoZ8Ib8JNEa57OEa52i6iA2
	 7+y17oyT0LmQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E07C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413651368.6951.18140151038081692490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f25d0d25da4cdce4bf5b32c842452af3586a154b4ba7237d0a190eb176e6621
Date: Wed, 15 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784136513
