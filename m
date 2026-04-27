Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404D024676D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777263454; cv=none; b=Ljg/7E9RRltratgB1DllJaN6s2hFA9dE2jlixWccjP6azNcf4Ux+d5tHHBbbjhtq7k5/me7xj/IvWDf8yLEBLxGPi8ylJjNefpGk8m3RA1L3FFYhMpggjuzy1cglMbyYaQcvnX3c124LS5bVUa4sD6KEUO2ATBphA7SOxFWrNbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777263454; c=relaxed/simple;
	bh=lx1jd2hsIjIj7haBjSTemGi5v4hwnMsGyf6pwpLDTSA=;
	h=To:Subject:From:Message-Id:Date; b=P7LpEXsvva6OGMbSMs8C4amTNCoosg2neSXsisAtfhGREOOkKIV0k8qsZeq5CoFNiZOdV/PXtAr5ofG6jhXNH8usatlP806JbHqChXMyYg4mPVGHr1MB/MBix8cV/Mt+TCy0bg5LceY29kEfIpdxWlwKSCze0MHWBYgie2NRbg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfdreSDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfdreSDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72F9C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777263453;
	bh=lx1jd2hsIjIj7haBjSTemGi5v4hwnMsGyf6pwpLDTSA=;
	h=To:Subject:From:Date:From;
	b=pfdreSDjIduzhC1sHcqR88QzzUsMOslLkhdXy6LHLAtnzQaOKSpyPTOY6CUu3Iyfo
	 vkvHa/CMOLc7DRznyNefOIlqQM2eO4NJp4hMWCmE2n25ToA1mB3E5babcLssVO7FxH
	 OfYIkD2ayzxJIUjS6qnPRNI3RQue09WvLrop+zDUie8flvibRWObM6IC3iFpzDeJsT
	 nW4cJicsS44Mm+FGT063Y5YJGYcfc7qSRBMdQzPQlSZ5W+CBPUcrq0UCYwvQcr+1jc
	 4D7WQFB5jwOlHXqKkfwqdonGRjwNhRC2u7xlnsjKSAjq5JZ13wP+OquZDfym9lypEO
	 hHAuZBFSCoVBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BAAFF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726345369.11262.17045215379256009405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43cd363298c3fa840ba7edcc8c9c3a0d5dcecce920e725bd29e62eca923f77df
Date: Mon, 27 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777263453
