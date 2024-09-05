Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BBCBE4A
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725520554; cv=none; b=KIuCMiZfvCy+tV3gnFOGAu9hb2sGgmdn6DKzOo7a8BXyjjr2dVuH2ipTLzqhX5vWa/nmh9ukwTsSBn7fq8DsbQkAoO27Of/YRh7JSJvHOSvVM3bCHPBk+X74jWlGJQImOBtYORAo7KPda/RojTC0TQbbq21WyRoqORbSL1JDmsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725520554; c=relaxed/simple;
	bh=PWYjTyDqi8R4b2JBJABhf39mKDYonFWkqPVE5FssQf4=;
	h=To:Subject:From:Message-Id:Date; b=hH1YJkmMTyUp+uJGHVrubmWZi6MweJsB9pPERpjBW+dbwkuXFSSI5SZMaYoHWsQzGECWJJnsMWxzy5mGVR1wlIsyflkpiVwg0E7VKG7DyDzsEnJ+ag63TEye2GNmVEpLMITNKdMUH5hunWbeU13zgyX6MYegBFFdStbJYwASY+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKnh1AWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKnh1AWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F60C4CEC4
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725520553;
	bh=PWYjTyDqi8R4b2JBJABhf39mKDYonFWkqPVE5FssQf4=;
	h=To:Subject:From:Date:From;
	b=CKnh1AWVhaErilj8sGn2JfBYP+RmmABBYGWnWQclrixHrM8W5S73C2WHQ2FfN1qxY
	 WLWQ0SyU0em5qHclCpB1BST2tutu2ICK9J2MkDzuJB59kURtfVaMCmBkMOsGXoPCV+
	 pBm67Uxw9JsNYqx7GuEkjbLD/sRlDWBzhrJlIYbJu4A6KUD47tYdxTGU7WM37iYu86
	 9akrDye2YvB4aU0pg2lNOekuCNW+4swOCCCW3TmnhCOXr2d3hq3f+E4habFVC9s6t2
	 oIXA91L2bFMC4SpTF1Qbi8jxmKtMG3J3Jbw3Cq6tneXi/TlxvJvGuwIhvrMZMlQ1Aw
	 oMzBHmdaLy8JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9837DCD4F4D
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172552055361.5435.6361695722930703641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87865bee4cf04df0d28892924521bdb6b9321cdb60caa9935d8515769613fa65
Date: Thu, 05 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725520553
