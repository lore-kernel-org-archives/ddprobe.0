Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2550D13B7A3
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765596774; cv=none; b=BwDo4hqrOOSqrml9QXEWAicmhPnp0db06efs9SWC0MVXQrV6Q602qCwSb4iuJAE4sq0CM+E8jSff+Mk8/zA0NvSvBLyKcmlbuYehV6BN8T8OqPYMBjXkQZPizqE9OndV7X9NjdeTWtohD1wfrgb1cm0XXB4rkWfWwv89Dpf2NFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765596774; c=relaxed/simple;
	bh=g3jqa1SumGhgpi5/mkwrGma8VqOfemtf8VBBumuwfiA=;
	h=To:Subject:From:Message-Id:Date; b=RpDBGpEfq4rZlrPzc8a2c2zsId9s2/724qbVC3xeMUWTbt2NyMXNyBDu2JbW6QLXTSi2DqzOW7kxabIO+rBWiLLLvui9xUIiNyzmGDd3gM7UWpo8/TqDfI6El/HPdVmcgXpXrPODWbK1PXZkZCs5ggqohWbT39WirH+APKmFWLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCnNPdy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCnNPdy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7282C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765596773;
	bh=g3jqa1SumGhgpi5/mkwrGma8VqOfemtf8VBBumuwfiA=;
	h=To:Subject:From:Date:From;
	b=iCnNPdy6ARFOfLUzpZtyp2zciyivDH5ouKygjdjwD//7zMH35rEnK3+wBjQK41Ry+
	 McaeC5BwH1cJT71Zk3fdwkgfhp2geht9PfPm4mjIDm1ho/DsQ8IDPwG86IjcGonmIt
	 j0hQEuKQ1Oml6A7gLZRc8sTH73B3JV+XHwLvEYykRXAuf7DfKUZcp9VkbYkbdxFZXV
	 6NQeCnl6M8EwycEAG4TAA/+01VSO2JBIsyvvjJZV8/Xb5zZ8fJv4K+s1O/eMkVj6AZ
	 qffa6q1ztp8WDy88H9NWuSSjj0sNDcFNoTu9qI98q+3sG2eXRxWTJZMAuC9p6NjngE
	 zRiqOPid7cSog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1ED59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559677358.1820.11595901167748121066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41fdeab32fe4d23b6613cb44a97234d55d663d557d2b0f36d88cccbb55922723
Date: Sat, 13 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765596773
