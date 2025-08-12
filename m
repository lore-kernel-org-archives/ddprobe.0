Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413C42D8365
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754967595; cv=none; b=Ic+16f8/Z0M5YBNosFkrOpjulDMUHzBa+pD2xxDjwbysJb6mKRwlQ2dYRNoPMt0k9Wv3otGGAEbN7avNW2m1kOznZLEdmAGwP/OLB51mTV/JZH90O7v9zbQCIikSU6HVbOZqiuQMuJhkeHPTa0xGPseKMsmuxkOPMXcCVp4tjzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754967595; c=relaxed/simple;
	bh=G1keA78Phv5r45s5FLfatITLrUvPiJkSk4aFV8OSqPE=;
	h=To:Subject:From:Message-Id:Date; b=aFEfkkftLJSXLaKAk3/b/G1f5D/p6yfvw+mPP3QgIskoqbE5weY/gqks7qoV0Rz6+3WLxqvYBUHbWQ8pVTt7oslCrQVMXYz19yNU4wS5YtuwU2I+vBSUMIz9H7JOPsrf4Cy2zXEM/cVdyW6goHrsecvUWMDmizBqI2NrcNmPKf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzRIUyqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzRIUyqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34F8C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754967593;
	bh=G1keA78Phv5r45s5FLfatITLrUvPiJkSk4aFV8OSqPE=;
	h=To:Subject:From:Date:From;
	b=gzRIUyqWxY+NJ9aVijwktyyy0HSWTmIYQvf/3ERimjs8dS0sxUK7aocJdURHxk8Tf
	 CiA+qT+mOfhycsVa4wJHXmECTMTLP+BOlNp6m16/SvkRGLmFCfM1mcdRKsE9UEyqbg
	 SBZ7Q8hpQ1X0ILKTNsHnc6q4bIDQ18Wuf36rStOZtfTC6ni3zVFtRBi2CjnoFOAhau
	 xCwKBkHJdTULDYbmpCznH1eZ99dPRIUuEjxaIamRpfm5aSxwHxmen1b5rCOuda/WZM
	 //xBh5FUegOxNypIcGLLGNTfDtpDo6WiRpfCRDJh8p+F4yP6eCDY1y5MxFAeb3y9TA
	 e+Z2543I7k15g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9DCA0ED1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496759357.13845.15820088818294324678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f074431301e0adc11e2d6a974f98e2b5cc79c2533d445deb6868b6b49b9e63
Date: Tue, 12 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754967593
