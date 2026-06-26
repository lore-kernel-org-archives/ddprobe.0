Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1549A2E738E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782438454; cv=none; b=H3A2+yQLn8L/SzoCGjMBi5bvBPzwA+zFZPdzIiL7iRBiFvdj3gFnDd/F7mcBchdGPYUISZsEo/fdtYoqjJmwuDN1Ua56YYizrpYhOYxDsc6O7Lg55EPqpScGL4BdENACDZX00Rz0redGSBllUi5Qk0nX3I3yPoq3MiwCWs7+HO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782438454; c=relaxed/simple;
	bh=foU3bDnOrQ75IGch5pGQ6hNYVax7WK9/0wg5fYebQuM=;
	h=To:Subject:From:Message-Id:Date; b=ObDAyNMC8/hNcRdRJjlT47AP/WQkrbLgYHL0zG897nZ171MV6YCshRuJjYcq0POWK9r87vT4o5qAI+Yn/pwyNCkfm3RfevErH/lHWVKzUJ9MO38d+6KgLwmPGHUqS/EwDHie3mQYILnaVmiu9xYHd8vnk+qpjixs4aSwdMowefU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWBaG+lz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWBaG+lz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C388CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782438453;
	bh=foU3bDnOrQ75IGch5pGQ6hNYVax7WK9/0wg5fYebQuM=;
	h=To:Subject:From:Date:From;
	b=GWBaG+lzzrJnjCb6mMEuRLmJtTLwKmiWsnCZzzz5nyZB1TcebnxnnmHeE6DeTnkqG
	 QQceUbWVB947CvwhGPpUEyZR2+Bvjhx8a87n+JylDuG89rB76y191Ic2Ue5NTdjlkp
	 Kl+0HxRygRfA+PBCBjF3Of1TfS2AI+1BEJpHdlRIKrtgrSoIBXCihExcO9OH+OpkW8
	 lGXWlPrn6Kfd/nocayHxy88bQN0cYFw0ys6UKV5Jlm/n+KJAvWBNBIm3q2IIpxN4GP
	 htOJVUXUugaN7gACg9+VyHPt2mAI8urqaFykxIPfCVLmqJJ1DAICE/lsFwAyTneqTl
	 7Ya+AX81bJR7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9B6CDE00B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243845369.16995.7328811726005803081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3855c631d1d3c264571da6670fc7b406d89441064ddcc024a16b0e19218cb425
Date: Fri, 26 Jun 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782438453
