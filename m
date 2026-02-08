Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CC51CEAC2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770510834; cv=none; b=iUS07CvRWoGQR7lUGFD6yT+CnDnEdpFRay7Zipjx/XZ3Dggcob1GWpAQM1bkpTADxlleTEOGWyv0ynloeiJzloDvaBe+t+8G0Djc7Fdw7E87jvjBbfojQm3zyqMT4TU3rksXiFQaUnMXlfD18Z/yD9dL9bHrJYGfhxe8akKODWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770510834; c=relaxed/simple;
	bh=I/pFZJ48dvUo40tp3hlLWPlyjIxfj0J+CVPR36LDBms=;
	h=To:Subject:From:Message-Id:Date; b=op2trJblfe9vFa7WqEzDlr907XvfO+yy2MdSq3ESM+dhQ5Z7vUAEAWz0GQ2iinJK/slFfa3au4886vBDEsZ5ZxZurHIL6FUXfm80tzmaiS3YBtdut4jvWPPctNS0Fi/aBYR2MdgxyFVr+W6LORfwzXkmLQmm/7MHCjbxLdNmzQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObwdUmIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObwdUmIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D85C116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770510833;
	bh=I/pFZJ48dvUo40tp3hlLWPlyjIxfj0J+CVPR36LDBms=;
	h=To:Subject:From:Date:From;
	b=ObwdUmIUBXgsb5RW9CMJ5zKIPupGaO1c5CrvyUQreohxEGf3L7ou3iUYo1GFbvYOM
	 Da3IzX5n/a7JrMyu4/UHF7uM7T1Npi7fyXu2gDr++35vsV0EzOCnWGIiOEQfF1v4hC
	 YvhqzUfkeXj+CiE1fAx0qY/ZCe/3vPTuFD6/s3P73T81PZ1+HZpMCTv/G0JieZ8w+w
	 JTi/SJ5g6eG3jN9eRTcqYJqVIP6Em89PcN2S46ictp4ZBG9kVBcuCqPsGmSLxy4mGM
	 03jBOQtuE7skFuidZFwmu6twhvmJPnZnZulaHhlKAacid0xnuo7yLwyQm+RxGFK4vH
	 lcVyy9I7R2eCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9932CEE0AFB
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051083360.18744.15685643350402634866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3dd314d97f6bc4c3462d8fbef0a8b68c4ed0ae9de63cddd873f0ac699994f7
Date: Sun, 08 Feb 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770510833
