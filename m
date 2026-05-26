Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFD918B0F
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779829354; cv=none; b=gklCrKxw77k9HiOEdX+wFt9nxphzyvnoKUlbkrows0MKl7EO6npy+46amNp6Xb6IBACsbzCPPNnoXWk+Rmpkok5AX42YGTB/MxA4PT9Vs6PEInziSDPJw+Tfk5pL7gxCeQ0M/P2/CJB2Rv02AGnnRetSajnp/uUWB6g7Jj0g8QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779829354; c=relaxed/simple;
	bh=Xkdle0OLCJO5ICLidPoq3mmUNwvBSQJ7JWaspFPEXcU=;
	h=To:Subject:From:Message-Id:Date; b=p6sB/CtMtp0VQa8kNxn725AAgS0q7mGtQ+3UZJmtj+cLxozyA0wQYfTv8Tn9rXdOZkKVeDx/WLvyIesruztQX/EptNMnRk57HKFl6lydh3T71amKnMGeecbDA5su+DPCB00mZak5rrUbEpLR56ugTEaTLq46dTvL9wrLiSQysGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUcS47US; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUcS47US"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EB5C2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779829353;
	bh=Xkdle0OLCJO5ICLidPoq3mmUNwvBSQJ7JWaspFPEXcU=;
	h=To:Subject:From:Date:From;
	b=aUcS47US4lj/n+6K5LuFV7SdmRyvnR/shq5pfO0SzGe/Bc/bVt/2avBIVLNeXlZrg
	 jKW/1vuXuWigqqnDqtrcxOVHEnjOvXWzQqucqB7sC8e+hE+i7QF3H0t+MKij5FFiRD
	 iVGrg83Rf7uQUwLJHe0cN9Q//i/QHQ2zG4U2Txn9iH3pzmHvBkhERmvg5RrHWracxc
	 L8aBvjZwGLYRXtjJsRxHA6SYPZSG9Xi1dCFxRrfDmnK8ZIzcRLDeOaZGXv0mAx9aMP
	 QoL9B0xa/8bjU7UmSAuE6aKD0J3HpGk/JONSecAZpfqXPWSSX2Vlf20roH4N+ZUjia
	 OmUxx4FPwcmdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D9DCD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982935368.9242.14119700420749643604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41f9c94150f00b523825901b1dfe1a66cbef59dbc26848feffa0cb34c70cc43
Date: Tue, 26 May 2026 21:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779829353
