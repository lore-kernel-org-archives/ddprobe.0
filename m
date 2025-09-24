Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26822C8CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758677994; cv=none; b=gl+KOtee3CJNVKqnrCGa0mFfrfHLZGuOtmp7/Wo2BTWPKy1Uq+ckCp5HIMOHKzRWSvl4S2dHFDs/YsaFqG7UuO2i70JVVQqzAsYLikt0h4O9OCB9WFogmAcJO1K7x9ISzy1DBZVDSz/u96t2YAjSUZLADtMdYI+RWL2AM2539gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758677994; c=relaxed/simple;
	bh=LrqHzuq77BiFV25OBGHERlfbxpZGaTia9JSoX+0V5ic=;
	h=To:Subject:From:Message-Id:Date; b=IJBLYkHjQ1ofmUoudJ69TT0Sq+wsQ2jtXiTADvSHFJKpZbojaIZHuVs6F70Twf/wcC1hnpW8dPd6YRwIf3HqzJR4PFLYps3pkBvObrO/ycmztjuBe9Fa50daLO8ewr0sZMbNs1eYczZiUcx8Aqh0xUUq5xBjCwp3vNmpDCJNcZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdNTeUMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdNTeUMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B89C113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758677993;
	bh=LrqHzuq77BiFV25OBGHERlfbxpZGaTia9JSoX+0V5ic=;
	h=To:Subject:From:Date:From;
	b=IdNTeUMq2dXiTE3t66g0DDmiRnjbbi317JIV7+HGHMx6LKc9F2+n+ClJ9b//Eaacs
	 CZ8a9y7L0RV8W9KvBOSqpoXhf1+2BPGrjyljiXryeG1t6DNa7J18SkCOpH/30SbFNe
	 fH2rdJzp/iwKjB568A5I3VzBlEsHmSzoY9t0hvCHLxzk3leHNmjvJM6CD80cxxh+Dj
	 wz351gCA+WG+5iVJMZetWqJeb01CPylsnrBr7hZRuP/KyFsYDLQvZxqkVYdSiDeADn
	 wymrrTcYsNCScOi9U4opzAgi/OyVQ3vUlrpK5mDUp2VyJCEh/K03tofuFVpUcym3Gi
	 P1sLGIN5LOyUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9012BCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867799358.4663.2390221384786180808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2705bdd61fe5c8046d8f175e5a202126de2b9ef6ca02c4e9739bbbee56d329fa
Date: Wed, 24 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758677993
