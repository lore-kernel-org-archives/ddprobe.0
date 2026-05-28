Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BDA347C6
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780003354; cv=none; b=JIbHZF7zq99N3tL7SOmhy26qKu/04bZVBI9IPMAeODDSZeZK674i9MAAyJExWDqL7mcqSK2Po7v1hRlT9Lt7D247/FWuI7HAI7TRc6rMyUwy/kW2tKBzWq0qc/Dtq2Li7ZNidk16Jk4eKtWaLtjRy+ZdpYP+3NGiKRf/9gqd9VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780003354; c=relaxed/simple;
	bh=yQPH3Asy285k6hNHNWfiuJoDXNpZy4+SPOT1mtiB4p0=;
	h=To:Subject:From:Message-Id:Date; b=cPs53EM/PkFAZSDJBTeUGMTDH8dFbVulZahkeInEidEi6xQ0n+MmB5IZoaJ8wjy40INaNiX6F/iCPfoAQfAaxMHXtlpeIvT9lb7khCmFj8PeJo+N48dLCxuJdO3aTAOTmGN57X2Zdq+CMEkpYwlPY+LJYDqp4DcqoOIgtDSUFkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rj97EuH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rj97EuH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F36C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780003353;
	bh=yQPH3Asy285k6hNHNWfiuJoDXNpZy4+SPOT1mtiB4p0=;
	h=To:Subject:From:Date:From;
	b=Rj97EuH3ZcSTGbklOyuvh3/YHODFHu4xM6pygrlZi6UlzqM+2km23FBDR9ZHSEyCU
	 JuPjcmRpoawk57tasHtsLw8sJSfdWvz1ZZovh1l9yRiUPAdr01PFrMycc+QWKMmY1G
	 JY5K2r8/Iz8LyI39lvDM2K/bx2Xn/yogWw4ZNg+QMl7g/5V1voI83ONgDDto2dYVDx
	 U1Wy47pcH+Tdah1ZeZUit29yBlWv+hog/NedavAiafX97JxQ0iRYSeB5HGSksqk3TI
	 +FdYnSJ3p4pN86/znfCKJBmvYRmFJgeFzQU0qVKWkUQ3JF9bQGvp4Y+6qvMgbmdXW2
	 BP40IU4veHWMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA7CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000335369.28478.9139661034275345861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c8023a18c938111fe68783640d65fa7ea19f520d5e447ee95e3c24f351a8ee
Date: Thu, 28 May 2026 21:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780003353
