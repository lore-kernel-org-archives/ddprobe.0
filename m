Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558D6378D8C
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779476554; cv=none; b=cqq542w7CdLopM9PUyN+Uf0w7oKFdHL83avCBFiMgXHm8nzV+TxLsEcpj//3Aii+VNQQpDsSCxf2WErwbkI6X/YFmvIjbcnxxZtsUq1gCw0fMCWlTd4eVqg2PGMItUf5e9PwqivN21JWlSpY8vStfsDgcRT4Zcm0meVZvZXPQvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779476554; c=relaxed/simple;
	bh=r0RqbK8mTUmTipMUwxyFT7LnWt721fZYkNKfadjxLdY=;
	h=To:Subject:From:Message-Id:Date; b=eSnY3WBiANtEDhVAvrXDiojAwRPERM+U34aF9X21W3BoMLPMc2WQjutcLACoxo0EW8bi60MicnFqPQxgcLAxRHSw2j1gXaduNT/Tk5SoShxDXtGJ7+TJ+wk6GXqu/mVE7mEnfJbgnK98OjihHqC3q+2kwx6pCEA8U2PPKI/QhQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kresN0sQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kresN0sQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5438C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779476553;
	bh=r0RqbK8mTUmTipMUwxyFT7LnWt721fZYkNKfadjxLdY=;
	h=To:Subject:From:Date:From;
	b=kresN0sQSf7Jx2EYdSrBK3e698QT3gPUwB7UBO7CLX6ZNnuBayU1q11oSXmJnjq+w
	 7gPEX2OMunmXGTodPzhUMdFC7GjAbxVHHVplrI2Qf09x+vWUup5SEy9LIFppcBRGRR
	 3j8uJebQA+sgXFYgGBHt4LzasMNWoriWUjtECaYQOuVrE4J+wPcJKTws1TPSTGOkhs
	 FfRs52GNxplXeGzwHu3frT/7Xg73ElMnt+28kVzcBgFsyB+eIqP0BA3qqUjsiKMaZ8
	 0pjQe1080uFqc+Ya4uNw+QuLZV55BULd+HNQ3epjUXSnrXQA0cxidUU1U1hEnoxGea
	 cnlZpwTqRd1MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC612CD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947655369.3020.8547737267969160990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d236cb7556509cef7751399f7cd01669a538124c87b61bb57e663b29f85cba
Date: Fri, 22 May 2026 19:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779476553
