Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C8D23242C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736870154; cv=none; b=iU2xyJByDrGWp80q6NR5bcGydDZzk3OywfZpk2D+y7JGlIfphBH2QaJPzcIr8QzfdA0GrJ5wB+nXqJ1apauDZXwQ6g3sczYS1SxuzZTqMt1UKdwwcrTbRf1X40y3R/vyFzgIVgrvobcQd2bX3xmosB8wxQRpUPIU6uVvYTWrX2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736870154; c=relaxed/simple;
	bh=ApZ2iTG+Um1LcQaxcM8R6eFvOi2w4m0tsuoclFPyypQ=;
	h=To:Subject:From:Message-Id:Date; b=AXHm9jbipnGuEw1AZLfJcBEjgOItFqSaM7ZixSAKHod9OGEeSrrulGeWkO9aTm/3vhmBOMagb3dOnyXi1C6Cu8773qRUyRrCGI6i6iJicFCadbXUWkDJNYIbYM1Trao8krzyHzObb728EToldkjVb9dKqZCC/onvAgadQVbvT/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8bY8HY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8bY8HY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A416FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736870153;
	bh=ApZ2iTG+Um1LcQaxcM8R6eFvOi2w4m0tsuoclFPyypQ=;
	h=To:Subject:From:Date:From;
	b=R8bY8HY+feU02ESqyI0Dpr5RVLIW7TQpM10tAkdqokfdvcM/eJb4DCwJgDtlIAT2q
	 HysuJPZ10QT5e0xGDAFb1F2Imtpwc6J46cLou+eYYyRjFpdhuGtbYrqSR+qHviPX06
	 4ZQwFB3+bvY/txnQIlr0KQU7204QofAmMvDdYVJd6uFr/k7LvM3TanYrwcSuC6MjYU
	 0Ak++GfIkXW/jqds0ix/t4GCt9Jn5ujtqHXLybH1ccHOiSXThhdI0bBxlwChIYVn1p
	 W9ir11q1p140Qu6e2yRyg9hzf8GFqdehlwOFKgQBHtl0iqQLWvTnnuM9NzXGQGJ4dh
	 JO4wfb4mIKGXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92800E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687015359.14723.9013613617696056666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7fab92689bdb70cecab3458ab13d9c7431e47aacb2b3aeae1d053bb825fb5d
Date: Tue, 14 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736870153
