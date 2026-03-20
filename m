Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D3B34C12B
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774034694; cv=none; b=LJ5BsJYXwiU7jsJu9Z9NdFSLnc7sGB93CpyHWf4k7PkkqmgCnuX23JyKKjLsrS9UvH60Su6nM2Cq6W60v93azsXDy2HLsAiJs9HhxC9s3dAO8jL07U9lSYyk24W2/IrQl8m/Kcj517OIUiCzVxfTMDPY3r35qv/0dTWmogm7X/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774034694; c=relaxed/simple;
	bh=MRnCJlDf5DEX+YDvmwWq5WQuJBWnP+j6uQLf95bvPPc=;
	h=To:Subject:From:Message-Id:Date; b=oZTFiPbf7Efa5gnw2a5anBDmki0nrgEA6GBB8O2jZTL0CINQHppL+TTEDGUZwvLEHiF66yM6jW67+LzIKfbhn5/l7+QivRLwCaGGq1/1OPnou4lfBanWnpy+jM29HXq9Ac1hS2l2ME5q7yeb43/zIlH2eVXHFf42YWdTqM4hRO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHMSQcxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHMSQcxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774034693;
	bh=MRnCJlDf5DEX+YDvmwWq5WQuJBWnP+j6uQLf95bvPPc=;
	h=To:Subject:From:Date:From;
	b=BHMSQcxs5V8zJ81K94uRNFIG+Wd3TcfAkbdVF2mdpj1TLb4TGMiPXoREqAkWg39GK
	 QefDO8CB8M3LWYB6fT9hGjV424GgJoEYgsGTSQH1vI10kVrHsUZZ6Uh9iKGrihpKAp
	 KqJ8HmrR5pTsJJL9gsaDh85UaFeM2rFO8WDKDktIa+2meEt/hZNrJVhAG0fGcKeDqG
	 Bya+G3WC/UEhFlo9PdokLMYsaQVPYe2ZWEJuQnIZ1ueRXyraFJzkJ0GwXUGWtaVa17
	 U60FqC7gJnjnvqsFp4aUk6sonHsPBTz+LjduYUhgo4+OF1pePRViiI8pvh72RgzoIq
	 HjZlSKHqw6f1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9466A1099B37
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403469357.11904.9557641643645954343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5bc6a0fafd4047ae3894a1228ce5c12a40811b117044e325fe35ef71054ceb
Date: Fri, 20 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774034693
