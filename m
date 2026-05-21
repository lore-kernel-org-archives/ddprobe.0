Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154DB346A1D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779346234; cv=none; b=HLXdY8wV+FiwG7ccrCmqIyovlEFFyDBwW71zpYzv0LC6knVSm2SdZBBWiOr0cB0xNmMd0mbR3uonmBsCRSc9uEC9NfLXP8xgSPnVMysrT0OSXVSySqBLt1yauJKgLZD0/uvF1ZqcIuhLcb4WN/MW4BWBdEuIyzVTrOaqXCNbBEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779346234; c=relaxed/simple;
	bh=5PyrCP6GyZNCdF3MkNYd3RUP/jBrahedlZ0BryU5Pi0=;
	h=To:Subject:From:Message-Id:Date; b=fA3hQL6pSDlrx9upLJd6wJpsB1LU0gzmyNm5woYnDZGgVX9fdSLAD8r2ThCrD2DfUwETpPEeI0S7OTcdNKK9heQhnqInacJYI+Ur8Ct+cau1Eg0DwU+qx23ie8FsNcASvibPwZBPUnW2jgBe5dw2Lh3mUmYvtFictORsd/CVuVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+7swz5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+7swz5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC20EC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779346233;
	bh=5PyrCP6GyZNCdF3MkNYd3RUP/jBrahedlZ0BryU5Pi0=;
	h=To:Subject:From:Date:From;
	b=h+7swz5Nv/lVgs1qMX4732MXRmFUnYgXcEG8q6QHJDMsu5ru47fDNddJM8w6zSbhg
	 SFI1mjuJ8ggiX7D/bzBpHFNDNSeLcrjvzUxNm9HlJ1bSiwkiF5FWk4ItcFB4BnayMf
	 5/lqZwnpfYtGwD6N1lSHqZxf5H4um2t1tMy0xJ/v0/bm2I55mP2zAHMxi3lJar6fXY
	 mX8+199Oip6mFOIDEzCN1BjWn3zGhPqgctW2LJATElXr4YTuabiM4zNyvH/lkNFLZR
	 1V21tknWqqVURMvkdXXlJqfhCSQGaxQLLyGl5qz/2pLmiScK4lgF5J0gXLBsKMuoiu
	 2EJXE/fZVWHdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6E8CD343F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934623370.5363.5038742885591129381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae145136eda0c13e43321bfa17cc4220c21b5a86b54d51ea610500c13afe0ab
Date: Thu, 21 May 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779346233
