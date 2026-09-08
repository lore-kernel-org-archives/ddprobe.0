Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A21FDF59
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788846034; cv=none; b=a5bdcPvWEaWL5fUL4I485vtFA2b4Fgehjswa4e5mFmLSTkAVCbnscTiFCoaAk9pTCTHErMPEe5gaSJWijwEVXpkhoUbsfEHnKM3XMDuvO/ApnBA781WFMURYXGS0kSW9Plzqr99WXmQ9Ei5xBdzOUSGqKXhsrR/iPh3eotBoJ1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788846034; c=relaxed/simple;
	bh=CGCd43Y8uALkVIE2H6fzNJpjKZiEJm/QC2f0L579EYM=;
	h=To:Subject:From:Message-Id:Date; b=BtqObO4OlcwRbmRG8w/0NQj7JDi+ZSCszBe91f0lnB58kjT76tou55C1mFry+HKGoTpa8nsju12odX++KmCwDjR51wvT3qyvLPIzt7H+wBuWlzTDUC9zpJZ2gPqxAWIGW+ny0iJF0MiJ77WGNlT9ge2s0JN+Q5yCfoeVdpHT0pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FK4Ic5hg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FK4Ic5hg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8F2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788846033;
	bh=CGCd43Y8uALkVIE2H6fzNJpjKZiEJm/QC2f0L579EYM=;
	h=To:Subject:From:Date:From;
	b=FK4Ic5hgW3a+fPAbc9JEu8OrAM2OvKgDKCutfowrCH/PVPhDOUWaMB3FFVBu9+e1j
	 36YxOAFcErZDdoQtnQmC0K6PvKFYpAFCItf9amsL39N7yGMdupaA2haeQVoEpgtQYw
	 DNd2FbPheB19VdnKVLj7ThUuLY2/bsOJGvZWJszT6GcjkfjjitjBqp+1+jzY415P5V
	 HLOHqZeBiI1AHdMA9JvimUy5GaBrVfFxm4f+jvDZCe64T5BcVjwFPbERqJB07X2OE+
	 r9f9i7O9TW4N9o8Wr5y57JEgjJKfEUArq2777VzDR0qneJn7j56O1uEUcBNgpDWrHr
	 Ufcvq7Xp7/wyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAB1C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884603370.3119.16610992228932845255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93fb96f8d9e325ee1ee57b488ada0eaaad87bdf0833e81ba3e0bfc632240e59
Date: Tue, 08 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788846033
