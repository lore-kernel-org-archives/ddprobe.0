Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211F913C80C
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722480954; cv=none; b=myrUoz2Bp+6TZYr8iMvM+6bu3Ey5UmkiqmLaP0bz5LgNlXCV6CVV62qQQ+qv4orCEDSzvgmSfyXXyvzN9Ydcdwx6/38PAmNK9zboHnrFoeT5D0/WTvg8jGqUMEzwMDyIZGKuq78c2nPtUeFMD1xhA0CauyvuyDrLZbHBz+bq4hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722480954; c=relaxed/simple;
	bh=T7ftWp7lrdoG23ZlJ8NfVw2FzxTlIyiTLbSveqdrYVM=;
	h=To:Subject:From:Message-Id:Date; b=MIk1di8Gal2LvgF5BaA0mDfmEOyibjsE7qqEx4vDGiKNjR9Z5ulQhFngKh0jy7s+7PGeF4qGbKsH7Z1GS9ZXl1/TSL4UqM/eda1pRqaao1bSJ58BSNkffETXcuBr8e4r4qAUq1e6c9CsuDTRfpxXyDEf12DoQfypPlXYE1F1iUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBTLVDLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBTLVDLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D04C116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722480953;
	bh=T7ftWp7lrdoG23ZlJ8NfVw2FzxTlIyiTLbSveqdrYVM=;
	h=To:Subject:From:Date:From;
	b=JBTLVDLQM3NNxwa7t8JaWLBVrm682Mx90drg8vXmyogmThuMCyaCNZ7bqneAFETGL
	 9Ij6z64NZbKLAemZdps4GKMweAQNgIjtP+kfpi78AfOMbnIKRplMTsmw4aB+Eg4Fvc
	 gpHKnVnoxZpenU+2dGK93YLblZnin7mK95b9UrphSpRy42X4ckD+reluD0NOSkVu9F
	 pbXAkmF+wxUpuGB0KxqBE1c/67I08QUuenXnTBqy6Wv8/Dg9MNxinVsGwlxEyc23PC
	 g7jRb0pioLQcqcvPIOk5aZOq0/x3AD6pHour/osZGn6PxoOFy1V2tLqhvZ2D71yez3
	 WsdVlAFw11TjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942B9C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172248095359.4264.7329081677441298888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570abbdc453a4f775728835f91600777b2935e02de26946dee31d427cdbac48c
Date: Thu, 01 Aug 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722480953
