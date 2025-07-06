Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3772C224FA
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751761794; cv=none; b=JGaM8TjUESXTcXykfkG5/O8osz3ZoHWql1CDUm3ZZprWJSRLUgTytIxxwrUqibcLkS+H4gY62t8Ckwn+k5TfJ9RD4qofAiwoglTGmNIHy4MdWtgmo/GoArTn4G6MMpfroL9mTQpQu4mINamsAGDXP2RzeaIozWbu3utFROXyFAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751761794; c=relaxed/simple;
	bh=7mh2vv6avS2Db/KAkEPKa1JXEh5Oh5bLp0qHQ36TO/w=;
	h=To:Subject:From:Message-Id:Date; b=O/GpOgrKyeN51fOD0H0VF/bq9ga0T5bwI5KjRoZAON9NpKSSrytAHG1lAA3h2nrj8/j3QLtagMdzlu6hkyNt7NnhQXZZlGk6rWM7crkIKr1AiErQqzMFnfi0Gm4LSdkfwBzc1HWYgthSVGkqTW1/4odqOUA9aZLaznwxLhRkvTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPJEQT5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPJEQT5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0625C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751761793;
	bh=7mh2vv6avS2Db/KAkEPKa1JXEh5Oh5bLp0qHQ36TO/w=;
	h=To:Subject:From:Date:From;
	b=WPJEQT5UYY9MJZLy5HvbC30oYdJ4TpN1fEs3VpRVs1R0DrhnfZHvbl0Ojo2NrDyPU
	 b64UGspwdaLvEXMdjdWJl2njhy2812T/MKpH8hKH60l6lyC9D8DhK/UwW8ALRyRvGP
	 ZwMgBCu8WKR0Tr+L+eEbg7qAJ2XBG5nlmEThpGLXrWgByoRVfmgeixpzndsboyw6/p
	 QDV59kV5CRByhYjCG+YxQOv0B/Ntq/BkRFBEio1Bn1gbZaAf6h5JLQJr+meEPEtycg
	 oabC/UmNwDOUY8ArJkZKUjz8/48TLte5rieIhAwp2TuZ0PVFK0qANzxYPKqC7W9eNn
	 KnqWzyw6yn3WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1CFC83030
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176179357.25439.6840321321520716996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1fbe62aaae8ae0fd539a5f85a2ed91494de6f670defc6ac9a4cdea099f2f99
Date: Sun, 06 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751761793
