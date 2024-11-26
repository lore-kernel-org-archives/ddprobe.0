Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288CA19CC02
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732661154; cv=none; b=Eh+ekUe/PI1+vu7G5JZ4jw/Zu/cKjFt66YjrGhg5NArlJuiC+IhQHUso0rztl1UdxMHteNdJxMYuC9b1EECj1qLKa3ABmWrKNjTk29zDXXOMYk9Ra0UUoDHjggPO1jqf2cdqOy9W8L3x98TyrmTaK4iauVGdUiiWVNU85Rq3mlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732661154; c=relaxed/simple;
	bh=D58LHkVCV6G63iPNFNT+TCvOJFfHPTK0S4eA2Lu6FO4=;
	h=To:Subject:From:Message-Id:Date; b=lsBP6zXLETi78KL1IHmYTCC9RQKS1KFSeaNoeltRUDr4ybCJeclDWNN16dayn0MZJwqmw52p8hGL0mcLiqtLIKCNRbdQCiZ6jihxj9MT7vTqZXC7M44PhLF5UdvLfuyIj5+dmDs9xfVl/k4Nn5qsH3b+vZu9pUYKCanfYgeYLcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXB5Gxc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXB5Gxc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE70AC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732661153;
	bh=D58LHkVCV6G63iPNFNT+TCvOJFfHPTK0S4eA2Lu6FO4=;
	h=To:Subject:From:Date:From;
	b=CXB5Gxc2hZa3lEgkNCPml30wWXAD2768g1icIA19Fc4ZgIrhYSaw7JPpJFZlk1YdW
	 0s7YtStZkegPAvMhAOXypWPjqwpWWsPAb/3NMuWs0ud2e7rndjm4ZJ/lPWUrdF/edx
	 ucdwzCLCVHb2slonN4JQaNv0uVUTwmpddCTI718Vusq6IZpAbDpsGGMt5STl4IH+34
	 DKj0ZxWLAo/mUdTumMqaMxj+WtXrDNLbo07tTpdJmI0MqFdX7Wi/qVVKdzhbjWDfXd
	 ttMdaBedpY7AlgwwElMyxhubvstBPmKMtqmNAWGe/h/xqtVWAk7OMWUhKWE66fM2Fn
	 oRXLJxTRTRLOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94967D66B86
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173266115358.3442.3874497737873575550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6073d7aae9cac4a64abf16da4daed027815dc2fb082bb0e26ca142d7b495bc
Date: Tue, 26 Nov 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732661153
