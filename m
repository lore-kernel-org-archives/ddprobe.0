Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26602145A1F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766592234; cv=none; b=RH5DRIbwlcoPglfCKbKkY152xccuf6UsWi+yhDr2xvugyAl65Ea0UMJ5UhKoJEEVyL6tIJGIfMu8XCaetTL36axUqggailQLRk++4A+GcSpcEKv+7COmVyzW0V5kKVATvqXLDgsirCU4MHZ3mrOMXqAn35uYQ0rskiVHrxXU6s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766592234; c=relaxed/simple;
	bh=NwDh8HvFmqYUjMt3szd8Zb2zzdLKLqf5SeQVlXnupDY=;
	h=To:Subject:From:Message-Id:Date; b=m+aKyVrK8jh2KxYtsdjo1l2axCmpaxalU2J0JC5wgdt0OVssHgHpK38uEC2rJg4LTDZmniH29fITxO8+MQPCtBSNY7dxFpz+GfxizYxLCMoZxcPiuvdzUpOjgxFFtXjO57QpOOsFgjad6qu/PzMzs1/Wvz9n/kxh8k1OkII6byU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoJ7stIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoJ7stIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A074BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766592233;
	bh=NwDh8HvFmqYUjMt3szd8Zb2zzdLKLqf5SeQVlXnupDY=;
	h=To:Subject:From:Date:From;
	b=IoJ7stIbePzwDr2yzNrMHVEMuJYIcUqVqtTjzZ4rnYhBbbW8GKs02zardifmWhm+j
	 o8V6oeZvk0bt5ceUOiOSmv0En2TIv+qy/E9bk4PJ4ZZHHPODt/Bi9KOoB7BAgzhM3a
	 vPBqSRp5lJCN1yRzhLrpE/U/26wzlQhLEW5qrNRyzidC9+B3a/ytJbzsOKQjR62kmD
	 CYglv+3wBxlG8iZc6Jeoy1WELmW3lEuR6px7LctQz0ytMJCo2aNbiEOZ1PV4+9Ulvs
	 edcfQ0TEcd5F04FKY5CRzW3euqJJb3i6fSdZ3WFtcwRWGEYYNn6P2CJRV61Fe7cGnE
	 DDkIuIGt2XuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F736E7545C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659223358.20528.13921272622808535243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca559ddcb7efa632ed309b4931373cb500b0d66cd63d99f72c5f4aab86909be
Date: Wed, 24 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766592233
