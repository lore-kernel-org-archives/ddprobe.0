Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447AE189B84
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744357194; cv=none; b=R/6uOG0uTXwhgcMzUckSNF7V3bT2DRp94MYOmBg84mQ4zf4cAomR8nx2ilp0HnNQsXGIvMdROx9Oo41lpZuOdohD07R4GOjksQGQ3yZhB/d/GEp+zowEYvxONakXEBPcc2VxAJ9blE/UKi7E/ejgVBaMYG6E8+OTfQoBQA706gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744357194; c=relaxed/simple;
	bh=qD6IvJ064lC05QaM7ffNoAbmzhCMRPd7ro3UBbq6tZU=;
	h=To:Subject:From:Message-Id:Date; b=nV2Sm7Z8CG2lHEPCuct8dXaR1DnwJpk9qDLfige/iJcrsv6cME+UKXpXJagzbPCg/oD+6Gx4dD6DjtJlqhTTFAAhyEcfJi9d0o9eTOWc+gLLjrlqscV9oB+J/UD3VzLTranno7ig/a21joqUvHAdslvR0N713GLTEsRlVkpIJTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVd59Z0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVd59Z0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC607C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744357193;
	bh=qD6IvJ064lC05QaM7ffNoAbmzhCMRPd7ro3UBbq6tZU=;
	h=To:Subject:From:Date:From;
	b=aVd59Z0i+BzZ7i198QQHmxhqbESrjGRqm75/cFm6SsqHsPY/5twzBVl6T8ky3VFFh
	 Cs7AOmtEgkDGU+chX43wtj3EPcSsLgQBfdXiDHALbIT3NML/Z5r1OPfpSdblCIiENa
	 1O272cG7ZruP4TLyK2YINJRj6P8zM6O4kERXPItKz0K0l/aLwwCGcFljp5IUQZKgsR
	 enq3Lnw5G0gso1a+CmyxQWQK2bZQlp9pg1tV7I1Nlx8x1pJby3iE7Rx+U0zQifHYcb
	 qVhF+knqNm0MNFPGkG4tTTXH/pj0SjtMLXbF0vmQbeOoMlWaVxOKL4/NW4JhQ4q/QW
	 MPMyl/cm1yB9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DC2C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435719361.20877.9734307488062471036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ababec2bdaee6b0f76d91d36882b3358417ff9accf3853b6d90d41082adbbda2
Date: Fri, 11 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744357193
