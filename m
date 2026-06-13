Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F633374728
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781351194; cv=none; b=jP5uANo96g3VPb5dId0XB+97GGR6ZaXsP1e7+5tS1AcmNdTd+uq9JuggvWl37OzYVWn9yhu7M1apzp5NGghUlUkKAMpeWwgAqIcRmi6DGo8qcnFevy/YMWEbgQ4rRpGm3BxzyoHhKDTQkk1xfbUns7H/vTCd+0TV7m287q8LRss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781351194; c=relaxed/simple;
	bh=ZhxhpOhpGshd8wIft9T4xQYq83zNCSAw3i6tpOFnoUY=;
	h=To:Subject:From:Message-Id:Date; b=tymdCv2Totx9q216EJ2r8JmFjzTeYSvA3v1VgXiW0BsVGNkGbjB5Ap4GpNEwgG6wqQkktg/NKRfz16mwwtLZ/unkyb5jxBlLN4m46qC6vgdjvq3QzeQdnPnY1R0iHBVNgV0Cvhn24fHIb3ATR7lDslf5GH9+i2VT7GKbK2kjj7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbNLC2zb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbNLC2zb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF243C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781351193;
	bh=ZhxhpOhpGshd8wIft9T4xQYq83zNCSAw3i6tpOFnoUY=;
	h=To:Subject:From:Date:From;
	b=GbNLC2zbfiuA8I7DiTDayS23BjOMQlIbMW7hyAOPhteJBr2Jlfj//TxWXHZWKONdp
	 lu9lrEsvzik9Xdn7HrYb8h7d4b2O+xQgyreueb40VLOQGIqhRFjsH8N3G1oGsbso3z
	 xR5Rav3C1QRtb3B2butc920lKdhjimQoDjtqw9hZYGOwaxXfzskBqP5FHFhT9pvx7H
	 sehhgzMiR3bnSscsiHSuXU83YQvpU7+WsPLRxIdzwTlnC3gXKqwjqxqykfVb1CK7EY
	 WOHHXTvF7a7bsxVlyDrE9LdfuRRvuRF4n4pEd1wskhKcV99NGRLFAOe80BYXkyorvf
	 K/KOtxni7U2kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F49CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135119368.30300.7131477852158929145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2454abed2d5351befd7114da83e4af70791585fc89935e8dacd5ca1ddd03654f
Date: Sat, 13 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781351193
