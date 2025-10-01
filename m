Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036A71F428F
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759346395; cv=none; b=oTb1o1+KOBunsSV6M00Zrl/Tn4vzUgIF53HCC2YpRh/5sFVjFE+vJbsk5KTdzIcQQE/mmMGc9bDJbk84wePV/ppg22zZMeTA7nFczPBTr1k93ThdmrmifAcVumV1YZybGnx7HbiAjNTqhEx7EiuIo+txAGJdgvuNzcDsCLm+f/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759346395; c=relaxed/simple;
	bh=N13GvijFmIYwYHdplv+BtfGtqjU0UFTp1fzswBgWmj8=;
	h=To:Subject:From:Message-Id:Date; b=CHdkmZzS9dqFztESH9Wrlr/KNwx7O3EAbzdo47WUbDC4V3g7krD4nw3aoqiVWdpCUzIthHLmWc3MqLLfrShXiLTdqAS3OHNRAvHrLGJDU2Zk1l2ZRttfzkijWxoVfZuYCvnjU1rR511Xuwlr1Wyou50m9fSaPGkAWu8UT7/wsvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVMH2H+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVMH2H+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12CFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759346393;
	bh=N13GvijFmIYwYHdplv+BtfGtqjU0UFTp1fzswBgWmj8=;
	h=To:Subject:From:Date:From;
	b=ZVMH2H+xbTmHQKK16tnLFMRnhLoDwFjtn8ZM5qZ0RE1aPNUIEELBrQ8sogUdbE2V6
	 t0C2AkZQeEoXVtZByJutGfz6HV/PovPrLK5cDa8LiUXOc1SrNCXtCD5XA1mr9Lr+zO
	 1ugfGkF/ZHwnQvIsfrnOPRaZCZMoDkpT+t3gHlVOWg7pzqQcHtVLAvIs/yks8O2kGT
	 Nth7nB7a9ynFk1iRj7Lj+NOCNt9lAfsr5RsMiaB/NcObDg/gHbWQNvVMwlZeAOmlJo
	 iuJCuYCorUr199q4uHvVYAZD6GwzjkJjrjQG88M58k8LbtKTLkvzNfCBfzkiOTvLEM
	 j7e9DKjZguyIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F458CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934639357.5355.13109416967880079589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c5aabcb2e5da9970066ba98d9cfc9c6d6ecacb0e7fa26a09e3b4e5aace4e75
Date: Wed, 01 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759346393
