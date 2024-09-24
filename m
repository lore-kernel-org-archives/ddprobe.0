Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8926E614
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727162754; cv=none; b=GogihmzltxZxZV+iwGLdWOkhhAojttM+R363zVrtPSY2kmxI6LfSyVa1qY8h1y7GzEc45Y9CG1cz69U26ggGhLcHD7JiqUc9LxSiD91iodGbt5TM2Dzjeevd5qXEYhtrx5PeF09UD0JVD61ZFodGst+T6+V7yzMv6z6BA/LpWww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727162754; c=relaxed/simple;
	bh=6KUV2XYEFnv5SO1XPxO/b2B4QEwuVU5R53MCZXkaSTo=;
	h=To:Subject:From:Message-Id:Date; b=TIYeWWhwNpgDJSG6JDDJr3BpTAX2uh/93dEzpqrkU3dFygiYYkcfiguBoAOjYrS0qSHo/lcvHb3CQwUbhXD6R8UYQx/KUFixKKRfAx7DrK/YEBiuEuUc5zzNMhn/FYQzrlybsJNpxN02lfv+ZZAZfUfvLH8cUHWsGkVbFqEWhJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQD5Vz3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQD5Vz3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61EAC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727162753;
	bh=6KUV2XYEFnv5SO1XPxO/b2B4QEwuVU5R53MCZXkaSTo=;
	h=To:Subject:From:Date:From;
	b=iQD5Vz3u5DsDB3YJ/sWYn+1jEGwTSlLzgIDnM5EwBGG+V3n21ur8wnGkqWz/d0E5m
	 ZM30XbwfbtyC+YqEoZxM7PUCjqHSp7Ux/QtoiZW8QMzotScfFxiaaew0oGRetHczO9
	 RrOU4u2qfaiXQZkIqSpn+zooLsf2LKyZxbEhkAbh4sobFOFyRRqO2jtRBVSEt8TwpO
	 1clIcCRPdmF34JE5gwOaDc21h4TDbASTmJv3vCIkYRh0cnAETo141VQvE02LxCa3P0
	 1KUKlqEfzANa9T9bTBvoE0oB9034fzJt0o1YZfTMMBzTD4qTVSXG2oWUQldpIIFw6D
	 vWIEV5RlfZAog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F5DCF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172716275360.1515.2810928775064192356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfea1174dc2983245fdd9d24af346f2c0b1bd6f30791805105b9bae559a025b3
Date: Tue, 24 Sep 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727162753
