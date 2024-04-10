Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1573A4C6B
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712713097; cv=none; b=rcyewXlmVcbxT3dg4eJjq0uAfotLpRUL3IRz1WQLsVazWvbCy1Q/XBxsUjuglMYGZ2cG7Q0+PnLgHMdZJHAC3M3GFyEX6arT8ZMEtD0sekpjszT0tZQTgpuLc/ePRqcUxk6DQDmvLeDd1QpXvM2hZoEMPVusnO7CfRrXBG4z9Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712713097; c=relaxed/simple;
	bh=i1h/ZuROn9HTX/Svba2nHatgr3p0jtlGrWhyOu6RUp0=;
	h=To:Subject:From:Message-Id:Date; b=UfHVX5kqPBIN9NVyGZr0X557WTK/Hketl7fpbn+ch5fuCNAWChnsnB8GF1vghjFMrHIQju0rcjMIr7AsB4j4PWBGbWjQ1UfsfvzT0O4HYhuF2W5ybvbPdzKWuneBG6PEHzsPs7xGhHZ9HgdFhsZMudaKBR3sOuBMo4VcSMSwLO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=degieZVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="degieZVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 814A9C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712713096;
	bh=i1h/ZuROn9HTX/Svba2nHatgr3p0jtlGrWhyOu6RUp0=;
	h=To:Subject:From:Date:From;
	b=degieZVYQyv8zcxemjJDDFqgIphechVz0GZwMjv0exY8IS3HhO8RkfFbvhfASewmn
	 w53ZxEdBMnxPcVMTBcvRHjuEJCelzXe5zDyX5KWcsi07ucBCWThqoseW4VjmNtGEJi
	 6ffOSAjsz2ZKTXVSngrOpSYKqqwMKRU2hpN5BOWnyybf5L9HWK06P+1sDBQQ9EZhMr
	 nkrIQX73iQuKTMIxlcyW0tjPMsUr1++xgMMLBC/vUVTL3uKWMEUPDQMX9D4TfUidHi
	 pEq7sgw9iHwidcWhw0+DBeeP0jt0kdVD9LAkoGl3+8uiptuLjPU80oWdzpC6QWjGB7
	 gfO4GtcPo+fMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CADBC67861
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171271309642.2109.13543145750696967473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe8b605d2cd015525454728788891155d7f51b020246fb2de322557f7e7b3d5
Date: Wed, 10 Apr 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712713096
