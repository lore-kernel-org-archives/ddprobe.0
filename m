Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4A328EC
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745592595; cv=none; b=hZIAzQScDiZLoFWZepk9g69EH63yB/RMNZzCA6kT2JGIuBU3uBtgUyaI0dCbV7KrInT8IOqcbLyfApFLn402W1mO/EKlMAeLgX27Zr9JQ43EqComRdu9Ctqe7D33lcUFiowNjfGE102tKtkd/XZXCH/ny9IPKwEunx6zBe3+AZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745592595; c=relaxed/simple;
	bh=duKSTTfO07CIM6khDJkRMT3GkMFtTAzJ6HtJavxWmnc=;
	h=To:Subject:From:Message-Id:Date; b=RgiNxPHsDCgJ492MdINTtfDz+gx0+npZ1/57+pNHoWq4d3vWdOMsApRhLXIp99+rr+D16Os37iqHYZNye/Kd0bJjTBN2bK79KujhfG4DuxQZwFhSM9iRZx1yP2QR4GDrUD4TNz1gutyk5kiNVQ+lzoNWi/MxONaYDa2Cxxb341s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHzP9UaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHzP9UaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB68C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745592593;
	bh=duKSTTfO07CIM6khDJkRMT3GkMFtTAzJ6HtJavxWmnc=;
	h=To:Subject:From:Date:From;
	b=RHzP9UaG23eFW+12Hr0U5PEVBiWzh6qhBXkefwkABi7kKWKJALdQVjol0wsbG/ALA
	 +byR9F2wHWnLUV/lW/dptGMG/zTLyV0ePGhl73f4fG2N+ME68tcIAyLKScw3jmI1ao
	 FvM3Jts9E3+xgxSiHozAIwWEqZ5211oAiBRiUujT93jx69/8cRi80r8Yve7zk5rYud
	 z0a8NEVd+E7jB4/pZXBPhgQqPG+huafycUziFeRtWgSWtZTfSkzoYEqZnoaN4TNDL3
	 3f3TAudOAnK8RR1MXKiDJXnOVH2Sl+46ilOGTlj1CeUX/o48YS4XiqoljXN/IGTN8H
	 hjAq1C1VIIgnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFBEC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559259357.6700.10410676861648932164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 603ca0cbbce8f877d6f442a8ebdec4271ff00c8b0d3a3ec1e239e314c0fef723
Date: Fri, 25 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745592593
