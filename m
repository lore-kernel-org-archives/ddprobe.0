Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236C830F53C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775861254; cv=none; b=DBSHP4jgSxXBv9SH5clA9YNHn7/nd7xc+ldAYj4spyPNwHilTArUvXXhgXVf5SZEi+wBjakUC7by3pmHq+JzwnycjwwvqzbwCuCpf/4K0rIvK3FR7P32r6IUXc03PpIONEPzSkpFnsdqdfXRKFnD8qD0eLgrgcTP4PyB0D2dyqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775861254; c=relaxed/simple;
	bh=VG0mwzg6KLHBaVdFb86wwWzBreQ4674Ikk2rflNADio=;
	h=To:Subject:From:Message-Id:Date; b=SsBy4KFwvTI9tbUoscL4aBQz44nR85Ymf/nOR7ZV9dQeCvjrxiZQZ9KycwkrdJICagY0IsKuQDpzrxxcXjJexU8KlJwPhd7urPhW3dd3E8rH1688QKHRRUSgvHKIyqYYVPNm5ANVYI8WBC04Bq3SY7Eb1l5nG0UkiREOUVFYwyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxxTkwQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxxTkwQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBB5C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775861253;
	bh=VG0mwzg6KLHBaVdFb86wwWzBreQ4674Ikk2rflNADio=;
	h=To:Subject:From:Date:From;
	b=LxxTkwQ9s0bCEETLVbElBt4AMG9bTlbyWLC3YvnL1YDJ2TpasaqFJrS9Mefv8jOS7
	 I1e4OYcMdI5iQ2SBDDzg76bxkqOrZYaChbWBTFNnwFVD4sYIBfDMK0W7xN2qmXwhxn
	 jWH892zAvpUIIMrxQAvJfHHmRWQIm//cbslvTcjnaYNw+pUJJ4tRJadqnFhKyEOntZ
	 9ojDUekNInkwrbLI5gBavam9q+tILmd8cgllAm2A3/ToNtc3rjk5eJ36rsSUT3OA/S
	 umXIHvFSYtzu7b/Jq8lm2Y2GKxiSAdHzijzCB+/ILGBBrfk0ReCy6dcenG0mm5C+Dn
	 8/pi5bQFNfZaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF835F45A0D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586125368.6580.18021059808226620266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15352374ef84dc1e90295c7cd3e46700fe543dc6ee8361a83c93080a84fcbb03
Date: Fri, 10 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775861253
