Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BC533AD99
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780518874; cv=none; b=ku7sdVZd2zrPX0F27fVKciDHo1i1JkeaN0hUoBN5wO8eEgTdNlk7SL/db5viq+SXn1gEvQQX+MNxPq2rZ/nd/AuPu9zVR/DfauGJ1l/h5i1Ql3ivqQd9fIvPb13q7cZihv4SY2ozMObCpwGMVytH0FiSbXT5leb4bnI45rQD6Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780518874; c=relaxed/simple;
	bh=fTS4TXjMIA6Buf/9G+g2cRWd06AzjXX0ndTTX1bBimo=;
	h=To:Subject:From:Message-Id:Date; b=Ch+5U3qQEia9m9PpxVPbVZdWlGChSsxP2iGDcWyjcOutYEJVep1MAq3llzetYvu1Y0lB6sXaD8WIag5yvNsObKUUJOO3gWcXbnaNbzW19mqqSKVTHv4y8YS/bnWxxGDD1j4kM8wqxC7JQxenTuJ50sg/sh2Lo1A2yDpY8l3zlqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCISxRqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCISxRqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2F7C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780518873;
	bh=fTS4TXjMIA6Buf/9G+g2cRWd06AzjXX0ndTTX1bBimo=;
	h=To:Subject:From:Date:From;
	b=cCISxRqnMg8rKr8uSvMu9WC360hUKbzmAZSILijpC0mDuAXbV2Slf/ZEYxxvMq+/O
	 aKOfctW7yeXMCHzaMfxUR9mKP5Uqr37W2/+7SDUcki/gWu7jlXm31cxN2I91coo3os
	 EhkeSMLZNYfDT8iUIZMUlDiNrbCPxdXD7yDrbiNYfWStfXjrK9AUWZ79Vw1yq3Y7Ah
	 ZNwyNkldzqQwg1gjHIhvBv9i1bjooql2fpHJHwMWNTVTg0gjL51sAbBSmyU2wq3R1N
	 MGZTstrkbMok/Kdv8B0DDECPnIe915hFYfiIX9pYa/OOWQ882Q5pyG6A7/78+XWHRA
	 cIZLAyp5PB9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1A6CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051887369.8737.8690532905831780628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06661f5ab3d8866ae7f5d41a2bb0508946df7694bdf7214d1e45687be7938e87
Date: Wed, 03 Jun 2026 20:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780518873
