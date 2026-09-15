Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8144AF69E
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789487434; cv=none; b=AbmnlYxXO16H95tPOCy4LFuTTnHgdz4TUjfMu7JrlGTqVIp8v/snKAPHfysfTtlnia8dQcEIZFFJbkM0fKuF1vCkV1nqQkynsYhl82qEUjyNZgZ3nfBqU+qaRESt7zjfEhOgelDf4DUveuwvBlF/QwaMAXZ/IcdsIvOhNJqT01k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789487434; c=relaxed/simple;
	bh=EA7nNrrxzleu408wbM6Tt2rPcZZ4F6+xusprsGN+4ZI=;
	h=To:Subject:From:Message-Id:Date; b=N/60FrzbH7rdEpbN5q7lqSEGW7WWDZ1AIiUVla6AHOZphXqN4gph+y8QT//FWZ4pkHBcOU1sU5qlZc4TZ8EyjXXisjjzjo8vZr2tBGPVOvK+C5asdyOQx11XWDhhmTB05pLfOTAmtrusjAeXglSVGWyVZ9Vntdx0PxfoZAp7RgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRbIKMwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRbIKMwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF920C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789487433;
	bh=EA7nNrrxzleu408wbM6Tt2rPcZZ4F6+xusprsGN+4ZI=;
	h=To:Subject:From:Date:From;
	b=RRbIKMwgvrlMvBjXo8HhVeAZgb5pKTJ+lqx8/igDD2DEPkVYaNVGftDast/+dLL2Y
	 VSN5GONkZQiTjr5XjJL1qV3FzjhDnYESnJxjXV4jv/cCOYGoSQwOrS+0WLqvdf5Ci4
	 bf669KJH1C7vo2s6BdFVIdoHD21lNrWkAFCXivlUaApi580PZK82iOHGyyMxaoAPlW
	 S6tHEpKeH0fUt2NzP3pOztyRe83DdPTVkmCrGcf37YxfBQGLatA0g+4qB/reGtVEtd
	 2JFOWz6QxLA6zO1VIIBcgcXgfINiiZFr0D9+ksD3Q/wmByLt+6jB9/sQ76aUWCz3r6
	 SImBW6xJ4tmTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1A7C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948743368.4625.1163294706492458471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a48339579cf22c697ad9ec329722ebf47557953c0bfb8e65d05ce160afbbb5
Date: Tue, 15 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789487433
