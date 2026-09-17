Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07E13C417E
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789650036; cv=none; b=Bmm96WbuiGVgh+8x1yQOyZAct7bY04b+fFmE2TIYwVsK/vQTm0mJxQ8tWotJxNE4+UZ//m5bh3pU0LBb7ZBKU1R0oPz6MgBuwnyhCbOKBguEXtSkqVBLYd8ZGirE5rPT/IxTwUbmnO85x9ywiWi6oXwyr9oF6gyCf9pdUriw4jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789650036; c=relaxed/simple;
	bh=2jyd/ar+l1E1+OPrCyMp7OZcF4AwEKeUhaz1X1ArYXQ=;
	h=To:Subject:From:Message-Id:Date; b=LG1TnYybP6SssXEGrHaRHNb8stCOuBt0wkq1Zu7ChbMTK1AnHDNLqy+ezoIl7e55AcoRxcdAmdZvViauKu/99OUJWJ7c9rMB3sk0UbDc2G4F6eGqyEPCUs3ycZ5qhcbmiPMDFghRlznXgJI+npjC42H/6cqVphCfzaZPf82HdSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfV/mrn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfV/mrn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E310CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789650033;
	bh=2jyd/ar+l1E1+OPrCyMp7OZcF4AwEKeUhaz1X1ArYXQ=;
	h=To:Subject:From:Date:From;
	b=OfV/mrn/QrLUHlMey3KRKvTyonLtf52AznlD0YQjHx7ZLSQDloBd/C9dXbkQGgPQy
	 PwAZRgjwAbNDrOBXyykVvBIrywdIUxImpjoMp/VmbCJwML0t+M9XabjrGipxASHPyL
	 qP/S+gpASFx+trXhy/IQNxeU9TD99wGReENKVInqdyU3hdMfWuX8ZO8MnPn1OE1O7I
	 DyCDhS1tU4zHukxdKK/zWDWhmWUsOm2uTOEKWVOi4ApeyLVUqIaiw2np4B13GvrXR9
	 7wWKoolZEumkammyv/w57nmEWRgJthvD97Esispv++laG9SUioYKU/Ru52iZJnrwwe
	 XqOiQdIUXtyrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF398C982CF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965003370.26377.4843729640022889170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c216a80c929e8770336d069377464284bf4840f3204659043da21786c6e1e9
Date: Thu, 17 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789650033
