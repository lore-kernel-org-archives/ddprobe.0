Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4341C1624DF
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783388914; cv=none; b=ZxK4IGqVVzvSYBnX9biWmMQs4UY8ffYLrfy9EpZ8qSBdz5WMxg7FmqgEBrIBf60/BXBV6+ZeJEzVjXUVDIE4SLG563LBZIwhIrsfNAIG3VLrHcT/v5600Udn5297bSVOpkkHZ5AbM7zFOAj2eO8IEMIuP1NCP6WgGYamWgKPkYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783388914; c=relaxed/simple;
	bh=1FY1o5msbJrPEJ+dvaZymgE/exxvuX9Y6WsZJlCT5bI=;
	h=To:Subject:From:Message-Id:Date; b=uxPzlIWHycNwN6TjYLyN1eoTqcTmZlxo779xvyDJAtaVG2nunKm/w2wewDGJldH+sV9DqIag2x5nF6TeDx3X5o5tnVEcpHTEI0/o+VinvVqwjZ6ie/CTLSE08yERvnJvjh6MhPYv10BRDgdXHE4L2ekN0XZok2JSv+bFiKoNW/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Noq7zNo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Noq7zNo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE5FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783388913;
	bh=1FY1o5msbJrPEJ+dvaZymgE/exxvuX9Y6WsZJlCT5bI=;
	h=To:Subject:From:Date:From;
	b=Noq7zNo3sr3cPatciNoGFHqXkPgYL8jcjkGoOoxXKp0tQakT4bsqxjTnEmnmzjW+F
	 /Fv3D5yaAvuD7olix5FpzUUhFBffzNWdIB1nZnyuy7MMofMAjqrh2s7OABqZ+H2K3x
	 bEQyPay7jgCyXufU7Z4YSntwx9IW6f7Wm03KFwZQQvMxg6dvv3iVzp/1GbmO9F0xXG
	 nUocB2RwCgILqucFpzggFRNkSMeBg2OwUvB0Z7RS8BjKBxJitvvgjUj6/4k9agi9aU
	 4x42Jf/kVfqlseuEGaL896jQYbcUmuARJ8I3m+BVkBK4J8gq5qL9eYTdymIhztTh67
	 dUhRMRlPxW7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82B3C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338891368.23071.13944562673746517947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2949b0efe269f8d8935f7160c5ff8d3b9f480abc8c2d258441bdff265b1a813
Date: Tue, 07 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783388913
