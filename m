Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF4423ABA9
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767375833; cv=none; b=E83v25y/bCQCPIA31guvii/++/fHQYyS9qksI48HnNoClPXFUDFBfrf0MPA3Fbjr+9YiIV2Wi1ysKCMGpGKH2IvPj9N/XT6wE2mN2j7mFHXd63Myapm4xPzsdUgBbi+IYi8BYRqgqDY1Vk8bIS15qDpn8hvXlYT8zLEks6fnupo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767375833; c=relaxed/simple;
	bh=uwst0ovLv6OM+WwHOAmcv/JV1S4W9QaJx1Z40MgnClI=;
	h=To:Subject:From:Message-Id:Date; b=eNSmx4CKXo1E7UamEWFQLiXsChKZr9GHOgok0RQ6kASmDuIiXMfyeAFG4RaE2Ewm/pAQwh6W6nM2gQ17Rb1VFadLptJrhXrpS7Za28/kv5ikh3TIOZHwFG21kaHX8v72fHzS77Yu3JiPd/MsU+/E/vKv2rl6GLsfbfSuB+7ydl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+fEhQ6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+fEhQ6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0242C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767375833;
	bh=uwst0ovLv6OM+WwHOAmcv/JV1S4W9QaJx1Z40MgnClI=;
	h=To:Subject:From:Date:From;
	b=o+fEhQ6dqK1f49bgwYsyEHuxojwLuc01UTBjRKFDZR93BpZHZzT0WAVBaybkKDKJZ
	 omtgjZrwMys6hJ8SfsCgLmfTRN/c64HODxL5BavbFey49oeeRHeCFYy05IFPwaT4bE
	 qIzyJurzD9TLt3LplL8QdhancqDMmyXEJ7nYKdWLTL+Pgwqp57hjd7CJG1GASvkKks
	 1E6ami6iA8C7eddTPvGuCzCXoN28FTOjIlbtz94teGHDh5DXT/8W4RHXmQd7yLYmuG
	 XzlV7eadCIj79svZexnxwKxdz7KNXnYAa+z4hVd5Qvoc3d5/yp5EDWUT46C4eWV/XG
	 j5PT2nNlsucrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BDFA3753
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737583357.1838.2833494966147439355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5346aecb12befb8f590d7d516e12e1898dad2d0908b4f27788c42bab12662b8
Date: Fri, 02 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767375833
