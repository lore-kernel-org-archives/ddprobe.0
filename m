Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C62388E4A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777888654; cv=none; b=tWVE6gBT5+nSLRTiS5SytxjEfc9KRYYp28HTI1hP84hAbnaBn46CCMrWueV8bPOVGeBWsINYThyeXVhYoQwFBlYtpHHlDgIZUCjOMN1ZmWLhN1yYD1L2TfbmUlkZqe/YzSP6KxHHjfynX0bFfczxDVRsxFXbuwFd9yZ9gGvL2mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777888654; c=relaxed/simple;
	bh=oKqPeuNyJD2BEXtURJlNG2aWXD05kEnYgY251QRT5H8=;
	h=To:Subject:From:Message-Id:Date; b=Y/XghYi73HYS88sVHPitzmgkWdO9+aBZIVxuliRa7mjA6qAe1rgW8W1Cp160gQs6TVtqytTaHssDd0GbZ4As+tG423sv5rdjBKg+RB/c8W2ef8o5VxRgQyUn/LM8HtwlQGf/6+h576KZzHlnC/JEY7jMlnH0o4BHWoX5P3bio/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVenIbgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVenIbgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6144C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777888653;
	bh=oKqPeuNyJD2BEXtURJlNG2aWXD05kEnYgY251QRT5H8=;
	h=To:Subject:From:Date:From;
	b=FVenIbgZdwE9oqJbJ5PhF4QvqwFNny9kwMLthOfNvwkDuyV3dUQAXZQWnsPalSkRe
	 Qktibal9d+Vbe/22ss/ZGCUBKVb+nfsm8c35gkWAAZq85VPvQAtP/Xg4+cAA/kDBor
	 VJAweqGoyhfDYj2IiPWahAkmquenDOxudx0IfjNIxH892OLyfuJVx293SSpuhWxfnx
	 cV3K8e6YcYm2HFvDlvLZn5hn9/ecc/jMMOewhAFw1+vs5LZe0c3FNzJjvY4l1XLZP3
	 u2pUiCJ4Oq75oYUV9x5Bsw2w1OhH/tVgYtO23GRD5MQHDThCOfQC41fVsbrX3qYEMr
	 eRI9xahV2Nzgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A878FCD342C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788865368.3415.2608884010031541539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c380c4fc16416e5960a98229e3243b84db5b487c68f35572b1c39407f99f61f
Date: Mon, 04 May 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777888653
