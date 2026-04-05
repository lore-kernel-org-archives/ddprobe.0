Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2676E1A267
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775373934; cv=none; b=Wn+pruGWAi1qEEziMOvxSkaP2sRhF/X77GZ1zkHS18CYRoptLs4Jh4XgZLZsHUhg6SWBI7s5rADiFjB41chIRl53i68UOGmMhaac+y2Gc+2KQVTsoBo0KVfb+WOHiFTPncDLWcPbU62IkdfCqRBTZr+KSisbY/YuwET/gcsCfyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775373934; c=relaxed/simple;
	bh=GsB/plSQHotCgNd7shKsRKbfd4oT63Ik6Gv/6u+6Tkw=;
	h=To:Subject:From:Message-Id:Date; b=H/m9mjEn0sCfrmRybU/Gt5n9bNFSt5kOpizu8HNXkHdbC9IqpcbAyXnAkcFkifI316US4U3BqT1bQeju4+xEXj8AFwQRMuAFWIJ8nkxEyQWrPZZ8I5zFzlzWreo5ZrJpy1dDdPolMt1/+SZDGmtnSQnb9/8bqY4gxBfclU95dN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLk69nmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLk69nmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C150DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775373933;
	bh=GsB/plSQHotCgNd7shKsRKbfd4oT63Ik6Gv/6u+6Tkw=;
	h=To:Subject:From:Date:From;
	b=GLk69nmoq+NQJDcGOB291geB8VvOkpC2E1pKDmjMg22g2A+HThO7D8Gu8Vn1XBTHh
	 RFqoeriH4arC8uyQfDeLPSHrWB29GbcUsMPy0idLiM8ob/fZfraRPvH/+HSimOoCl7
	 gd48Z7SI7+7jr4tiRGWzuHxaNxld2SBx/nVFqOlYOpflmpoEyf9PUVC6Bh2WWa7csF
	 NL7GFDXU8KOgU04NjLygo0xWH2blFQMPC/UF1c56KOBpKKSrCD0sUNiBv8G0WzrnQ6
	 1vKtMiiCDBAsXSjkAuKp3pm0OQquWOgSyJhSssFBWQMTJ3zUZoktVGP/GgHSMWQjvR
	 9cPvTOjvzIYOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B029BE64002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537393370.30382.2327987188299925220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f405cbd3fa7fcaa13d80b6dd6dac55fb70dedede54cf97221e05d5bf3cc332d3
Date: Sun, 05 Apr 2026 07:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775373933
