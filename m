Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580FA2C694
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 22:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714774343; cv=none; b=hgfAr9WA+x8NR7KgDHNdNTbtcPIuDVPEzVfvBN1gKLMais7WDxRw3qZnnQYfal+p84GpdhNkWkTfQzq6KM+JNjyuhRPD7AcjGzEFXEmYjAEnaiSyq0jCDPsG/Lv/svTx52ZVTj65b8Is4H9ngQLU5Vq2uAWsfH2h48HG4+580+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714774343; c=relaxed/simple;
	bh=9W9AXUoHykLECOLmizcYaZpE0izIvYrOJWBlXsPiqPc=;
	h=To:Subject:From:Message-Id:Date; b=l0Q5X+CXs3AvEmmizNPAf9baqNCqpFZIBYjkdSv5mneoEPb4T/zyzN+CoAyA7aULePq4n1++2Y/6eWYK3XWUf6mUJbyzFAaaqHvY4ST40TjDGVpNCeKLzjEWeBQ1G6qmLwqDy5WVIrYtnK/oDH612CXyAbnKdPjiu4cTQJhiIpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2p/GWT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2p/GWT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AE5C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714774342;
	bh=9W9AXUoHykLECOLmizcYaZpE0izIvYrOJWBlXsPiqPc=;
	h=To:Subject:From:Date:From;
	b=q2p/GWT9/po/CSChRjXfCqLJ24WTaZTXKHAQC0cljm562DtbfOmm2QIMxhHpiAod9
	 DosnXa2oXeegud2ePPMtKWGuc0o7yFBsisc+j5vY9lQKBmAsO6ODemiN3Ef9IMW3fR
	 UhTCH4AQdb+BvgZCx2fDqdc1p3lTi+gFEkrDIR+87njEThonTulgvNbp8DuKG+Rw4m
	 PU1vmTmzmVe69p6nyj3ltvQTZbBmeoMvLzgRpr81tke/xDyJqJf3MhP7o+mIQhKAkI
	 MRAEHwDP4HZU0d6hv+yaLBOBFP58YYOLVwcYhQ+qufkafESk66iBuy8VOGjEk0xrAw
	 nAXEsrR+AFDJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA82C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171477434276.12509.7765377548902160098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4682af0b473363decff5f26195c567bfd677ada13a4f3ef76284da1d18d9e8e8
Date: Fri, 03 May 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714774342
