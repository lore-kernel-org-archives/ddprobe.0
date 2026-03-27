Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCA53EF669
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774619694; cv=none; b=N9MwJEEyszccFrgx52LGYhmpL64dJ4biKt/sJzj5Bp9eBC/jUCwxxlY+Dea+FJ9/Reld5S5YpQpQvbN0rNndCkzQ+JpZTW6ghngmIDsPlQd+63sLT2Wj69LYxuyHjraCj1vcc2OC3MwVS1c3coFwcY3gTg3/lJwCrzdY1AYugFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774619694; c=relaxed/simple;
	bh=fKgBMGkqqgAmTf3j+J5MZGjW5/wBrkyCSs7L9b5fJQQ=;
	h=To:Subject:From:Message-Id:Date; b=LPcMg+Wk+0T/p0wuxxVfJJUimzCYMag2puYRMlARiZsn1cOq6bhj0qnTyNLQtNz5XJ/UdcGgPtk75H9aiHd37zxon6RFByq7D6DfrlGhXh4KSoyCN0riv1rxGtPWKQ8bginJ3ixIiaXZrGO2HGwzUx8GJpm0EVrLjqHsYraykEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qK/z7DdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qK/z7DdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD62C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774619693;
	bh=fKgBMGkqqgAmTf3j+J5MZGjW5/wBrkyCSs7L9b5fJQQ=;
	h=To:Subject:From:Date:From;
	b=qK/z7DdP2uT/+8im5JqEOVFP/XgFm+7cpsNutJxZQrcsGCUBeQ22ZVCRITj6O0AgO
	 uFk6HDa5s6R3W/wrOd30KLeXQRc9vBIPP4B8a90p2jrNrjqhdKi2Ql8WDUcid2fUy3
	 toYCEreCXmnAgEvaC8TtQXngnpiOLe4MKysjsvkBFMjIHzf+QBBKJ5YxOhc+TIN5q6
	 8beiN9K0Rf8ur/TPsuNBmROljD7h5x4xO6Tt2V30w8GMj/YBxfTYx/gkKGSvsf/DpD
	 X46Jpu7mlLUKwF21TvcfFtnVEAegADBpmFDRr6P/FjtVu+dot2sagbk0fNJRV7+dhZ
	 40m6ft6SV5r6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C12B10ED674
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461969360.24832.4206794956692983280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628ae62a41f0dc2559ec90b6b7c6371373166e383c2ba42d496997d8f26c089c
Date: Fri, 27 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774619693
