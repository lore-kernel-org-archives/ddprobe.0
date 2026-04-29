Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113F42F745C
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777501654; cv=none; b=fBlyr9qhPlPzOT4XCqcEb3Ag9txTPAtuYQMT4Ps/raUi3O1+3aIEF3wD06jtxVuc3UM45sBQ97vpbpRtqSsHEC5rM0CpZa2SpfGL9PNS65QX38oiEG/I2L5Us7gahkMqvzcrIJP/3+rkQvEnKAb/0T0g/49uIBsX/yatnI9mnKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777501654; c=relaxed/simple;
	bh=rpi41ZE2mNL2R77LWjI1EZOo/TmVVF1d3gU2J5hnhtc=;
	h=To:Subject:From:Message-Id:Date; b=rEPool9Aihx23VWtFP0zk+5VtgJVLRQevF+EPv8dim0Vj1HS08ILa4DqWlHgspF53OcWjPwieHWW9i1g74A8dADO9JpN/5fY0Cm45etSxFAymQ8zj9z2MXOi1kwa1pM2/3yByr5wZ2ETDlTXZOsn7RFMltOWuQe07lEmsb1B3Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEd9Z27o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEd9Z27o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B712AC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777501653;
	bh=rpi41ZE2mNL2R77LWjI1EZOo/TmVVF1d3gU2J5hnhtc=;
	h=To:Subject:From:Date:From;
	b=XEd9Z27oMU89ArWkekS7fRq1kjpaJ+WMUHAyQNtJPDVHkz/oCMby8oe11IUBsD6cT
	 Rf3y2ANtQVjEnM+oPPI0mrVAbA3spxKCybfh9vOwLOVUiGvlclfNbjzhy0n/pT/+55
	 7ozUkxQThkzLnjZr+s67rOATJxgoP4RyghtEdlEYkkHZLHTHEEnhV1I/OwLgZQbF4L
	 D5Gw6OU/9SLY4/9eErnxSVe2bJ+7qAv72KhKC1BgTtaLc6otNRNkflhSybMGfJWvyM
	 74HbIY05i49tP3czRLhfLSXVW7v+wNvbhfGCEx0FhIWI8qN7fLm43I8bMyHbedmsyT
	 OA2qAAJ+kLMdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A985AFF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750165368.6121.6113992849900337996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f71508cd3983b557cea6e9ef8f6c9f36d14669ed9f33a9b5de518d6af51c7e
Date: Wed, 29 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777501653
