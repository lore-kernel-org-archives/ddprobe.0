Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A37361666
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782918514; cv=none; b=HPsJZDA8NV2Ctrd7LtLkS40cReK7fEBdmztdj7VC1Navwy+Z3pvDM5c82tT/RUr1FO/P7QtLXrgur1jCm9lbPMIh7VMV42h3Mgq7RqU1MvSdl5AMPUNj7M/75ZuI/dWY1HVGtW6X9FZ23mR+pq05mVIgZpqj/vdvkduS/Txnqp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782918514; c=relaxed/simple;
	bh=s0vKMabQz7HwqpTQa4pZIfb3t57/rjhKQpcMFdIy3Ic=;
	h=To:Subject:From:Message-Id:Date; b=bR5ooJ9bCbQgAumm1SeyCVpmcyZLmZd6PRMS0k8POstHDSnPVFyFlChYooyxwMRFEqYBbDhtno9KxSltLAZ10KNm+/s9W5NnMyKB0oJGwlZ4DHA9zGWhApElRlv7KyqPUcGhbCTuXJc3hvRWdEdMl2CjH/Lvlikl9o1udIrB7AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5ca3iWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5ca3iWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8CFC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782918513;
	bh=s0vKMabQz7HwqpTQa4pZIfb3t57/rjhKQpcMFdIy3Ic=;
	h=To:Subject:From:Date:From;
	b=Y5ca3iWzqjIYcW/36kQn74HkfJxFa6l3zM75erUa/lgG5fjdx+cNff50+WJTzoAPw
	 KBOTDFnkJX1sJ2EleMZkfzWMeKOutTzRpgsjWfSFbPD0YWTv54aT+M7IkTpnvbhdxR
	 I4A5MH0tQMgPfQIKD94h6Gq/JltR0XIjw44b3rU5LNQjiMi0JsLZ0y2Ruxn3d4Mwee
	 XFDY8eGu3PqVWohjPkLCT/2SJaw0nCNbbgIZhou32dYSYe27w8JTFZejGsTF4XWost
	 lowv0UJzgAHy+WZRtQ4/2oGEU/yrYaC/bSvXxK2QMrslu6jPrj9afZgZkYimoXMvec
	 migABX5D58+gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE5CC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291851371.26211.8074492514194624208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849d7f61e68b2a41352ea0b49f948eadb30109011ae6ce037d440764b7662443
Date: Wed, 01 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782918513
