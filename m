Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4BD256D
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750732794; cv=none; b=U0pe4oYpa53b4cjxkfLUnQ0dxHCJx6A5K27j4XtSMipU53pflvZaHTB+0LXiFUOl/bEuqnbE/pooEjDf1PPHJTOKH718RGt/xGth8lKf7g6xFkUkEHYHly8OX5bscG9EsyEiP+eeRe0Mid9amMs8KePlomRlx6eC1LApDBBNkgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750732794; c=relaxed/simple;
	bh=v0HL9gYfhURpcMzPvgnTiEfyzWDltgw1qMT4vpQqlVw=;
	h=To:Subject:From:Message-Id:Date; b=SDts591ITkHRaLngCrKjt1bkFYvXEzck2HPFXbDstJo2c9ToanDdiXLpPkrkY++jzH5zvLnXKLJr02f6rvKK9BlmbeNukTk/6bVFQ3lG0w9uafcVYw/cgQ2Hcfn+9cbrpBEu7lA23NZUEwHKhbWXhbNPNR4ImbrU7RMzb0tyMEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBwEk4ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBwEk4ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13C0C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750732793;
	bh=v0HL9gYfhURpcMzPvgnTiEfyzWDltgw1qMT4vpQqlVw=;
	h=To:Subject:From:Date:From;
	b=OBwEk4ei+x7s6iTabh322L6MomB5/bIIF0jdkZaIvCElLpdWHFlprm+wJMPTHm6Vv
	 f5e7patst8/l+EpNAZNTwlFUp+Yv3Tk0vgK6MJh/TAcvWJ7NWL1DL3ODe/6skQ1AAZ
	 2sUss36wbwXr1a+N2ebqofbC84v8gDBWr05pZBYPJHNuihY6aYlj3OLAOQNEik+Eq5
	 vnBEAZvOFfDyecXCPQ7EX6jSxqwD6Ep7I7ohU24fLyuU/m0F9d9Du9a5d2ABbzlc7M
	 lUnFU8aBkAEj47IB5JnU3FrFdBo6dGfX08IdiU7E3ohERPMQywE3RK5YlpXbZbKufX
	 zKA15EO+Dl/gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC86C7115B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073279357.23163.14938828552638400367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419a5b03205f5a9774ef4c67f1659255eb6d382fdef10aab94dc710494c38d6e
Date: Tue, 24 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750732793
