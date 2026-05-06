Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AD83ED5A1
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778082454; cv=none; b=SkbVUK0H5lzlbu5WKAd8lCh7BtYIHQu/Qtq3jIMGdTH392Dj3Q/ABjah0h38lfKc1Z3LjXF95wZWG2hFtFk97gIed6HYTutBEb3IT6n9KOlNWubsNn9rvf5T6CP+px+lLgVY7znrufJs5UggRoSaFaDIIeN6Pw/Vhk7NZKQPNCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778082454; c=relaxed/simple;
	bh=S46huTAiMjtRKdXTj8+wY5sT/u/421AHglpctyjmnIY=;
	h=To:Subject:From:Message-Id:Date; b=Su09fyfbVD7/sxgefof/f31jmN1l8ndltQ2F3fsdnlT+dT0FXHqe3BTYWXerJam6f/c6vs6tuEPA4HzMVpkNov1jGjjONhHE9vew7nW7GN/PoFyTsGxdNEQnREmebDgmXD326uKgKVO5f+FRHJKqaQnSb0Z1fuw0wBgzUg8HkoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qj7IGYTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qj7IGYTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACC0C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778082453;
	bh=S46huTAiMjtRKdXTj8+wY5sT/u/421AHglpctyjmnIY=;
	h=To:Subject:From:Date:From;
	b=qj7IGYTUZULT/sKrXtZIz9PygZhvqf3WNTfr76VVewKABE7QMWo++kfUt1PvM6XAU
	 7okynWWD9asekAOOJpE0zDT7aIAvCNifngztykFq/SIRZmmoZXN3mZD5AqxvBe6//6
	 5TeaB6elEH7nK6FlX4WMZbgOAdDu3gc1V05Sv4wyAHnU4481vPYm4VYa8npic4pkZk
	 bQ4S4nyJdVZGeM4mkZwxDAW17ZmECDeqf1PXOU+febYTRxw6a4tmaWNRUa6NCKh4z4
	 yG4MFYxbEsMzj9Pi9K867O65c0d32Wuydq7xVh/Jir8sbUnbbvXf9XKF7Fu7BJjfvY
	 rDV2mtOsa2r0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF59CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808245369.27593.12518000435079577700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91df82ed819e6729104d6a40b383237bd936a653a3136a38f492b8669817ee6
Date: Wed, 06 May 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778082453
