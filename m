Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF0ADF76
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752662994; cv=none; b=i5XRRarSkpuD0dNS38hd3OfFd7NEOmO3z6+k6FznPSccfFrPvRidh5sMykoq0HZL7AKLxKyAatCox9o1UtnCYO5ZKY+EKjI2Kp6gV6xriKXb2g1PR4vdbQ8w/5pm97FCq+a9HxKmrMiHd02gNGpOzvxV9pa/s9J0hIqfIK9bfSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752662994; c=relaxed/simple;
	bh=92MDip1+HbjZm96yBCYUXhCz/QGUCAlsmBGwWY3zPMk=;
	h=To:Subject:From:Message-Id:Date; b=RSNf/9rGdyOUwTkhgrZ9AmwxW+sSz49vzE1rkkBGmeluIBYHlg60qygT6ywpIayN+fL2NUJJJeQ+liAx+WcWGh3zt6x55i2zjn04Nef1Bo10ghagHzP25NeYj3OBM38vte+MRkJosbGU09SgGNJglzvaSuw/wZTlN28+HE7lW3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScqG4qgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScqG4qgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C57C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752662993;
	bh=92MDip1+HbjZm96yBCYUXhCz/QGUCAlsmBGwWY3zPMk=;
	h=To:Subject:From:Date:From;
	b=ScqG4qgiyN3Eflqk7jUgb/tD4gC3b2aj9eZUUcLGFK6n7W2rl4+HqjTzmvMC8VMfe
	 1faHoWKaQ3ZPdPbI8TiGC7aqWBN30RnDJ8qhiIEzCaGZmK1C7JEwxIM0BKYoptuxby
	 Afx37xgsixrHF2+yVYxYz0a0NaBvZu2XTwQKYpw+rcIWpgN70UPOLMarjHor6+XiFm
	 UAYVA1OK/sjQvQBG7J+WfeYtMeSTXlplvacC/NzK69pxASanJ2bXp6vJeZJ9TIZgDH
	 FAjIjISWxhyGzGyvNrn6RsbnaRF3wtunzgLmJJt+pEyJPukcotykerxSeNzM1jxezw
	 yqh60DdC89dhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90909C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266299358.4230.9778335381239834964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb5eb73f27262fbd8164ad2c2001759de8125f49f0919384744c2b2e056d539
Date: Wed, 16 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752662993
