Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263FC1DDA31
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751435395; cv=none; b=OighX2CoZvHrumJSEnKD+pH8Vl9xX3g5gRtTaYhMEByHogBHTdpmHJ6tW1s9J5LiL79Lm2vl4W3sr97Fsqx7O91GEIrvZLkdZQmBFR3kgOtLWShRESQlaj301qo9Euc0pWCUXR6t0mp/Ga9MHGLH2kP5XXMZKd4zFSq+yNyuctQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751435395; c=relaxed/simple;
	bh=LKXBw56mygAEx4FTrJhnj5MFt1/M1EHmlah0L/BDbh0=;
	h=To:Subject:From:Message-Id:Date; b=UGgKPJKbSkQHk9v0OQCCrUHiXuENSP97SrNR8XUNTfWglSdTxGCFarKbr/Vx+K7qExZ1gAit8WV+0o1nCy12Xpn442KJQ4g2ja2wLYm70UAn0cLBGtRB8uyDIWh417Rinm9wVnNvLahboRY/jP+yJzcaPSYQL8/2g5hoaX/O+uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgfZ26nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgfZ26nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D297C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751435393;
	bh=LKXBw56mygAEx4FTrJhnj5MFt1/M1EHmlah0L/BDbh0=;
	h=To:Subject:From:Date:From;
	b=rgfZ26nzLInHVd0dWn/Ryu73CJx+YCxzgRZdlwGrZrN+36TZSspWfUsP4Hcbt5kX6
	 Nboh115uwt3xSHMexwnq6o7czWhuvATET+vmj/AYhAmg84xNOC3k0HSwgZ3gURBQ3f
	 hHGbj8d2RtQU3G9h/luQ4gUgjwwA6oMs2B39VX+dElgh93IFUDXacLKU7z3ObhKQSY
	 OIgKxlzMZp5O9qL5UHLPGSlJehw9ephalM/6WeqPORevmJ06imbWHUBHH1yG1IQ61a
	 KWyAAZpUIj7lUOP91vgrXQ1f23lssWzR7mhJMQR/JaB3Rb0bopwy1Ux2oRBTagc8b2
	 QWJV8qaxPKG/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E77BC83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143539357.2289.13216647064526358819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c13f0e2fb69335c32f20296f3b830c1c5b7c2312e61aa413ac22620de420717
Date: Wed, 02 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751435393
