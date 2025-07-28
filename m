Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D6413D51E
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753669795; cv=none; b=crEHGhoNPPifS9JkRxCJnf0cEkU8be4JZTzJbVXAjMvy3MVSQA8dSqccJw0TuFMHz5QrbqONypuo0nB4qSbaRRVk2EuMNAg8dtwjLFBYuQyIzOhXI1x4w8EzDYgIe4i8b8fTsOQWPZf0VJDWzG2ErEBatXFaWQqFR2jb4elTsdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753669795; c=relaxed/simple;
	bh=QZdbDwFaOc/o5qeVvUjzD+4DwbBSbo2zD2TfvHxmdv0=;
	h=To:Subject:From:Message-Id:Date; b=u5KyAf6lV9j6KpHySR653xd11S+ZI3AKrSviM2dC8NksHplQS1H+fiAHPwGc8V2Z6zwLpsDJjbpsiDteQ+jWTjnKf3jjOc9V+BMxXKaX+RMBbOkq21AQofODNEPSnEVl1qP3e7nRivtYsFS2RjdngbCq30qIqb+/4yHvnfHoZnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T06Jggm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T06Jggm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A253DC4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753669793;
	bh=QZdbDwFaOc/o5qeVvUjzD+4DwbBSbo2zD2TfvHxmdv0=;
	h=To:Subject:From:Date:From;
	b=T06Jggm+lM8B5Cw0Qx/np2wAIssUKrT+QaHPSbQ/vsZOhGbQ3b7JCgSWbzK+MV8kl
	 dMyu05VMkTAkoKu484oOFXfvtd+1Bv6b1EpE72vMJeD27g6VokVxach+WYI10BHwK3
	 6Qi6ImHcvEueDdmFMBEe1f+y81+aSf5ANFAhcYgOBDwM28hDQdvq3igO7fzUHiR0x5
	 qdpxCYVclLAZooHn1jgFEZ8dNTi/CpyUIa1K9i0RmfzmJCgk41cbTG3ZOy38lNQS0P
	 ezkEw0EOiM9Gqrm4z9e6AOxlxb7Fcm1UMzXHfQKb4vHs4TaWscAIoqAIS7A4uLGAzb
	 o2iwdMj5f5XaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37EC87FCC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366979357.27499.10521699613308459286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ab36e70df26df29e230ab60e3c50c16046a5729766883702b3af040ceeb7ce
Date: Mon, 28 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753669793
