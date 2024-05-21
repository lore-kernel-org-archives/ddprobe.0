Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3E01E48B
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716296003; cv=none; b=YlntDK/3NLfm0RMKwn/wTNUWEPiNOR10QBsFrW9wAWy5NB6e3vZWdFl4AcfswDjxOkJbCkOP5hmgXmuH9tJsI697Ta19iVySIA6FkEoMDrKSgp8CLi/H3YXEbhdKU7/PmRdLxzgLzlETbBm1cZqm2FTdVybDLtV9N5pwsTj48IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716296003; c=relaxed/simple;
	bh=s2onWOw5kmzdxPqSHonROl0FgsPRn/INT/VKPpoj0QI=;
	h=To:Subject:From:Message-Id:Date; b=sXSJ2RXaUsplJQVVyBv0MqnE8F7lEid4CfhXzDFmE6Oai/BrhIFHcdqsrFxyJGniy+6diM6wHkwe6RGCWM1XUVKV9N2ehK7dK2IlCF+c6gVolJmCypuF6qdlA+u4372lgScP9vfkOZqxT43Z0C+lwj17h9PK2zs4bA097XzGljE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAuML1mH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAuML1mH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE35AC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716296002;
	bh=s2onWOw5kmzdxPqSHonROl0FgsPRn/INT/VKPpoj0QI=;
	h=To:Subject:From:Date:From;
	b=NAuML1mHue1om7hSsoPAOp+RlS2nVNyOE2LOsm9JKKscmtYn3IapdIv6FxsEyusYn
	 BO4x7CCi7DhlvsduY4ZqzTBrdC/zWUTBZpsSg9pPx3Gwhis4vSPIG1MEDHtpypFYdD
	 qU4Y2KII4d4bwcCBg6HnfgQkxo7kXruyfca5cjmRnSESUNd1yVS2B7mEGW883dykkF
	 aMAmXU3QfZvuksw7clRjR/Lwi7US8lxloYGVBTQuDVtg0p9KEqs4OjvWgzWHLPU2ZK
	 kySAbn2ehJepsL4i8j97gkAtiHJ02U+63smHGCUhA09tbvzokhywJc4MgRCbHxh3On
	 xj7zuxPQXy/Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6EDCC25B7A
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171629600279.28925.1955234382385145100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee709f09fc3f956a325262a87f80dd159d43fff82ff984d94bb163e775b955b
Date: Tue, 21 May 2024 12:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716296002
