Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79772C13B
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 12:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716725663; cv=none; b=Nj85/Vf8uphaOQmIeKnJMGhllv1FrDhDaNrRzy5yCuk96jpUY7hEmEHEcqdizwoBT4d/nuCBe/nS/Twnie5nlLFiVy3NRme7QYIKALJZrouLACcS1pop+jJtNr0IvQ1D2NpulGNOFz6QsFLpTd0nBLodj4BbwWvruhW5utAKBbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716725663; c=relaxed/simple;
	bh=lM4Sjn7QU6grOk39yMgW0nhUuey7VT2uMun6xvjvm6s=;
	h=To:Subject:From:Message-Id:Date; b=ehq9C6SNPkAJce8LZkZOt44NmY58GxXGuE0jNOF79B5ule4i7RkHtbldNpK2ZAw495duZNS6VQ81H/LSk54sTwM41I3xyAKNa3MuTV3J8ebdRWlIWn0TIATG8nzi1nphF1D1K3xpUqCAIWoDcgKN2InCMk00mh/6Ssj2+ONOnzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oq9GIEZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oq9GIEZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA6B4C32789
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 12:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716725663;
	bh=lM4Sjn7QU6grOk39yMgW0nhUuey7VT2uMun6xvjvm6s=;
	h=To:Subject:From:Date:From;
	b=oq9GIEZGrqm+0WNoXngGluJC9hg1bKBbl5EkKkwLzO/K/eQSCx7kn9mIjDkdrn3+G
	 /uR2ep7rmnEzjifdS+pRU0PNotN4JTW3P97bAd7DpUtXSM4kkAO6f/+5nIQP9IsVnq
	 Mvf8+y3HBm2Ybs0yYYYcJ6AjFET7nsLvHLGlaoyh93oBB7952an+Ilqu41CrWkAbpv
	 IS5IwPFQ028BieR4GYG4VAFUS05xXStJGX/zUxlHEASDxhKdkF4YdAPAeG/bYcqUiQ
	 SfVYvta8452PYg5X+OcgbmPd+4eZhGFQPmYS9PcJP/Ba+MpMnWbOCCh3ZW/QRaVu7I
	 J6EyS8dxIy16Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F9EC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 12:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171672566278.10991.4900991041895770238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd40ec53b0e3531f5ac05340f9ba4172bf2f5aa5a3691e17a1a307d1e181eeba
Date: Sun, 26 May 2024 12:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716725662
