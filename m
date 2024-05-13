Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5E0147C91
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 09:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715593943; cv=none; b=JzNO/DqtYFIASila42ltexMXfvJdhlCk28gIkWaCRCVgbKCM7YXB1KObA69418uARNevEJNhvICE9eO4iykLNFtBoADnN6VZNx58xh86cch2sOYiutVTodd9gUATcChgk6NgfX111Y/EtEFfuUxgXaYTMwy1Cc3qu3hB9N1Q2jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715593943; c=relaxed/simple;
	bh=9V3NkCeOs7LviVex1E5q+4lUm9dE5xD+jgkxqsC9m+o=;
	h=To:Subject:From:Message-Id:Date; b=eaNGhNJrrNxf7XGUnSHNInQaE5ssrR8UH1GGwlx2BOW2Rpx8NiNMEnDp4/OUp42luI1bxN3n5KF22vn9LBh0D/4tpaJuYr+eLTTvXHUcQXxJ3ZRO2kmxAwBkLnWV4YPmvH8xBoqvV+i+ak1k5iCDZbTSMeqlRrdpaMQcuDitdMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBOhHAD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBOhHAD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4681C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715593942;
	bh=9V3NkCeOs7LviVex1E5q+4lUm9dE5xD+jgkxqsC9m+o=;
	h=To:Subject:From:Date:From;
	b=dBOhHAD/PdHQq4OCoG0jnJAT2+1PFg4K03JEgkVrqTXDNlT1x57Nr+uYJi74UAGtS
	 mLWDwljbtW7IaZbgQlzk2b/exqmphFJ/bQ30Ls+vXw568E2ivDhuG8pggWuNRUV7qy
	 vr8qCOfTjvrkX/rc3FM70rRnjy38n1euqS5dTpKnNbq3sAXLMOzno6HaAyUlQKTQ+O
	 MpcSgFqPdwo84PF4b2GXOy6zpS+ed2q8eGWMN4DJeqqBSpcXm9RNI3KVFygqyr86kY
	 WLD4QwM7aH868IHjzKTCIgPQ0/OE79KDO3PgBkEdvsS+cfDwVYmOfrlRCVirVUuaIp
	 eBnWAYLuqgauQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE718C25B75
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171559394277.14004.7730274890131356316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51beea8bade8d37c6f6a402921ce840a273cd97a0e76cb5bf26c9504af117ff5
Date: Mon, 13 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715593942
