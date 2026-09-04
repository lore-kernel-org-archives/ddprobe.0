Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B363E9F9D
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788555034; cv=none; b=uyCey/vrUeZu8eziW2forovh+fz/RibhlbPssN0umPFYCyG7laBElgYJj1WJDYrSRSJl8B+ZznnMytVBBaWrEOe+J3wRt/ULPUUH28ls1dT6WnPfTLJpHyUKEEBzgmgrVnpSKVL6y35520D54Wblsb4KkuiWXwe52Dttb/Hmpuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788555034; c=relaxed/simple;
	bh=5gFLOJ8gzF4nuUsKSfydCPdbJx0Z9gIPOA1leNxAcP0=;
	h=To:Subject:From:Message-Id:Date; b=eMP4HYuDT+lcT8W+G+n+BOighmpUgdK3vTLfDaC7735eXRle5NTG6JYPIEP0BLOYG4X1wVaVp/ElFPSIg68TtjF15iqMhftmmkbO7ptPW8kwRbf0RbmfjlaxNnLazTri/rhiErLotSSNSuqz205BrmcSbXTbitYFnb0WadDj4Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OomqDBvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OomqDBvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD539C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788555033;
	bh=5gFLOJ8gzF4nuUsKSfydCPdbJx0Z9gIPOA1leNxAcP0=;
	h=To:Subject:From:Date:From;
	b=OomqDBvZveYOsjP6Akcj3QcZS+X0P5ce7QZ/5ARP1n4rsEr56y+4IKazsU1DZ+FB+
	 YgXqGy2iOPKU9mheX627ghWCs8gpgqGs7vhQDgXaM3+T+0WXRZwYA8diue1WKemD0G
	 RMvr52iFjKaW0fF7s3lz4La+DsyKbvT5Os0Maq9O3vI57ngmk99gvFH6994zgrZWUX
	 Q4vq/uMo+3ee+vpLFkuM3VAOndnl4gL6QwWippWw1UTgFWKZsLzZ8LBxk3fQUWJiDk
	 5lvfdAUaj7wBXBtnjrIbEj2fHRul8LkQyC/4xzzB0eStPMZVeiITdHjgY9eF7FAuYs
	 njt7ewsIqq/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6585C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855503373.21287.14167910618635150278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98fb1c0ee23ea29e431ab5ef13f2de3b76fb0113be266f029a1ee055b55d5e7
Date: Fri, 04 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788555033
