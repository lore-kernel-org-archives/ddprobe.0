Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CD8171CD
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763605914; cv=none; b=IguRJ9ztoiP32/4K+qi42uvzDCwB/FuzzfJA0ECZanXVZf3a02jSPG6PtSFeeC8SxL5xW1seRbo9JKkTxESDj3otSh4YxvVB3feJTSlro32izEF0f+a9Dlx3ZJvjxMLPvVkgWKSn6ePOKdEorICP14QEObQYlXhsOOqyxZkvvYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763605914; c=relaxed/simple;
	bh=fhpoWUowmwg+49rjl78gJSqZRUB//gEeVHQxO0VYtEw=;
	h=To:Subject:From:Message-Id:Date; b=Vi65kMiMr95DZy/mx86AK2CasSE02QXrtchE4/vjW6TzQMlfdi+1xrjXRjkuVm2BvF1R8JV2EFiHDwECQItF1PcFgW/Al62WUptvOlCvnqR7fX364S/eGxM6wN7DXX6sKzjQ8doEqXjCjpJq5J7qwCdKe/5MfffBy0yIIMPQVIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVQ8wdak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVQ8wdak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D27C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763605913;
	bh=fhpoWUowmwg+49rjl78gJSqZRUB//gEeVHQxO0VYtEw=;
	h=To:Subject:From:Date:From;
	b=MVQ8wdak+mBLcB3j4TS2Fu6Lxpkejl4dU76solstBsLWEnBeO+GxiQuYPMPotqeIP
	 kaMddQxz0jmjbTTQaUfVYpBQzpAcrOf8bVQMaU5w6ZkddUQNuHCC0eksxToyOUGz3n
	 XpZPnXK4rEPN1D3EjPYm2MB7WD1s4a9+qGDlU2H/ZHtx/lrKo3cp/QxuYjk41MkOMN
	 HIqQCPAgQxGjh6HFvA8IIRUYSgYOGqtB4zZsdwLhlA9xuvd4NHstYXRqru2W4zTYuZ
	 xV2Pco6/VlZiduT+t5HKxgtxxhcRFg2Yra0pdkfsjvonIIwID4BuKVQcFz1qZSIQ7M
	 94byyxZd0QRSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0688CF64A4
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360591361.16535.2199611354510706775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8405cc8c19019a710cd9d09cefab3601b9b26713abaa80af92c5a39b89b7435c
Date: Thu, 20 Nov 2025 02:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763605913
