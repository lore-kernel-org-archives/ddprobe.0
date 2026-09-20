Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3735831D39A
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789927234; cv=none; b=oXB8FHzIXsrDvd/pK9mAByKfC/PVSj18w1fGVY00QF53Gjs2aDGQvaL4Ak0Y7IjnWLjUnXDvSF/jBEfid32TiJZtRzbc07ETe5geQdNcoIFYmgPT4oQdsg7SpjGrbwOeaAGkHM/YzGz2PGbxKOnKlQsC+J3VddSiE2GLLWwRiP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789927234; c=relaxed/simple;
	bh=If22ZRVSV0FqMDELxsYlOHRcX8enljArE482S+0xsLI=;
	h=To:Subject:From:Message-Id:Date; b=FRYyLRLLxAhVWRMhUDyywBN4fD2r0LvTY0OIWI56jH2TObW4nvZWJSXybRwkKRG+meWw4jElVDRZ2/P8wt4R7qH5ip9YK/A1uQBKyHQ1Yl5Okegc3mgo1NcjTPdx7anELlZ59TZkRiZAB3krWViPT/VXFAuQPkb9QV7NlGx8zms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kr4vlKVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kr4vlKVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9CEC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789927233;
	bh=If22ZRVSV0FqMDELxsYlOHRcX8enljArE482S+0xsLI=;
	h=To:Subject:From:Date:From;
	b=Kr4vlKVm/u76hnHGEWYm2KDkQd8x+i3bKmdlipU2k7TuGSWW7obH4QmeoazENpTf3
	 9IjHiK8zkjL59hVC5MDmoIpl0mMhiMaJb3qVMIc3MFDbLsYkG585LivyDeIwFCLtXp
	 tJFjqbsPydnnJZuIyjWJmWAOxnY2kDjzQuBORFNrcemhMAgIchNn590kGYn7K7r3uJ
	 Cc+DvBkeqpw5xbTnGg8yzBvRVoJ/zGF2UmgiZtQ+bY+GJ3qM2fzaFlTMA1GCFHKhpv
	 WfDFooZ6dP2RrXJC4g76DcFt2LygKxwdclRKF2Ukl5GVZuQyYMiTMfjpYcR9ckvdDW
	 hMYWpEoPNgYKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B772AC982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992723369.13438.8285924136805148574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e889b284eb11e1b3208e0d0e25276cc30a9148aa9f5ba6fadcafd8d1e68add0c
Date: Sun, 20 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789927233
