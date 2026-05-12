Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D1029E0F8
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778583634; cv=none; b=fcF5f3aef69ImHqG0N3sm7YR0GpMeiZ8QDy87B/OAgcYJNiR+TjrxjUF9Ud1OIau1raXZ9hcg2KQEr3nm0hLSRTI+bMYciY755bNTwy9cWrQMVDOcYNCABMjsj4xUzFeuVuznwRmaVvQFJtGgtuz7v4d0SuELvjoNLuzblerrAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778583634; c=relaxed/simple;
	bh=9tGzgpPtZHs6zmhIjBl8suTIKSWJjasKKttsG1/VOaQ=;
	h=To:Subject:From:Message-Id:Date; b=jHQ6D23FWoCpEfd/+Ehe7sFOCTtGWaIqqb/8i5nYpsgVsnQao6IXkAaMAkFu+CbSY+a8ogc5DcZiJMmJtWy8IpCTKRt2zyQReVXXObYYuKJiGm3kwPji/jVk9ziVidlOOEZwiXqcmk0/4QX63Q521exDtPHBTE5Lt1nFBe/6GTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqE4CDz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqE4CDz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A16C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778583633;
	bh=9tGzgpPtZHs6zmhIjBl8suTIKSWJjasKKttsG1/VOaQ=;
	h=To:Subject:From:Date:From;
	b=RqE4CDz9h4ziVbTvauJKXk6fqrp9U+BN44d/3RIsCorVCabR/i+y4qKmNcVzHy3wS
	 ItB3OFuFgUHWOrJsDY8EvUVHY0stSfvAzYwW36gsAJndpdsLIWHyCtyUzqUKjiQsOM
	 uDtji1sjEO9KttgIWYGourZ6JMtMlG6SDSEZp5Lq1kyMr5PA/x6JtLy0PtsFRZlUF0
	 BnWpkpcJ52/FWfgXKaQiG0z2iJOro4oS88ZhGo4oyOt8acoqQIVmEqmTeT4qNxBaYR
	 O8a0KN7NmD/wI5/is4gFCAm9PY9bI8XIwgjAqWsyEsTF01dQtaxtep/1ZZTqqxRYCd
	 l/RkhbVjPuAYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC41CCD4855
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858363369.16852.16985016370122244850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd52ca594c56d2010889b7be99c5452cb8580ddd3e13527d0a017e48a1e4a30
Date: Tue, 12 May 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778583633
