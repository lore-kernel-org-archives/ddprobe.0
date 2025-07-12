Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BBCDDC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752320994; cv=none; b=NSfWE2DU4pbL23HBFRFuN7mScl4x5rr4kr8f3Tml9+ZKU488jciAJZga1CYmt08w7yqbGbcWpFOcCt7r93pm3Zo1T9Z3apGpCC/H1v0VjSXLx9QaHg3OdQuHupjoZnFxIYRbzqdUokqhgx6UFc6AhaNND0SSbwRh0Uq79iR0tvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752320994; c=relaxed/simple;
	bh=/ifY1kV+IzCmZO3l7tULLDMXwRMKqmWnFQ4yXF9raEU=;
	h=To:Subject:From:Message-Id:Date; b=mw4FRhOdrX5PnPWEeXipUh4KGD3xTaPAbB47N+o36PHI0N1koJmY+QwzcW+q2POihG6LESjrWupQfi8Qoh6GYw8tR4S8RhiarCPwOUekHMO0BGWi9uxKe3eK+bPsCGFslJnLvFCVMdeTP2nm+0Yq27ZBcCsTqUyAeUk/K6oLKpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhz3b6mi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhz3b6mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1114C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752320993;
	bh=/ifY1kV+IzCmZO3l7tULLDMXwRMKqmWnFQ4yXF9raEU=;
	h=To:Subject:From:Date:From;
	b=lhz3b6miv4C9sAbX90KDIf/83ModnRxBoJLrl4ELoEbJWkNvJoKozZXhKlI8v30yw
	 1Bc4iLhNis1zBCMMhHwT8awRG0upKxraHxG3g9KNUN2PnBJSQVX2bXDa3ITP/+2m9h
	 X/UndY0zvPNY5S/95cxyuTUg5ltZorqh5MoQuVuLFDSvtIPOdIIBjDhh54mcXjNpC0
	 dagLkxnDJLpuebhxkxcbyW2ND27t/Y6zLjYd2FWOGptfMsxaXjNvlv9AD5B0ZuO9im
	 RaaM4x3Ptz43MrsQ+FzqxFH8A6Sv3g/zhgcyltEXMDpRdRZAdvOu+J9gTKLOhyc21A
	 vjp499Q0iEhbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91587C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232099357.23626.3504263805179884076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731c0741122299c35e4a6e3a4b5761e83dce9afb49535b5331b086ddb6f9a70b
Date: Sat, 12 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752320993
