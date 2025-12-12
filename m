Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AE81D5147
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765512774; cv=none; b=KVvscUM9QTEXwBx+IcDKSCYQDCVGi0qkal9YI1/P+GHRMSoRTY6hU/kyzX5sgZUFd6hNL8W0lSmn0VB4YZH+MXN7d0ZsTT67KxRZkIqm+XG8F4KCwkMsUS3cJdZLWbB0ZMzqHUZQrj/MFhId0lL+IGghBr4TlkLWeyY8+SXI61k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765512774; c=relaxed/simple;
	bh=8Z4vn/MMgYP5/UiGwrhOQtLw+z46XPHtSYBTu5ZgXBs=;
	h=To:Subject:From:Message-Id:Date; b=K8X3VGzirs7kNrasWPNTC3y1Z/7vOowu6GCI+zQRP7EHp+U0Z2KEoNeTDGfQG0bE1z6bKh4vpbnj55rChq4Bdb7eP+RPSB+doaTUGXayXxFA9x1otPoMeh2khkE5cMawFLpWeaTDUhYpZKse4IXPPbS1xNo4t3TslbHuOVRmY5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLknlYTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLknlYTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1380C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765512773;
	bh=8Z4vn/MMgYP5/UiGwrhOQtLw+z46XPHtSYBTu5ZgXBs=;
	h=To:Subject:From:Date:From;
	b=lLknlYTINHLOlfrmOPNsQ/+oqNylNfvnG8pIDgsy/VffYNs/GQqacSwzgkvGWrQoN
	 ukFyJ4oS9i3OLc/M2BlfXbDn3Ylv7soHTi7Hv2ksanOYJjPI/bbwRrfFEF4A8z16WU
	 K21xIV2pZciY4iod5D7C2IT5eiInYcxHJN27NWn5uBo8FWHLVXEHIb8d5jqSs5CFD0
	 Q9MJVaCNvCBi27PgSFwNEdZD+yCPBN1vbTXr+5vRH2VfIG555wqPwdzWc9JGYra1VN
	 4IeTq2H3E/1mRk8QWheO1AgPMpJXSzFCLzpMcgKHcvS0Ft8vZLyUQzIxsGCixdJoE4
	 Ie7ScIP757jQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABA4D43367
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551277362.16951.13113306605639944257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1933a7a1e7481e80ec9245f831b748f100c3037e9949765f572b75fb55233f7e
Date: Fri, 12 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765512773
