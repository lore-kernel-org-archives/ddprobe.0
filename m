Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6511C683
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748521194; cv=none; b=Md49/rMga1HcfHv+MGFxrf8d3Hkooow2z0wOHoqDyj2h56Z+auwUmf0OIpMP0Mqe/JtaHUyAXXi9SabX9UCL427xE0f1Isf11CDXnd37W7MFgeQscdHg7jS5kRbvORrkyhkkkS5UMhe/Pb5UmW9FOnt8nycLwim5FcX/gBLbwo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748521194; c=relaxed/simple;
	bh=WGYavq1+02zyD0v9eIGt6Es6BIrnGeyC8Tu0Wtq1FPQ=;
	h=To:Subject:From:Message-Id:Date; b=ZCSImNXBFi3cX/qIPywS+jWXEPNSCbGWtmENUUxj10qp/+b4zCWayNB2iEYvDMFsCade2ZPmep2O9ApVYMEJivSYXuEGCzztkefORBhk1Cxa+a6TMqBH/8AKzl4o1wQqJ4AfxDd+12+07hr+M7EUsB7UsI6c6uC4tUKIMG3DbP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbvc5jpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbvc5jpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AF4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748521193;
	bh=WGYavq1+02zyD0v9eIGt6Es6BIrnGeyC8Tu0Wtq1FPQ=;
	h=To:Subject:From:Date:From;
	b=pbvc5jpyXtUMACj0ANlBQ7/DUrm+yCvdFJPV9k7D4PuQqvYyJTOtShjnxf4+ZPPDa
	 yq9nWitwBh3JV7YLwN4FOglKifkLuaqHPrbsL6gqrUlo/LRXEfpNOmk5pqlHPahaVG
	 wTKE9hi/FaZC9gX/zy3HWsP85JS0MMng0Ti4Yp7zEEedXvZYtvsdkuzGG8UhTlv607
	 QcmTRA/NwaSMCs4Wtr6JqwmZOMKAl+0NWrf/qdGwB9qWNNZ4cO1ws4mZpkwF9rZSgp
	 ZEUgezhsIU6D3TzY/dqqJ5uDUJNzYZuJn00v6TsGfbODJbKeIwq2SUt9X9dUAuAKGV
	 /koBAKpMbBOqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0DC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852119357.25122.7399604901810553648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aba52ba6c67e44dc4d237ef8d70a43741129594e372eb61bb332398916048c6
Date: Thu, 29 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748521193
