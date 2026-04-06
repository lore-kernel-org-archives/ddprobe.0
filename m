Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7279D33263B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775478934; cv=none; b=NvAbMrYQBc5H76Pg3JkM3pCVFPNO7Mb0gZ1y3f1/MGLbdcufHe+kNSODog0kWQ0tJMu5vOlYZxa7foZOk0gyhyBALa291l/uT8IfShOIXdIwu9bbDDp9adRFP7729QobmXImGjK5Vjnr5YeUXKUPO3DFYlN33XZJjGrsCzcwkKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775478934; c=relaxed/simple;
	bh=Bbm/quETGBgb2GJ1SU/2d7ZZk5H1kpZpt1xCmgnR2GI=;
	h=To:Subject:From:Message-Id:Date; b=TrM1jd5Lzw6Y8oP3Yu3Ia5q+aCS9e1/7eY1/H+OGywhQcxro/G/BrRhm7svp1vtpTyNWdzoHkFlRe7/VQYUEMAP4aaQO8gCvHwt8X8OIgCimMQ6miJrEM8czBtNb1MCAbOoulNjjh6T4sdyR3uOQZ7YN/ifXi9EVVI/67nv02Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMRAahIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMRAahIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE994C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775478933;
	bh=Bbm/quETGBgb2GJ1SU/2d7ZZk5H1kpZpt1xCmgnR2GI=;
	h=To:Subject:From:Date:From;
	b=HMRAahIySm0Tp1wrpLPb+43XZGONFHPD+YBLIo3uv5jomug6x+B5pMtfGWaou2NFh
	 jFVvcFDKYzk0XXq30OY577kAUFB04QTsxgRFR1QP+PS2LVnpHJdCmFGRlFK2re1Ath
	 W4VeVg/DbWuK24wWQHvCsQgVsIe4eyI1ToEoR/ExjC6QyYOlub708QjM7aEjvBz4ag
	 SJKhQQS4xJCX8P2Y2TIt6GD2k/RhVTyRKDHw9kqSz0ZUa9SC8JeG0Lt/sj2j7rkoPk
	 rdgg2F8rc2/JHtVpL1OA11YnOEh3tUdzZ+LTafUUu/2KywmuugyaRYnEih5AH0EYpa
	 05p2cIkn0ZCIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB42EF4EDE
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547893370.26656.17833853830677607790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2287324aa22bd02c449221e65e41b0111f0225d53436194119df78e82c5bf2c2
Date: Mon, 06 Apr 2026 12:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775478933
