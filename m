Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825CD36D513
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777751854; cv=none; b=nW8O03KRqVoTa11ulgO8U4P1yffZYujd4je0uhgF1L51LZ1Lph1WXkIOzzXeyLihz2G+J33+48nivxtep2O9Rw9P/h1jK5ZEJ4in6OsdbXaW+SqXy1yH23e2+Yt6hCW3UIETSMhpl3pKxluE7TnuyUmPog/75Y3SR96cYs51pLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777751854; c=relaxed/simple;
	bh=7b8U0gmNdJ11/YUIlJokqI9mD3MHc3lxnAc7dq2UCFs=;
	h=To:Subject:From:Message-Id:Date; b=KWGnBleqj6WKEHVJ5+elIVja2RrOrcnb4vlXZ8GCpoN60c+M8zfMWWVOuhVJ4S4DQJwQdFbfjPtq73BfJvoLaYOxbrp/Ik6VRqvdZSw3Q6MGsAfe6MNVNTuWu2yvw1yCCEt4DAPQA9khbS5KPE3A5x0m5pM38pf+vwsk8tXUt/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljYLIpPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljYLIpPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF5DC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777751853;
	bh=7b8U0gmNdJ11/YUIlJokqI9mD3MHc3lxnAc7dq2UCFs=;
	h=To:Subject:From:Date:From;
	b=ljYLIpPl6UTXjbJwuDDqwyBZGUrMF10WjSeEAh7oau5iEklKHcSU/6csflyUzWPsQ
	 u0zmAaNsZAXcERCG9QCAbDODdeSbpW40ax+z5ldPzu2EooZ1MiQPyd67AhPMEwUw11
	 z4gqtc2Tl0D4kfxhzvVwFeDnRQuH66eyLSuX8MWTLOa8YpXF1VQvCpcl9M8jSLX8Y1
	 JFRga0wGfT83YXWYmz5x7vdEkdTR6q+bzgQSPU4Hsifg2975Rpzyb/1FEUYWwnYm51
	 wl0mlP1FgyYKVgNOhcuCWkimB59NNYdS9FZvpnGDQsHQjhjVE1NZRDe1X12kuLG3Ce
	 Wz90w8LRXPQJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF107CD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775185368.9258.3904320097441450363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21543a9035f402bcfd06d81ff707f07ed71dccc3cc38cd5974e4cb650e4831e4
Date: Sat, 02 May 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777751853
