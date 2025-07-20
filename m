Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F7B1917ED
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753046994; cv=none; b=mTB7Kcid1MXZVRRVpyUzNdJHVaoX+H44ChmsJtmGGioBASUUAUlQmPTbuXGHrHFasYDvLidFpQtIRmRRgFasMdTKXSdDG58K+Tinr71uHL2lZaL2cU9Y11KUV8LyYVkCdNOgc+qZErs5uPyKSg1NpHDZWo4YF4n6wzXg2LKtxgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753046994; c=relaxed/simple;
	bh=TwsRMBhopRMFN1EVPXpJkTUMOejCkn9/HwCoPJs21Ho=;
	h=To:Subject:From:Message-Id:Date; b=XyyDjfJG1zFGtiKWRZIUNuB/IG8K1bMdphsyUKBDMeRgQcZYy40zS5ld+FTDqCbYdQC02Oxgofwx/eKnrIExS54wDDWeMgRXpXf24EpcOQkM5N5Rco53E0RYZx6OI39gh3hrtg/xOVDIeKJf03rWBwBgiia/SVOqIUtDi2hAzCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wx/ybSzO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wx/ybSzO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AEDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753046993;
	bh=TwsRMBhopRMFN1EVPXpJkTUMOejCkn9/HwCoPJs21Ho=;
	h=To:Subject:From:Date:From;
	b=Wx/ybSzOjqoZGRihpLhrHPI9fS6uI1Ej1hhw2IjAD8/UD0O37ZrvRTBGnh09j8z3r
	 vEvoi6yIzHXkmVHVBdJi3DptWyV1du5oXc/YY4X+kCp0Y3XhdnK0lJ0NlrweakziZh
	 i2DF0LokSTQH9KIBlZB1WKQlP/cTW3foUkOa2I2w2OF/TeJNUSE2ryK9lg84oBKwT9
	 bJjMcivJTxNcjMuuolMMZ7CJD/2XEZCNjKrO1kpXRvtgL8ImMMqdW2g5MAeABModSK
	 JUnjBCDx95q0s5z59qaiumdF9Qq5455F3aBS8XHtAzP8LcbJ5YqWAKHSZ7ZIHQRsgT
	 fWDIk8xH+RGzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9531CC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304699357.30344.10649686286272785211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ad695ccba16499992398d714d091c2dd92d84a1b5cbeb7f9fe5211974d0d30
Date: Sun, 20 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753046993
