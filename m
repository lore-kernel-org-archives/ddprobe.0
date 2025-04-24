Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05F0224239
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745494193; cv=none; b=o421CoGfFcmFWOEEONRRBmu+GjbfoeGkf3f0FuovAa75G1z0CyF11jkcbX3IkeTXWLx+yK8CTbClhB2ayiBFvlv+wKobYh/mH1v+q78FkXHvo+rQZ3IJzDx7yB76vktnrdNuBkiiGo9w3LCSyc2cTkkJ93SfikfgToyUdneGhoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745494193; c=relaxed/simple;
	bh=h6XQUUCia6J/U3SKXbnxdytG5BxqCA1U4zv7J2gyMEE=;
	h=To:Subject:From:Message-Id:Date; b=fsi5/Xd4n+TR0kCxnNjXk5reomC0ltPcoD/kSb6axryoCpEhPFy2CbwJicqI7FWlRi++W8gvDEt/NCbhLX8W2RM9/VF0KMp5csi4Ljif/U8VijmWtCOLYw2hw3X/A3FwsaqTQnPO6m7myDLXdHV8kMx31W6UdAG9dFzmdUavT1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhQPN73g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhQPN73g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F53DC4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745494193;
	bh=h6XQUUCia6J/U3SKXbnxdytG5BxqCA1U4zv7J2gyMEE=;
	h=To:Subject:From:Date:From;
	b=hhQPN73grgZtfPogHwVBlwaskcMaX5EpDJdfT4RW13eRkQOb3rg6aKdqFwZsua2QL
	 z4taHQqd7+BFXBMQTfgpbUtIzwGWcSMPpAEOE1/MCPU9aYLs5Duga37n/JYomss4SQ
	 +WT/wqcjYrYo1JWF50gHr7sFky0hMmvfluWCiy5yP4w534q3js32GllrmpWy12HyyC
	 nFVqNNgSQludHHw5QKpu0NPMtK/PQiBZUN9NQF3elFCxx8veHYE+UhYalZYwJ1Jv/e
	 F0Gtwknj4/dlsTnK2HfR79Trzvg8NgAenfdh4XthDniv2wUjT+VX5U+BOhDdbVMFWq
	 zPNYj6y1j+WDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB8C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549419358.10239.460731552179316054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ff0e84fd829b77b0d3aa881100259cb366f8012cf62f3ecb9d96730f56b866
Date: Thu, 24 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745494193
