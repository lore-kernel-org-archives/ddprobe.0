Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E55613CFBB
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721950554; cv=none; b=ZZY5wUvg3sgM573lmZxkMgw9GEbsf6yYg4IH/0PTjmcfnWSKDuv+RokXfMCzoSEf6503Ldb4WPr/aRcvQtfnIwPxnSktn8KttyARmpHvesL37rCrLCJBRugunaJUDOZ0Ry9aiRZPVz/Vm7aW7ybhEIKE/NLXYYhrNrW1AitVmSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721950554; c=relaxed/simple;
	bh=DPmughU8Gxq0TE/PuIPD1MKSAKPsm7HeXh2LpTX9EPc=;
	h=To:Subject:From:Message-Id:Date; b=NLJpPXDygwROzAj/UdzZwBofCCfLLrj2tbzI0N0z6PpwXlvabHADBj/A+1GCi5Pw8prHbMajfizv5cgdqoUTPfkgFxfJYMj+86Gfs0BhN2WrXm6mfDUCuaRduUgY4ufK3nYDCq7epSvKrtr4AnVhrZvgz1MpC9ynV6FILZ5pte0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDBczVhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDBczVhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A511FC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721950553;
	bh=DPmughU8Gxq0TE/PuIPD1MKSAKPsm7HeXh2LpTX9EPc=;
	h=To:Subject:From:Date:From;
	b=sDBczVhJQ4LoGb0oLcxTMkiQt7QBvyyQIh8Fb0sn1P9XhKOYwR4uelMgAoDxQriqs
	 KDHavovfTiePSs2KeotkPsQz6CKwX05GWpwoFzZNw7FsSzyWfCgEt/CAz36tGVcowg
	 607njd89gqk6/rTgnF2uhD4JcruC2Qkj61mEjQXgtpucHQDEtVEBhv5jC7gvMhds4M
	 M1CQlWwUI6KJqK2ylh3qoj822ttvZkm1STW4TUeZQR5eIRrD3SyG3b4HK/yIeugPH8
	 60jd3gDznzJqlBi+N8RWPPJbWdfdw/QqYVQ8RFUCP6m4icnsMwzSg1uNrPcS/a8TKy
	 zu+5OI6SXmW2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F946C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172195055357.12042.10212247265997740757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02b622a966e2f8fe48a0779b5be21b3e18c0805b0ae09acfc778dc7293a124d
Date: Thu, 25 Jul 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721950553
