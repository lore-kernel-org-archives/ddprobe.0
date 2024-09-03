Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAB5126BE0
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725396354; cv=none; b=fPKe3f5xwcsafxFXp3JPdbw8+HfLJLxJDitM9g273ptC810l18qLTGNUiRnZU7x1vdSllMWghgykXf9h62wy6rPdVsSuEJWmLFSmEBCY1waFqmKOwvMdkOaiS03uCbh+ejObNZ285SyoQDaznZ3qOTEF2ZoJEzTdoizmkUUIMWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725396354; c=relaxed/simple;
	bh=hLXf7e8Twjzpp9iPlGJDTyxy36LEkUCndmC09xn1No8=;
	h=To:Subject:From:Message-Id:Date; b=Z/V4xehZcOZEZmYTmDwMjLNSDWiZFCt/pNpZ6YkWyR/qyKDm1jGRucFx8CTSTBxUSAECuLsf23ZsqOd/CxhSDifJCXQ4djSk3Jw4xhkkWl4JN5Pn/a4g4J5KF/w9fbDV4P7IR5RY8P3yueCM/ZfoGwPGbc8i47klpZ62XINepEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuzOrVtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuzOrVtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EC9C4CEC8
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725396353;
	bh=hLXf7e8Twjzpp9iPlGJDTyxy36LEkUCndmC09xn1No8=;
	h=To:Subject:From:Date:From;
	b=OuzOrVtzoOnj6zzTrjHnHcI297/QMyPzrn/yoIxzSxx5jao7o+IBZOyQ1wKqSk3Tr
	 0yP9EaTGYojkIB59+2w/5KT0C0aAtqCJPXiujrLVoJ4K2+nUEwW9owp/b6bVz5BhqO
	 0qQNVheZO6wEPGkz3yfns0cDjp5YBbhZO5nWYCjN06jNKl89gw4l35ok/zbwfxMxRc
	 ZDKevlEllRR5rrEpfpfB0bime4v7nktPyFQ1Va4oQmopHDPJY9f7sRWRia9/CxzZeh
	 Q1sYUVSQDm2elc3Cr6dK8cc3/mzTM1hibuAtikUZVhN6MbBpL1SbLB3Av5Qfpu+FOd
	 i3L0cSrYsAD8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4AACD37AE
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172539635362.31782.12740380370976641954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff37b808ede6854ccd60df89aa88a5bdae8b0beb752f31c0f61c9884cdbc698
Date: Tue, 03 Sep 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725396353
