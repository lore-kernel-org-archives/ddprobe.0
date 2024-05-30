Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F3216F0C1
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 12:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717071863; cv=none; b=mBUZB8f3VSJGK9jazvm9Hp/40nN0e+SHZqqSkIYMLQXbko+XclZAUVfPuVMDmhI57GHoZamDBzImSLT63mhpHUeOC3hYFPn+VX0sBKryjtCF2EhLKjnDrkWcimOWRox0D35VMcKW6RX3QA4cFSXX0amN3D7NkeQWU0GByrL7vfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717071863; c=relaxed/simple;
	bh=SNnibA8ZLSUQtS64ZK/ONgo3Zp6J6TNtEa0G7dq4R80=;
	h=To:Subject:From:Message-Id:Date; b=bYEHsI33hn+TVNJofWdsANuKUkuFuXXiK/CRHf2TSk1uJ5HFHEgjMdwk44hmB9Iu6DkbnWqm3LEiw9hyBQ6PTh9VkUVSRXaS4H6IMeskgWVHISUWaStdvGMFZ609wRIqvD5iDGbgJsZWQZf/Ef5BLNTQdH25govRUxQO0nZgm8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeqynF5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeqynF5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85CCC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 12:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717071862;
	bh=SNnibA8ZLSUQtS64ZK/ONgo3Zp6J6TNtEa0G7dq4R80=;
	h=To:Subject:From:Date:From;
	b=JeqynF5diN7JGKpJri+KH04EKMhLto5MV5J14aCmt/FlYtL5CahoAEsDUYoOGxwVM
	 I+BpJxG9TSxRBYjztlf5j2ePNRSCK3ewstMASy5YxUVoTzFqI5gRNCZYRKphOoltha
	 qyn+J726Pwvpn3DSVJZMc//K4tJ7jaJ8uT2TtgMR981QlLuEEXyBXrJ/YRZFG7w84M
	 ssijWBAbn4BmKUZmsNKUxSXORXj0re3FLAvOskDFGqWiDfR563Y3urB2aSSfRJxD1o
	 iivGTzIOFDMJGCp9lFABXQO6mjEyZWHuxkg5m9KySjOm/8jIz0CX6FMBSueYbp9LTo
	 FZl4iPkIATM1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F8BC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 12:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171707186280.27830.4432092386671589670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 229d3a64a97c16d59ee94bb485ad1d9709707dc9f93d1a56dcd5c10e8f8370cf
Date: Thu, 30 May 2024 12:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717071862
