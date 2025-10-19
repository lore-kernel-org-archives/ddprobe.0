Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F21635
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760849394; cv=none; b=DlmDSZBi12RKAgDIXQDas6fIaYVrF82Z09slO4jIcwHQJbB6vEeg8Lo8OLdIWVZmDdl3KdiQJCgAPprek2pb30R4dlrH89LZ9uBUKkpfIqNWFzCqjZZW3WX8dUSN2PY+XTFS3iwGkLgg3WNB9PDbjx1rmUBDRNmvMRdsuZ9QrvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760849394; c=relaxed/simple;
	bh=SkqECb0Mfd1TluB3yPjIVKXlgXigi5ERWl9xFMbJJ60=;
	h=To:Subject:From:Message-Id:Date; b=TNL+qTU8dcra7b5raXT85gXsjklwEs+pusz3ehToTgzgmc1nnaqGOwYMzAsoLwlvzGxzC3FW7BFjBk69XBnfhFbjPtKRXtvAuDtmUcTlgf1CpCDXT6HO+ODnUHyKffckQ9v09BEym6G37YPTH1uhk/XKFmh9eKlp5m3c/qnrpp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmDLjUJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmDLjUJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E83C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760849393;
	bh=SkqECb0Mfd1TluB3yPjIVKXlgXigi5ERWl9xFMbJJ60=;
	h=To:Subject:From:Date:From;
	b=ZmDLjUJZ85aN/Md+jsXQ5f1tIdI47fp88yAyFZLrURFMjAjfTgScpVoiFHzAIN1He
	 6+v1N7ttYWRmZKCpG4CXXJ4p81e6d6f/vWxdFRgtF6OTFiJwsXuUC/hI/2SVm4N91Q
	 RMvtYC0UOgQjnAv2nNpikzoBDV1CIvtOGYMFaPikAMgUGBrWqw9xE3QtRJRW33EZiJ
	 TrvWVNXcWv9l/GSeLH9dLM7pmVzrgsKkIZSpPPtL0elhPg0MxAfbUpn0NxhIogBSR/
	 oacu4XmJhoULV3717OgGPiyR+m8xmphRNrr0rTVFxDiBHK1Zn8uWuBQVlrvz8t0TeM
	 6Dy5TtZd4wpTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98368CCD1AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084939357.1705.17968600072189174671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30746dac67c4474ac4de2250accba662d0fd22811f346e5c216fee74ef09d34
Date: Sun, 19 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760849393
