Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3196A2741AC
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764060174; cv=none; b=PDkk+HDZ8UKhY6EMBV5VrOnrIKt3jYqg2u3WUZOZibYRz0XXV4WMl+bhRmZmHTp9IwPNfAEv9l7zZuiKrRPYf3keY56oIibJdbaLJL54HsROWH2CBm7PjVtyLDt1S32R/kLRHfDEVpVYYkLw/SVuuqUhdXsztO+xLPyu/pT8Q6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764060174; c=relaxed/simple;
	bh=+PxDNkrzuf36LT5F+EmR6J3XKkWEvjo7NlJONOUjK/4=;
	h=To:Subject:From:Message-Id:Date; b=jSqkKCE91UGYXyR9SyP/9vzFWmJN99uHTJYr3NKhb5faRykstbZsh8hv5uRTVD0HwBFQ97VdFASwQ8heh/jyDkLW3PLT3eqkz3glArG7WbHXAqtgu97WMKqYlZAaEax/CP/BbHJJeRGkIKEZmHT2G0hSgefYGoK0vK7bqlSxluM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBHCZSj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBHCZSj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0277C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764060173;
	bh=+PxDNkrzuf36LT5F+EmR6J3XKkWEvjo7NlJONOUjK/4=;
	h=To:Subject:From:Date:From;
	b=NBHCZSj4GFSHtxKFq53xo4x/qfc+W2K6vzKY5grIjnk50knlGRZ563LAXShPpAtKr
	 RAy38nlXcgrvwVb18xohhwmkW9t9OHKOe5qzFbAcwIA5eaOPHvqIWkdRAtxSv4EWK8
	 Am7VsKBFkLkB2Uqp7bTdtVZSAuT1T0CkoBYpva4BiFQUbShBBzK+1OecwBn7kd8FVx
	 guDftW0KlacSYrKaR6dNt2Cz1tSryiHRRotCpjmGI9UZlXVP0WxBMvf4cOedd1K0c1
	 fAtzzwolriVznhqhD8LDm09a2GcN3rsld5T460Cjg5hvO8xGiancB68C+vzfZwx5YX
	 g4yT0PNNDdwFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C8CCFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406017358.12918.9443149706087957987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04d17543c411b1725cccc7524a2c47f3bb54b0953c7521971cf7e53569aee93
Date: Tue, 25 Nov 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764060173
