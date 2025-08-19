Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196AF38B
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755577795; cv=none; b=SGgxjJS0T7bVuu1cLCIkladlwkHhMhAN3PCIKM0UxaWUhIVuQT8ftkuprkREEFqhV7yineZ9Tpx3gMChNlU1emNLTzA8JhwKGOSzkMFxOMed0fTHcZz/FuAIaecwO8dHfKFmFDSAHqRiv6xkvren53vQx4SDTrdP37iY3y6MNFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755577795; c=relaxed/simple;
	bh=t/N2lisH2Roiomsy9DBr2gTVWOYnd7olxzGPWdj8HoU=;
	h=To:Subject:From:Message-Id:Date; b=s2Iwqewgeosn30ENulteBdFt5sBiI5JZft56Fo5HajDApeeke8XgRXY76W164bAW27WgejxExlb08BZDmgRbObfIrU71viCXzOVekn8owTK18aGvS/l/SIv2Bvmtr+oacJVdKqtkccFBpOZOkqjMWCCps4P/QmcFpTvXWZQ/qDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbjWrCv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbjWrCv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DFEC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755577793;
	bh=t/N2lisH2Roiomsy9DBr2gTVWOYnd7olxzGPWdj8HoU=;
	h=To:Subject:From:Date:From;
	b=FbjWrCv/r7kA9grtoYm2/WNWBtGbg1CdLgLBvDHgpryBPRhCVpESi9P99d/BQog5+
	 n1p4+AyVz9rszBBiajw1/2oEe9pU3iJ/+UNqu3Bh1Ff5vvx4NzWFcOLxGGBNP4ZPgZ
	 g8A6eLhPxjzSbC0VPuqJhlc64O9/FB7LXiafrkREtlE9czeAbeCzAMKzmagS51X65J
	 NMFYKtWUKv5BmT6/qOZN0QWqGmtaVhfPaTpvg06yahHYUEOPRXCWcoq/Zd5TDXfJpv
	 LJ6tN7i+nPuiKDkEsmkpVkNSaIN3HHJDstD/rKT2VOLXnvkhNBeA8gTSsOBUZ+3Il2
	 7BfOuzKsqmFNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ECBCA0EE9
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557779357.21731.9100275400046156845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f088134f33a633f5c842f97f6b9e563cd0ea9bcbb602e452a1cdc7f714eb1f5
Date: Tue, 19 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755577793
