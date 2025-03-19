Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4AF194A44
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742407794; cv=none; b=ZtSVt7uV+hFaeEpjJpl1J9H8eI6piapqxqyRY8CKcU1layAnEUiAa6ym4eN7iBBzfpctUymFJoFhcPhEtXj8iGK2abve7Uex6iD5wjh1uBW4kVBbNxgCTCFcscT5bGzzaCE1lTeQ+i81W83jMtJu86anwARp3Mp6DW2d9XhA8HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742407794; c=relaxed/simple;
	bh=shanpdIwYEAE+br0YWhNkKPsXKokmBHeZuYRibwPZgU=;
	h=To:Subject:From:Message-Id:Date; b=dHwuMNwn5rD7YSmyGXXdgVlhjuPMLE3CGnraWXZbfu8UAqiwrw9ihVuwK4eGMU8R1ZeuX6jhdhmno2c9hBopH5/tRjv2HeGmCwRm08gBgzCXOCxyibd+T3h62TDxvHqhH2QLwS9xAqrVS9HbwqfmlWMMAOHe6G4eFmpc0deccdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BppqHJmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BppqHJmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86ABC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742407793;
	bh=shanpdIwYEAE+br0YWhNkKPsXKokmBHeZuYRibwPZgU=;
	h=To:Subject:From:Date:From;
	b=BppqHJmDBMGrIr9Yndlo1XI52AOfSw6H77EeLdnkiqNTtCXNcnXxS+vJY0iKT35zu
	 U2Pjl39SDIADayVhN6DLW5y2LyKbmIWBEUXDOUWf5Dq105YQJn8HtpwlPJljQTSkE2
	 qPQK8g0hG9CS/hO0Zgvu/MJdbC3SgSmTI5NMbCTLCJGdN21DLHLabTKzHss+mieRk7
	 9UyXonHXsrQ43cu12Sf8UE/qfN2Lpnasy83zYnmldpiSwR/OvXWP09Kr4K+Jr0DEer
	 btmK4NbJNQSm/6XkeBBfaEzrNzKoqi5W+lindrPVkGLGvRn9rxAu+Qf19jpDk0Dg2w
	 wT5YM7gu414kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF59C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240779364.26500.11708717629924021443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ba060d51207f8a7943bcc8ec16aab703f1016d2d8d37bfd173b2f421663680
Date: Wed, 19 Mar 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742407793
