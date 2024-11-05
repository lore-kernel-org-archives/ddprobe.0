Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7C92905
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730769354; cv=none; b=IAwMb27Hs5nf+rbCB+A15nAPDIeuHz+R3auIOgyP+DcGAvkApPsK5l3NlBIXoSRoec5AbM3SUYOL1T2Ek3ueVIxviAk70RAdTQIzfYDREigkvYL39cLxRTz1rl2/7qrjAJKVQJbyljo39Ln0nb7a/Of9X970JAv0TvUlnprjYk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730769354; c=relaxed/simple;
	bh=NWKbcaeCL+ZCQpGBJ/AeLGdlGM03bcXXVVKi0Mu7Sq8=;
	h=To:Subject:From:Message-Id:Date; b=aNjBu8bY4KG8BySf138h4WEKcfGfe4gm6Yw6SshfLeC6V5BrxlUoVtgQ3DNR4HlAxE76r6U2s5549Ny1KmX85tcrFOTe2neNt+gAbSU3JO+O89E/ciev6abywGfObEepjsmaMBbA6byyOxaYE9MCfFoEw+0R+gZhIdYO6Bfjwqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOKbpuLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOKbpuLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA89FC4CECE
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730769353;
	bh=NWKbcaeCL+ZCQpGBJ/AeLGdlGM03bcXXVVKi0Mu7Sq8=;
	h=To:Subject:From:Date:From;
	b=vOKbpuLHGPPJzlkURWXcfprzUlvG9khQexp+sbaQkLVNm/uKvrGWitMSA3njB97Wr
	 /6vJey4lkRypXRUEgT7bur/VL9agS1Jx3RsUc2r0UyKdnbBoIdOWnokp+zGT4+HuLG
	 +XCl3ouVA+qvdZeOFey8rmXrVP+r8KEdAnYgxcesKhOJ3QhzNyIRhMQFgCeNq+j4bO
	 uNyhbdIVLOS5Lp+Gkh/WVGNauuLRvPC1sWZZf5/kH7PDg7xiCgM3u4Ivl6IS9kw1uM
	 kqnXkdhl3nUsLT01xX2N5EO2gM5X8wtR3lBOvtXWSbcWbcjz3Al/zoY763lYSoZ8pK
	 aXiABHp7vQ8Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911AAD1CA0E
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173076935358.17770.9085072249923132329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2230edd3dce494d98ca3deb06fae3e1ffbd88d5fb1b2142bff3ab71d224e04
Date: Tue, 05 Nov 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730769353
