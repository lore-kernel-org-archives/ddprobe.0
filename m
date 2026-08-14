Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497D7345EB4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786726234; cv=none; b=HG0fKesedOzxh1x5CqKQD1QmV2oVf+sGVz1JM7rDrpwEMftlmNN1gWiE/AAIYAkuND/Q+sUBctipodif3/UwOs5G0SwrJLq+alMTCyh9tWPmzIqWynizDbWeU0NsKO0Ixu4HEyQSuhpfrwPhYr6foIAXYiITIMnAYi81/TAtmiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786726234; c=relaxed/simple;
	bh=zyxBOkQVEQ0LFw0H7mG4yqYVz1+pgRoyxx3hbrWz144=;
	h=To:Subject:From:Message-Id:Date; b=epb1gAIN5gsf9yKswY7/i2mip3NUdoCVDO6OqhASr86e07bAxCsaXULYOECp7Xr9kF9BR0LP3iaFnM+PPWgLdlPWNyefJTs/b+lpNnRaKMlyF2GFyNYCmHtSNbedYjXg7eC7t1IsJ/FVih2BPxKU5r5WMMedW3pdGFluGv9h71Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsN3dAGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsN3dAGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6CDC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786726233;
	bh=zyxBOkQVEQ0LFw0H7mG4yqYVz1+pgRoyxx3hbrWz144=;
	h=To:Subject:From:Date:From;
	b=qsN3dAGrlJ2VNPB+LuSi+zWCqLP8pkHFQ0JBoyy4Bu37cG/pNllr+f1vFvSDj6MzI
	 i6dJcdTErjDGObV/H/aKAq5xhlVFte7q3QuS6arrF1yfBBe8UgxuXyWRLP+/zPWrSF
	 Uuj0eFXcfIH1wWsLfxVvH6WJj4EVpdPgChMuMfrgcq6/TxASRtoZU64rlFJE430ud8
	 003TrPJlOk4YmJJcZUzb516KxUVUXqW6tnkZ7Jo0sMDAgQn2Ka1z7ZMYKC8SF/59bG
	 Aer1nZkGh+fyHGsqSb0hN+WWhaiePLUCTLNLrLzrX33FCmKgglIWt9pZmSWgg2a1zx
	 Ik6cZUYBKpOmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EDDC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672623368.7188.12811232536246714621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19bfb764a2d04ba7cb244c6be55265edfcd193f3dd4d0c707129144cdae0336d
Date: Fri, 14 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786726233
