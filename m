Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A27215573A
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742239194; cv=none; b=H62MOtYaaqyF+6PKZSnhjz6ZLTzV+Cm4+2/JYzGt/Lmo+22i48rLRefTC/kw9Ma+9AMW73EYfcTzd4IrUf5p9egXo0SQOhjssg+5I5pEbYVBWe6iuYGzA9EmI60eVoVeA+2y/0svQueYdxYprLA3C4I+l1+l8JTSPINxHF0lhgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742239194; c=relaxed/simple;
	bh=MvKntMweLqabBHshoQmzYS6taSwQJv3Lxb6Rhu4W1xU=;
	h=To:Subject:From:Message-Id:Date; b=GVId09VNJMqs3mi0quJz2EbShg/uwefg1SJ38HT/YIHc8yMJsuQK10QPQDs/x7Y05YbLGv32xLtULl0mUqz8VOqJ3Da9/DQCPKLPPpztJZHT5gkorFfHW9OOS9YsODkL9EGL0t4afaJchaOpODFgoahkQUg+Wa+o+AuSL1rXDCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQrSPrLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQrSPrLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B115AC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742239193;
	bh=MvKntMweLqabBHshoQmzYS6taSwQJv3Lxb6Rhu4W1xU=;
	h=To:Subject:From:Date:From;
	b=pQrSPrLQ+IB+iJHI00RgYLXDz1nEfKTCE63K0huSyjwq2AEs33ve6LMOQhx8nRzxa
	 BmxFe5X/Jeb6FWwzio9px0Naji3ALpYvPrjPUk+v4yUsxZ14hS43LnG14mA8FM3YGj
	 BNvh8Sx1515mpARig0hyA79fcEPdKABWue8/3xj0YArvuNoxmPt7sczXQwiQcGGVoa
	 LpU5ZMPF5jwrvbKwx5s/BkbmuLWSpjpUB5ZIC9ilL8eBkW0PFLDJY9yo9fCVO62InH
	 zYVFVT+B2FQBh11lVnuTPh+ZoEvCHdj8LeGSfY2CdcWcFmBG7uw8Lpl8NamyNJU6/d
	 8UoaI5U9K55vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9250DC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174223919359.5624.2687458191857432806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe72e15dab36a18d535ebfc6af9886fda343f05b71076f4387566eb5111af89
Date: Mon, 17 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742239193
