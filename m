Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1E918DB01
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775189134; cv=none; b=grAwR/yRRKop/NtJvrXU8BWChzQo1D/LnM1aPDp0U+9mbLAYTPyRpJXRzQvhh5LWhDAThB9V+oBjDP3HW18ciohi+QK/iQ/gLHnmejDvCxFO2GvMorJaMCzaYqlD9TJQ6fVTkfT7uJlsocLKpZR3tdnNvYKTBLMsqUGxCt5w9K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775189134; c=relaxed/simple;
	bh=wZJoxV3ElqnOTmK4X7aFiuyUjNyDGz24fFqLtafsDVY=;
	h=To:Subject:From:Message-Id:Date; b=hVGyZcdBLlQIY9fiULtX0aBm2axlZC3Lh8+C/2cYuJdSjT72xaC1IHBC/RAQxmtW0YtddtsjMQWgS8CaLf4ntvwVm4thAdj45OVFfG59wFbMtpyFzV77pNhf8yun6cyLFQ5naCgRu6PVfZ3KO05rwurrmCreL8O7B7Itm5AVVf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1cRIoKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1cRIoKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6650C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775189133;
	bh=wZJoxV3ElqnOTmK4X7aFiuyUjNyDGz24fFqLtafsDVY=;
	h=To:Subject:From:Date:From;
	b=o1cRIoKvWcVH8UvodmFTHYJ/tQJBLwyR0Z+/DNcvExsFAnrzoel0tEWjMYemHJYoX
	 P14+K+Pm3jIBq2+ldeGUR4FHJoyqHf1qYoYtBFpFrhysxbcCGmybn/YBpVKoT33hIO
	 uR9aAvyxWw6qUuEbgKqCk/Lgp0kFiCb2X6LU7Rs9OEfsSeiOqxi2B8xen/l36A1r5D
	 9pvW5EaRSaHM4g+9h79NNzbvVRf4v3rssRG66e45OBxzt22PBqW81O7zrkdLrcj4mJ
	 BBTWDKoamuAh3Qzqs7JmC3zq/XeVshhUG6WWfcUW5YG2dk3pnWv8Wvszki+WyYKdj5
	 FIcriA93UjJKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B1AD7308A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518913370.13298.9815308727671667722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c098bfc1d68780bc722bfd592477c7727cd919772caf79b2f2c045375bf4d3fe
Date: Fri, 03 Apr 2026 04:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775189133
