Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12407292B2E
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772264094; cv=none; b=CS/yqV2k4O+/ppXGRNmX9r5j628A5qN4WkmMXAkH4xnvhQ77UdBbTS/PakHWFrkRJ1Cjw123G6ctaRUn9mIb8Pr5Fug0CVZz8FB+fcuir6Ho31oaVFmBDf4WWWs5yfTPoYV5HK6EyFi85gHShwIZjNa/p97UPZpFxwdt86ySpdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772264094; c=relaxed/simple;
	bh=bMn0AYzZUri6k2ZzbZred7/YxsweoznOQ7pmvIqle8w=;
	h=To:Subject:From:Message-Id:Date; b=AB/8d0u/cfI6lnVMpLOv+casltIm0ImmN39bFtz8bPGqMhNQvp3cJ2DywhbeKfxAYuCaUSg/D8s/y/f2GHIuIDxF5zs7Pi4NYwhx5U4uMlg4xokHhdPgRCYoHxXzcaeYJPZ5GQm9KVbt0fg3GvJNeaXD1m6hNni/VgjKxh4LeqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpRpbbd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpRpbbd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A642FC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772264093;
	bh=bMn0AYzZUri6k2ZzbZred7/YxsweoznOQ7pmvIqle8w=;
	h=To:Subject:From:Date:From;
	b=OpRpbbd+IfEWuuGKF4I35qDgKgUjM9jPHiZ4zSIYySYyVWAKXUy56/39u1LgF3t48
	 otTxEbEE7sCvDYJakYnqxGTsXl30osEOs2MUU3dDgcH1kNtiQL+WEuQQ87qyku9nDv
	 p+D1gq1kSG+eqBlewrefwDxt/ZQhzliT3ZCX7ALmr7qWwHse3UHHnKGPzLH09uEA7g
	 WK6kUi+JqqvXs91vyme+Nh33IEfXj3h0Eum8ds/y7Z0f0T3WdesDZ4evL4YVZUQnZN
	 7Vhc70DP5tT0EYR0qtSxtIMCOjIx7RqiYvOBafCrXP3xlpMaYr9KKRd0VqZxvah0d1
	 28G46oq1EmtQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91880FEE4C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226409358.9093.1139716773558195985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba974d84a882b673725686c3f6943358b6616817dd18355b9da6aaceec94b8b2
Date: Sat, 28 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772264093
