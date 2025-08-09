Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19954268C73
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754752194; cv=none; b=fUlPlb8SjiStPDMLyUdc10vIMUwsrdqFmsbhru8jvi+aIsw0wRpXP8tlgf8ckw0HwI6c0VbPScBtrnTVg7B7hcrxlrAZzNm4POAxx+VxS2lXYetxjGWsd0V1u6mbatG6miuaIh0it0xvbFD83P5qFevJBxPxNmBOthV77RJpCTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754752194; c=relaxed/simple;
	bh=kfQVbqGefej03H+S6JRk+do8OYoMMGKJv1ATZoccVtc=;
	h=To:Subject:From:Message-Id:Date; b=tjhTqEpUKRHF5HgmYEfI+rxc4ETR+mOA0eama8uKZCtgtaCaYqlRcUnAe8orMRVKFzVRzI+csBmE2iSIMqOc8fwAQ9KkCy6jfRAuLeMZS1hUlwtkGvoTFTsFnGO5pKAJxBtQqgWL3KllAy4q4i+7LkMu8y/PNSPlwXUQl4Vd6Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2Jt0j+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2Jt0j+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD91C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754752193;
	bh=kfQVbqGefej03H+S6JRk+do8OYoMMGKJv1ATZoccVtc=;
	h=To:Subject:From:Date:From;
	b=T2Jt0j+fKrOTkmPCKrSQOWGDiiDX5Dot1PkEFUb8IEUivoBA+3iAVuyLTCINorWZA
	 M8mLdt8Af48OD0xVY8Cj9dSQxuKMPO/cdStZUfqhcphNUrEcuzDJzgZrIazd7iVygR
	 +JgOKOAcivgLb9G45hLtp7uW/xCTUXdESrAWftiH1UAKJb3hNArBwtIi5olpHFrVRh
	 2hzJxQ4eWqdS1G9BrPtAPBPSgZwn3nR5qO8XeloXV0KNDi+SKhpES3mhCkWAABcLem
	 JbF4Pkwo1Gziqv8EKAnKEgISLZr3etgHYBhGpEnVIVDTqah+gzjcyY/8qvrrrLbuYe
	 CgbwcCUTlSYww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB9C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475219357.13345.16614355048690506352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dcb17625d5895862d57b68814bcb8730142d18c8bb27e2a155e667f1e6e50fb
Date: Sat, 09 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754752193
