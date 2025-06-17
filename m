Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B86288CB5
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750154394; cv=none; b=Aw5P5qqLfVboakhRPc0k8zAjlWoKFUKTsgwWzUumD5x0kunkftGRejbeZcaycN03nex6nModO619IP9o5klqj9hMwE8t59po6ZGlDKYqKQdhtah8+4Wexkovd1aEX5BMZayeG7AWHrLEgQV0UpukN3r39AqqC4qhNrrxtRNbsH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750154394; c=relaxed/simple;
	bh=ycmpz71zVFKFuyMKfvzgimiKJU11Zaa2qNUt8gnx92g=;
	h=To:Subject:From:Message-Id:Date; b=AzbqmFAIBYGgvhMnQVCDidHL+jcmyF83Ae6l5d2xFHgIENxTLX1OD7GZxhLiI1hUZg23pXJ7PTy8+GbTdeu6/Ial/3+r0ZK7Gejl9mWMY/w/Yeuyv8W+bAJNCR8aZfv+6nz/FejUmJrxCZJMTLJkr/iiEnXBn5TVE1rtlqQfUy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g01UJc8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g01UJc8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31FEC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750154393;
	bh=ycmpz71zVFKFuyMKfvzgimiKJU11Zaa2qNUt8gnx92g=;
	h=To:Subject:From:Date:From;
	b=g01UJc8SSYOB1GnmRVxUUaLHLF7ZVXEXG1jvopFPz+mFGIqUdgzb+5RhgGEqn80tO
	 8DfpBbQpw0DLYBdHvXkhkFkkzSHMqTrvcikYuX9pALdPj/KchyLHN0g6aWry6rqV/z
	 FO2//+goNgJHhgXd86AqsaqnMk5JIB2GTFTJcNTRDp5qGbPmOiDTf2WGAjwaHwZQlK
	 gEIwhfxOqB2meY18QXt0Wj8Au+tGq+Hd19hN0R6O0DOddHHJ30zodHA2MGEJElZs7j
	 WscUU8eEh1A3zs13e5b6TLKK+PD8mDTB82ctEEL5dlQWsP8puqQYUndS3Xpxz+6Z2r
	 0uZaRwdAeOYbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92385C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015439359.14192.4431494514165771649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f5a74323253a2e10323edd5b9b02724c542f92908a2dd317b004177d5a9297
Date: Tue, 17 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750154393
