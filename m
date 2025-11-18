Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17C4208D0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763426514; cv=none; b=JTDDRYStv5tYicOffA2dmBmWnTxcm+lXG0upUeR5mqVo31qvtIO2otEtEhLhXMJR7O5WafB3F3iqJxyovacIl7ZtRL15WA4lArN8ZsNJVhWdWKhK2vuPlKbFFkSjVV4s7PRjfpIsBMp43q7XrLsH+de8xd7CXKL6BFvoV3EJljw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763426514; c=relaxed/simple;
	bh=HblsNI2wbNtT2PY+n2fEragCBonlbWcFHx1DHCnSw5k=;
	h=To:Subject:From:Message-Id:Date; b=NWQdkHKgS7uRCCybLBDd3NrBAAtDMZaFxK2bf65Xcu7Kt0zbTaPwUgL+9LHfT2l+FIY0gnfENmlZHamvN6fOSexoCkbgRw/48cZeX7jMXV+gf7oxy8LxAPDPWUsQBnnZ9igvr+71j9gdkCLBuGmLJSyttE2WvyFnbD/uKmK+Hrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fnmz1/0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fnmz1/0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D36C2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763426513;
	bh=HblsNI2wbNtT2PY+n2fEragCBonlbWcFHx1DHCnSw5k=;
	h=To:Subject:From:Date:From;
	b=Fnmz1/0ZaPG/g6iJtz0zrLEP1/cgCVlwkSwaDgcgUEXA6lehFRTCjOEM0sdNb8y+S
	 ZXGkb4c+H/0T+IGOBUEn6efchyp1hM64/hltPh+LAIISU6fFKCy0hTDfmPV0PRORfC
	 ZdQQ52LYn7vgKSnWet3u/+ycgjlazlKbzsyAuXbHMKaYA2YXLKon1CPHOwS4iduw3c
	 Av+GRI/9h60+20jO+3CY/DTUx0TUZ4OdZ+Ye2aEklMGQ6K5HoTXH8sVwZCP0dReW0M
	 PXEPvTdX06I3o2UIDBeCjvqt7zXEwOGuaX3LXhFzwoPi7D4Sr26eZ89tno5rXVSFdN
	 ok9m8prdhGAqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B2CEBF61
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342651358.21526.8971615940393845429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a0cd7d50bd7b80576f968f51230a61b288fc23857e026a6d041cb8e293efd6
Date: Tue, 18 Nov 2025 00:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763426513
