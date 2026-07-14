Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5682FC876
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783993714; cv=none; b=Rz6ljlBsqTdpXkmhJeJntlmsxlXcWtj7g2rL1/mfpYVkOLmq9729T0KcrDh/qw0ee7rC9fPLCSI9n1/5FkWaAjSDAYY/SSGoX8yCp/qEcN7xRclPGXwVCmgOA+AMBEiM5g07jGG94P8iik89osZdWu6ajKUeHO9aets+/hown7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783993714; c=relaxed/simple;
	bh=Ez2o7XAOdDjZe0X9e+xZS+uUzlFTn2W9RcoOpSodZhY=;
	h=To:Subject:From:Message-Id:Date; b=tcTk1mtLTls1iTQZ8izg0HVq9k4OzKjjCXtg/3L1E+blvypkGVOsEYRTUUFWlVRfvfIyPE/iZLeMQ/+BDGpCijO99zw+iCR5hBw+ndG1EZR4FgkOJWnl2Os4cRXDJO34yRA+C87KaJLAx2waPKk5I5sOway2AlCC0yq6eloNjCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jyut/jNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jyut/jNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D5CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783993713;
	bh=Ez2o7XAOdDjZe0X9e+xZS+uUzlFTn2W9RcoOpSodZhY=;
	h=To:Subject:From:Date:From;
	b=Jyut/jNI5QNqCXFTm4b0a5WKMsjwyPgyGSFIZavr2KBR2/X1mLbBUvhpzpnZjycPy
	 xOWA5BEEg4MDIiv2rqoxSzeYW9jeX6QnctNGyspfa+x5gkziG5fvCjwmkHR4sCOKS/
	 FpQEtaNehLmXt+Yvsx+u5xA+mfQc+JFd1SymPn9qci3Uwosnzq31MfjBqecbrni3RW
	 CJOdQkhOUxMBBkvXzN7W8YUZWTzy5sOr93cbh1oTX5kp5PT7pLWJr96Bpe1PwVaRl2
	 vm+2mTKqKjPhLOn0B8fam6+heB7TflisPZha3+D6ebMofUsWn0RYkOcDc9GN85Y3Tq
	 zwGShp0+kMCJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD6EC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399371368.30686.2144655979241665190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35988392aacdbe68fe46255776f6c61eee5d778b1ab1fcb113d214c304c7c739
Date: Tue, 14 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783993713
