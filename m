Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C387611E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761468594; cv=none; b=SkoUhj44zMgqHx4R08QYKBm732aaaT0i3V8ZtekTxyGNtp7VlVpQoCG9i//m9Y61mQcU6+pmm+XXE6ecVa5PC3L3h/77vPiRBans+kjh9gN+x8G1zSfFngyLy74hbym1xUUu/S1OiRMvM2cLUOmrr/aIi8j54S5K6Ev+GlyUfp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761468594; c=relaxed/simple;
	bh=J6zaRbLpqqs7o2URFF7C+O6qGdQOIVipPVVMHlT8o1I=;
	h=To:Subject:From:Message-Id:Date; b=WpsCJ/Zftpm6ikwcQoseIslV0bvO0+CxywVjpZo2OFm8JzXCnRy3qV6IM1nojWhtnfjcPvoIAN5+i0xdBputNB16a0rLnGvUMJ2BZ+7ovIZXB6qvqXM+Z4rxwJTBROTrOAdhMEG/QmIDe2ncPVAOMBc3JUDNxS0Bn1uO7uhHEYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZgfgXic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZgfgXic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB799C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761468593;
	bh=J6zaRbLpqqs7o2URFF7C+O6qGdQOIVipPVVMHlT8o1I=;
	h=To:Subject:From:Date:From;
	b=PZgfgXic+OeTq9mKHzymYE8evyws2WGn8w8tuxlWmkN31zkQYkeoWJLh2KI0Iv6DU
	 O47J6Dbp7r4KRW9MXwCvYWHaa2bKp9oBOCoi+XyXsfsOW4mjIfGdrg7ENlrNOC4Rq3
	 XX2U6WpCLJNsitcA85/PmiULVSW9A7xlBNoUzWVc4mRymykXOwZPEIK+KRBDfuFBSU
	 fDJaInSqmOQHDKFsTRX9iELHWWU87X9chjuh5GcDVdf0T1icdm1OGh5vXrc6OqQ0A2
	 +FvysGWzrND8zBmeQnRr92ThZzgBgTzH30RO979i8gcKH+ej3C2fllVyQ7UgO3NxAr
	 /GWyAdLRFDacw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9665ECCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146859358.13307.9279741104110288987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9670b1cced2a834abb23fd7ab07174d7a873ad647b20da6db826f656dc2555ed
Date: Sun, 26 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761468593
