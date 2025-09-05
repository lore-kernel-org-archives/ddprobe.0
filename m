Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2362C31C561
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757095794; cv=none; b=UDz8luT09xxK0Eoz55PORJwsSU4ZImJkOwWqODbvlzuPLE5wSCmMlTppV38SGf7ZjUPp3u2PXTHH+EnsYjFvFkoStwIHtYDnFaeoUdgafCxzNuuGZkvoFY57mp9SH1JC4aXFbw95RsszkMf9xpss8VXMwrQvJD1RCb5ATHncdAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757095794; c=relaxed/simple;
	bh=UtYD9Xkk90Ssl0DzVPNOjU5W+oaxPBHHbiehtx5UhuU=;
	h=To:Subject:From:Message-Id:Date; b=AQsllGY00ojKS8TLzL0T29DiPFKlQG16bTOcM6WrDEo/E5REtww0Ntect3VwCigJnMVrudysQApyuHegRdCduDCGzqgcCyKTMJNEn97ibkMLfbey7ZIkOKVNWWvTqmg7sl1htSdOMmrGpQYtgk+o+OU7FnnreC8EB5SbWVQkFK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lviFiCUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lviFiCUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A514BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757095793;
	bh=UtYD9Xkk90Ssl0DzVPNOjU5W+oaxPBHHbiehtx5UhuU=;
	h=To:Subject:From:Date:From;
	b=lviFiCUQJmwMSGCQB9GpRuPoCgIgp5XNIvb6tY//HSMmHJkAg9ffXyy+anEWTa/M6
	 n7yk7X3BZkGyX6Uvtlip6iQY9O4uTj7nSbvGGvChoa2/9RRenFPNPDkN8WqqBlChN1
	 fphOxnt+ydgwMq9ZGBfyeHTHeKrQAiaMVFP6SQjqJwUVkMnr8M9vvTvpBvYoexLd+F
	 56o6idk7e6dwyoSKHnmZmnKH46/Q2NOZP2PovYORXCWyf4m9LyGDteuDub7KmjRJ5W
	 yt36TGL7poewIDUexVO4/Oe2UFPF9yJhivdGhqVcZjMxqW7SFm2p1NSjbkrpvYFhLp
	 nBSVm0ym9MeRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90700CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709579358.25653.12533085470120960797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438b5c167530e8fdb6645bf28f436e676095a911d40486843cadbc3fffa6b928
Date: Fri, 05 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757095793
