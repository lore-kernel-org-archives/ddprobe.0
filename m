Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2E23911BC
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786113034; cv=none; b=DeYv1u8AIVFu1YFrbhfNN5cPFuMmXbiXsXEFdnkoUgqcU6pb/Sc8Q7iT+nfMOnTxpTuASdsogKI1mB6CUHcxzU3tUhZpSJjIcl3Ic3RvzYKCQTIaZdXeVm7gMtYX8FOmVTfLfeypeB/ncA6bikBpSugj5J75MXALYkB+kNFD6ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786113034; c=relaxed/simple;
	bh=l8fIBm/XUwssgeVIR/xQpElM1kVSPD63nTouQhQ0oNQ=;
	h=To:Subject:From:Message-Id:Date; b=letcOCICD/pNVH5zs4cJuFPXGwMiCJponN639F6bjardZEtqAhBIHV0rk81kQvKVFFVBOCG4x81DAuV2AzWHcy0YmV25x0m7jpdpFvdyA2XbzljwOpdhxvjTzZZmq/j+DffnnNdBWREX+iNccRZKRAHptErS2gtwA8eH1LOMHZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOgmL/me; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOgmL/me"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3827C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786113033;
	bh=l8fIBm/XUwssgeVIR/xQpElM1kVSPD63nTouQhQ0oNQ=;
	h=To:Subject:From:Date:From;
	b=kOgmL/meSVFhcsQ5Ugi/9KCh2FY6RdTBYXyNhK6QSoHbu4fyDZv7hQ5hEbjx3msCp
	 c4LUTH1AgFx+RPmk7U2jH0mEiMtOSdVytFLOlkWxj3PTVuCBfSTur5Uue8+PfWXj4l
	 l2KuQoFcj1L7FwAxEhhsDRKtn1CM8v7vajTSraQy12X2pLEMcwLALtVZ/jruhLpDdX
	 zzM4meXkJBMrZ6lhnC/mYbAP7jk2BD9X7MlLsOfDzOrnDlnwUoDv7/DARpHakkepik
	 qVq6U6mWJOHFu4X5Z/Jf0DzpUC7diYRrE9zmJDTwAIP7i/sYksDRKKJfRS6JFB6rnU
	 BBeKRUy/eXCrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE38C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611303370.2573.18158000899675019483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df31f9303ea48e318245af938a1b279717fcffe2c3666b19153382976f943a7c
Date: Fri, 07 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786113033
