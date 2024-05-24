Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A88E22334
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 22:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716588203; cv=none; b=JakVgU/1CcBpP0Y+zeDMgLNfR/5sysQoBITEOfoCJdDbyy+XzmbcXEY+PAPrDp9QKnLCy7Xw+x+2FijX8xZxzEjtjawSKDV2JDIH1Ne+zXuPTb71Ngn43FjzvbPv7eipFOMhIi4p4NO1ituBlm2AuTEwieyrVZ/5o7LVK+8O1vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716588203; c=relaxed/simple;
	bh=JjBRWLnk3Dtl6rRidJWkxI68UOolRfIlfNmfHyW+y6I=;
	h=To:Subject:From:Message-Id:Date; b=doNJSp3ca1+aw5I7GtohWhCNrHObzNVlxnIe14bP5V6O/5poAVLHaGRBtDL4C4IYaRAfCLe3ie+hCjA+ZgNaun8ZIMclJL34dGhz2P1KuEFMFTwGWWb/1naL4K669TYAlvNYYRLMN26jI55VVVP8ZEwK2hUmIMtmqhRRLRxQ3iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoXwzNhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoXwzNhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD539C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 22:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716588202;
	bh=JjBRWLnk3Dtl6rRidJWkxI68UOolRfIlfNmfHyW+y6I=;
	h=To:Subject:From:Date:From;
	b=qoXwzNhZ5//TM9y8tp1JaDixUgiWWXWd1ONae3raV0YgsYbSbEokXHc9JT2b5l0kc
	 5qFudz9U8MzvupViV+p820i0dIHrPVnlAdaBdMtVRO9xYUluK8SOTI3ik58caT9SFJ
	 Oc8rBLPGB4WUFTgB+EHxVvdr5OXsi00pjOq8NhubjmITyMNb+eTQ3SkNbpuxVzTI8M
	 4wG2fu931gpRsiR6jVQq5KwJLFjTeSNIJWdhdqzYwzD7M3FTrtNJpI4hnYoZRyeuRC
	 xF75a4yL/K7/D9AVoZjf2iZdo1UBMfpANkrPoW+9LpI/lMJ+piNfMcf5gXLzYUv0be
	 0DaUx2mi1qWNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C380DC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 22:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171658820277.21876.483580000672607301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef8f9ce23ec3fb03eda1a55fa05e5e4ea1c3e48ac8f1cdda46258b8e5f4e638
Date: Fri, 24 May 2024 22:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716588202
