Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D311A288
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755147594; cv=none; b=lteVPgRfj4rTfgfhlhTpi/e0qirxy40Qj7FzIA8uDM2UGKnpR78dVt/bQK4YSqPGbV0R8MIFewK0DZlNk39ed246df9fKSpT+zhe/2t5qnU52CMe0t25MgtoL7s/nlpOM3iNNkJXDDjmuOd2jXvwTE5Vvm49iBQjxTQvpO8goDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755147594; c=relaxed/simple;
	bh=dt1b838ui5zdYTPB/q6BZRFPSUaT9qF5lygE85+bBNs=;
	h=To:Subject:From:Message-Id:Date; b=AZKqWC/Gk9pUSW3zOq5FVZm1UEHxqWcUJUHojxWflsO2n0C+mMgWQNRVCv6YDThLvcSldaKbirCanONPNysuCJGdYedk518X5KY3+R0XCGdjSpps5HIfs7OIvCCdoCVJvpkG3keyB06SPQhV4ICxUrHsTg3j5uSkcXhrT1u6pX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGsEcEWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGsEcEWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E40DC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755147593;
	bh=dt1b838ui5zdYTPB/q6BZRFPSUaT9qF5lygE85+bBNs=;
	h=To:Subject:From:Date:From;
	b=FGsEcEWxiFERObHr+voxrs5q7GMcNmrFg/mVKmop/tVI2uO4mx2typKTfLmp6jzMi
	 wl8FBlf0cXrHPgkx2K96ShpLDjT3qa3x0l5mpA19yuJDWW+/lMdkvmIjZJkgfqV7B3
	 N+u6YVHVvh1WDT/5kRmfTrPZivAc2MfuC7kT2K1HyntnMKS9VQpPGKMeljGbmsOg6z
	 cXZjlob4YTmS8vcx5scmFNIczD2ndDVtNpyQWJNHMnL4x0cEw8Ha9/wJGNZ8Azs5Go
	 h9TesFVSW8xk6ImDz/WsNvB8OhZ91OpTfJ2anVrjp1Uk+fE0yZRpT7xxvClvIdwlUw
	 vfXQlNMLw6J/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E998CA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514759357.1064.3010964972688719743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bd90b5a2e4fc955deeb0a53434596e4250f23a03c4d011ab6ca89898bf679af
Date: Thu, 14 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755147593
