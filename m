Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFD32AEFD
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756449594; cv=none; b=S7zamKAMcJYGsSG/dneCcbnOhnSYTGRQBFvrdmI1Spg18VFBzfGx5DAMJHggehMCn4awr48hXGb05PPiKQ5macJLzRcbXcw+v3RHmgU3h9j1kHWCm6MDOK0WHn06ZPZMKaKhKMiPtH2Y1ZFIKY/9JOWDQt0SAX7/olrGZXVPc6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756449594; c=relaxed/simple;
	bh=MpHUBliUq7HcO+u/YGwq7WkpDdQ44PgjYbuEX8Onw2o=;
	h=To:Subject:From:Message-Id:Date; b=gGv2eVFGAgyAuSRV30OQJC9f/ph+3jtJL6BZjcqqdyPTXUcZYnf5D1ai3FUIGnPJWf9tWAaD7dr6cAxYGf/ZVrGS4ceue1X0nEhxVqfuJ/GLpJ4NXrx58nlDe2+lVgWLw1QzcC17TdGhfBH+Rinq3wA1dELa0nu61ltwFzVWFcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VN0+O4rM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VN0+O4rM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ACDC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756449593;
	bh=MpHUBliUq7HcO+u/YGwq7WkpDdQ44PgjYbuEX8Onw2o=;
	h=To:Subject:From:Date:From;
	b=VN0+O4rMsLGsMmtYRbbV09vL25ee9QOPJX6T+SIUKgxZEhsN6sY9CBwEjOnuot08X
	 hwoRBo3G6V0qiqVKUdrI90tgpS+nI92AR3nmrjivYug1aDeVi/uXh3k945CiwDOray
	 EbPHHU+BVrN5BD1KnzKK/yCLC3LVLM4JWOf5YRSSu1jorZq4LQyjdvocYU8U0IHoAL
	 /KIZViR6e2uLNQKbIYkYHG6ixzqoUB90pLFmg/kss8nBdYaw38otN9M/K3vPuoTOmN
	 9ncv9X8Z2kHHV30WxqYyvGQpd2BmGwKNOCj8LlqjKgpDPLEoaymOw8Fgu07Ox8457L
	 p3AbdXucj5ySg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91968CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644959357.19884.15269010530032834578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e924b7759688f1f064718063aaa0c53aee35ea4bb1f466f31e53a16a82023290
Date: Fri, 29 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756449593
