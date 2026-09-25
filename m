Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682124F30C0
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790371234; cv=none; b=RWE0pdRCytK0JRZrf1cVUNRyTxirqpGS8eUpw5XD1QLCWy1l+OF0vpQlaLAuz4XZSqxrId0JWqOHOzCvOdxuI4/qCPQmQ3bmdJB4MA9o8fVcrwCuLpwfmgVsX0heaQstEbjy5FgR/j5UmbnPfYoKFud6MsyxiawmnSx4uozhwzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790371234; c=relaxed/simple;
	bh=8yQ8eRXMV1IcpHwupyzIEzDZQFTvlVe5MpY0Jm3ES9E=;
	h=To:Subject:From:Message-Id:Date; b=oQuwskbXFwcriPHc/5jmk84OrY5fH4mDosYMe/lIoV24isR8CIFoWiSf/xbXkvwBh2LmogxEnWJ0ZSiTNTsmDKeSP8mOHIdQn/1Pm82Vqtz9fDGI68gaJqskgWdd0GXqv+4XliGU/wLoxpQ55mNPKI8DHitc+nEpbzo8U5gKEE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGZQe8ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGZQe8ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0779C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790371233;
	bh=8yQ8eRXMV1IcpHwupyzIEzDZQFTvlVe5MpY0Jm3ES9E=;
	h=To:Subject:From:Date:From;
	b=iGZQe8ftCR4qyepxWoQNDynPCa08ULsbGkAsTbF4eNJ7aRhTTxtHZ3XMW5mG1dvLX
	 UtR8BA9QOop2hkKHjMF/hwyg4DR4LGdtzkFWE59kXM5UjNo4z1FXHjWgEvkQdPCfCi
	 zOrY18JRQQAk9+ejPuiEzkq0e42AkRfwmpUzkQI2WzL2bxMRRi59C0HFgxyOR84HmP
	 bAAofi+DEnPRfJCHElMB3ffod3VBz8+BQOBuFRjwOXWgz9Dwy7g4G2C+fqagL+suEC
	 wVIGXNf5FOQ7K2PcIdYgNveypCQgl2xsOiQQU8IrCZ1gqkdSQDUudmql72PjuDH4yv
	 y26gnoCflp1qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2E5C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037123375.24645.6293042570741667030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702a9e511afb022457485808e1d0c59d9b5112b2297606630d01a25df4f6aece
Date: Fri, 25 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790371233
