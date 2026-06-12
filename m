Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3501E313283
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781286994; cv=none; b=IcFWimBlkqSxMc9nwr88b7cE4X0O0pusMj5UQdavMF4YlBSLrqt0U8T8/s5KZ0EUGP9X3PGjE2eED1pdS/JivcZ5vbkEl9WoOzqGET5yk8Od1ctedyQNanAD1cSGx8xxhyauUAwCoemK5ZNSaiUc8SIvFBJksWetsKRzYhYFgVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781286994; c=relaxed/simple;
	bh=99SedI5WCMc7GcUWCfM+iTqroCHrPkU7TYX51PRdmj0=;
	h=To:Subject:From:Message-Id:Date; b=RwXoZsxVq5K1D8YnZLAGSsUXxXlctrVRrXR1qZwuzWnXjAlEcqL5HZZIQOdWTJXYcgsE9i5NoCptXV2IcKqPMFQ+J14L+7QdoVANRBb1W1goJ5vn4ecuoqC82IP+3GpRxRBaOaZXKyVck+wXyA+L+URKegC693mFkfoGXUTlIwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFGwfOcO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFGwfOcO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C754BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781286993;
	bh=99SedI5WCMc7GcUWCfM+iTqroCHrPkU7TYX51PRdmj0=;
	h=To:Subject:From:Date:From;
	b=PFGwfOcOpt3gheysuaKCwG70LKRoFakVbw57iS1Geq/dpj3VG36vVAH5een7nK/rb
	 ArfvHCf8xSTyt0+fILI0d9BtETNCzVSxgJuNYr5A7JMe5U5cm9/gBve3fCr7WWAJ8k
	 +sUT6oiM8Ck0L5oI4wegbFwCfMCKX3qs8I6gSdVIuh2MmrV+vAy4yFKgwRyCKrGQ6F
	 XbGjPuLknX7ZkwjcdBGyuF0BVrfGqetH0Wsv5oNCVeYQJLvd+b/LwqqbsZEIqE/F1V
	 h1c1dwVjMbzz23ZaJJVJUzUDj5j32DmkqwMuqRA+c6FmUypGNI107n/awDgUC4gE4Q
	 QvQ3mF+pGVYHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6E8CD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128699368.16830.11685995192381771838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b374c5fafaef2fda1d9c5b2348d518242860c3fe3054ad7fec7c40c7b3140dd3
Date: Fri, 12 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781286993
