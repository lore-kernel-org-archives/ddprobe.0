Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54158308F2E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769156034; cv=none; b=bHyTI6VHIgJ8q52TUG5cX709aoaU0jdacK1Qx6tITp99yT8TC/AGtM7DCdddvG5rYIND1fS762EuFykY1WuD2rdm23sjXZdAKr7neNR4cpZmdblpGNxEPZLvDJXHNdZT1zstZcbd0Ljqm8dNazK3QJ+rU3nhnRi9ggzWnL8XaSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769156034; c=relaxed/simple;
	bh=zgkSJylGz67iInFQY128y8OgE2v5vUhVWmLcR/SZJ1E=;
	h=To:Subject:From:Message-Id:Date; b=oeyM2IKstmQCNyCrKGNuu9eHN/io3rAxKT777k1itpo+kojsDw/+UjUS+H/O3qxtF/Hnd6fv6hO0vFrnXmRzi545Tp/SHf/b3sBja4fEVeth0VFNxINVMQV2AlUq67spqodjpPkCrLk9oMBT4wQn0FckKRFWI3I4YuEqeN+ec6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWaD85M2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWaD85M2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A877AC116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769156033;
	bh=zgkSJylGz67iInFQY128y8OgE2v5vUhVWmLcR/SZJ1E=;
	h=To:Subject:From:Date:From;
	b=aWaD85M2RVIA3/yOysovCCrgwRxpTUDoQok5vUPp95AKT2pn3Jsi/gi7fODDXsVTL
	 ltgWuByft6JzxTYDGSfkwyPthOywW6Bhtp2ISS7VUxVrAtyCIJmkG2G1oLU15Jt6jf
	 WsOsn3sQMgaxEHBp1MlKoqQLLXHlhQmr8D/UbPTvxhRaTW7s/06PUYETASgGwuM+in
	 RaW8ktowOBQ7BNwnIXQpk+TGPZbIUyYJE1dOIZ3d/SQ9sRZNMykWm+aBylPz/rtmQP
	 cZuKOOBUz01o5A0Uwi7IwZgo+LLSIEV+lHGMLt3RTfmGP8MTMgxWeOe1Q7d9eXj+fG
	 qJd6qTVaeIlag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BECD72349
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915603358.29904.16919680078322163134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd94fb24f24997d4e190f6b8816695c169f7d92365932bd35f8ce553db844db0
Date: Fri, 23 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769156033
