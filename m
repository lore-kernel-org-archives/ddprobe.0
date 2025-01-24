Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2564A1D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737719755; cv=none; b=nBqzS2pcVLO/OP5pCJOp8peUTQtye1trDboW0oFFHFaWEulOxw+YovztIAuKQ/FrdVQoK07D7hgNUpf8XB4Nu77hMCHlKz70QCuO7f/yOnaITHk9x+YYNXI+gUlGmY/v0xi8U9OKEcMcpokB1mius9IVXC/FS7eQkfkH2EELDSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737719755; c=relaxed/simple;
	bh=v597J/OXG8zjAOGhnfvy+HEyQrVjFDp5Z6JLy2NZP98=;
	h=To:Subject:From:Message-Id:Date; b=dNnb/WwatUebObSNmScQ3kZrAM/j6x+3GYZf4esKGtAa8Jq6GHk1+TSrdEGdEAMIh/JXNFxeC9uM7QlhOuBYcurbr1Vepqc6O8ooqJQuFzhLX9WENSYWj8SKppItteP6mDz0oMdoyIV+vYI0hKz2APTr5e/70wBmAfZIGgHKrug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhUS4wcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhUS4wcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD47EC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737719753;
	bh=v597J/OXG8zjAOGhnfvy+HEyQrVjFDp5Z6JLy2NZP98=;
	h=To:Subject:From:Date:From;
	b=lhUS4wcSs4OarLWDBCHtO+SawfK4ed/UVFUkllZbkG+0OtU5Ku3R0pARRxgDHHsjG
	 IF7Q86LQKJ/NhI8ljnq3TmJ6SVstEJ9y9JbBIG3lF6STIuPLBCEGiaBweibtX+eQkx
	 jcMFOkkANYxigCaZWBPPhsQ8LLinXR7wYBIf6S4U3Ll9FiLXgNw6fhR7UXCF14DtwC
	 LaV8mPcTsa0rUxwr6ifE4Cp1eyAmSWt8TjJJ66akHYKR+KcrSSeYsEe4DYqDmQn1bM
	 /McXJnhLERcIv1XOIJd6qa/syANfrdyGDuLok7f26IQSkkQtjgqBxUBmGOfEX8KEhF
	 tQgvzwc/G2OEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99035C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771975361.12482.374587126936676332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e13253d278f3c588adb61fa016382d7b48c486d99404090391059bff845f3a6
Date: Fri, 24 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737719753
