Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6BD30DD2F
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790744434; cv=none; b=AMMc3Vr0D2cwFVrflGDtPbQP7gBV8imGI6KzD5YiyTpzpxlTeBdgtOz3KTc5ohQmq143guCMnYGILqo0pneJ0x0Co47ww0vVXjSsYR1U6IyhFEjPnpSg9pdeuvTvq4Yxgfgg4hmVukaMxMzQOPe0Wdm7PYhelnX2HqCDNX3IPAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790744434; c=relaxed/simple;
	bh=7A3ZOcSpSNRoek+Z49o3Ujgmgk8a93Wmz/xreR26fiQ=;
	h=To:Subject:From:Message-Id:Date; b=CYXi/RUaVLsgm28e980oHOZExG9FMK/FpiMCYo6TNYxFKbJTIATfX+2OrOBKlpXkF+8Kh3S3neeItooVwnAOmjcaLr8ufXF39QlNkIx97Yknht8B3XGbko7W6oXX4JYG1d2ddLd64v29Xz5fZhHJqUvnFagiLWdthDXav2+VRsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4+1/n41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4+1/n41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73BEC4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790744433;
	bh=7A3ZOcSpSNRoek+Z49o3Ujgmgk8a93Wmz/xreR26fiQ=;
	h=To:Subject:From:Date:From;
	b=b4+1/n41bRyScNOpwui0oEKG3FXHFyMvN88p7HxpPmYwMfOg237bT6kPPOPWHpmRC
	 V5pWHw1kpJjOMRMJ5aDuBn5C8LCn5XxZW1Ss1FbyoDYUGSFTX2nQHJ+6hMI6igrTHr
	 twa7WT84ErbTL6vg/Q9lo7y1EDhBPy9vNxoUUmGBb9m17Caq+rn00+2QrapQiMgBrJ
	 31mQB/+yG61W+MOzaQAHeWmRq40MdKbmwDaX/ZkLbjzJgeqcEduNLeDROUqXv54wBJ
	 MFSvokXW1ylXI/HAvduT13RkiaAcl2bq4fcdy0MhPPNAtt00bbsYlFWarfU+Hm58m8
	 fB5ydyeU/2pkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC21EC9830E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074443368.30585.14955485914261286994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cbde625d8f7169f4f02227f33f3fcfb3b7aefdfcd670a28fa234ec4a85d585d
Date: Wed, 30 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790744433
