Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B823221271
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770733434; cv=none; b=NSz1NPxtk/d7ly48jN50xxHAk5pD2qNMHvXvqy3ExWzK+ieQB0HFhlE7H9y4/KuNiA1Hd4pwiDOgR9dCNrh/7tzgnqu/jHntD4fFzO8NeWXZV42EicgFcDL1F0dw88ybWTYMXtTL7L6Enhit60LI88CZHVhgxq+qNYk2tkVTs8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770733434; c=relaxed/simple;
	bh=sSgkk/IX4dmga3MMyFzRBtG6aC0i7q52AutP+NSg8Zo=;
	h=To:Subject:From:Message-Id:Date; b=DfwG6m4+ScNd4/T1Mo/ZsWxeAh9WjuulZu5RpRvqOVIIOSRdrcFZipQezM188LpjJl/Y9wS2cPZIMb4zoWtv8wjc902v/7HTM5IOJBEp8tofDV/fzFk/jBPxBC+7MRrXZYG0Ck8QRNywa2JheRDilKy4xYOLm4Myqd5xb9zCMog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxYubwY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxYubwY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A1BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770733433;
	bh=sSgkk/IX4dmga3MMyFzRBtG6aC0i7q52AutP+NSg8Zo=;
	h=To:Subject:From:Date:From;
	b=fxYubwY5zid0In7rLXBqh6uIKbgJmve4irwdOvGS2u4E13ts1oy1xF9/u6lEjDS8T
	 3ct8Cfgq5eC7e6KhySjidlT2DHIVxDmh2Jm6BzfGaXb/IYpg9I1b+OSSpymS2v9pf2
	 BGdSTtBbdg0maN81f84hErqVUGlSjUKA4xMyXfdiZ0jc8rz4U4FEEbJl/VfmC7ZIvR
	 Opk8s60ETn1r66cjU0WkopDBWJ1F52pc2ZbwpamX2xTfP1wVKJggmvI5ggz8hYE03x
	 MnNhglmnfbj7wOvOhlbeJStreof9sfTiUPt68/5Dppj0t8VubiClX9Xc+lLbeNIJ/W
	 rB0w4+ZnliCsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F2EA8121
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073343358.15069.2062808170513943272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ce8035add3e01b3baae2a5728a896199d620c0dbffb9bac0f2a299499cb955
Date: Tue, 10 Feb 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770733433
