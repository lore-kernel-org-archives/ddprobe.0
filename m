Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF9B34CFDA
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787503834; cv=none; b=msCKJze8j1yaT9JNrMLbzwAztBA1uXkBmY+10QXW2TmEpq2fDiDoDc1F2QQokl1iMKskC7kOOJdzwG3VCHKWiB7PTToAARf//f3SmfFjReKSoSstBXO0RfdnwraXe/F1RhyVgXSv9UxB4dAZbJykDE6qX1MMur3TVJQAst3zfWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787503834; c=relaxed/simple;
	bh=dB49eLSW3+A0iQHRvSJQj1FnoSbLJ7vKi/j9LsUmXqk=;
	h=To:Subject:From:Message-Id:Date; b=sK9bTYtf05uSQFrx2QUPmwRcizXqYGsR2bcNE41ntuWE5YhjaDa3B+AmTdAl2CSYK27qMrB8iN8Ig4ev2COqlnbfYX8G+b8goSOWOmxLCGXIe7uJwKeOgC8DXE19F1x1fxkUgC2r283BRBT8DXPq4WwyZwi5XPXEEot00Y58dyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9JwxGbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9JwxGbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FE3C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787503833;
	bh=dB49eLSW3+A0iQHRvSJQj1FnoSbLJ7vKi/j9LsUmXqk=;
	h=To:Subject:From:Date:From;
	b=B9JwxGbRDwB9ukRVQiXtw4+8JM5oSCeakewCVn1ESkyewpsUw70Y3lP2lzJsRoX4y
	 j1K98hueCFmoYvta3IaHL92Qbrts3k+JGfdP7DgVVgBAyNO9vYTFQlJFKSniWvJTU7
	 2LaQMf+zaCjMxKZrCsqWNaJ03g5Zpb4oLscvMGMUzq4A8XI3kxDjgs3TeCCVH4J3HP
	 U3N4CqNKC+u4YtlJLcbx3YTM3AN2IS+V8V3OAYUbTlUJxJuAZrs7CNHxota7zPgcL5
	 jQPhlgGyOm81yOVuz/2de7OLimwNawGZsbFVlYj9z8lopg2SRXTfdvvgiWVxvzGRqr
	 g8FI0KSOU0XSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB1AC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750383368.11945.805970623431150214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5104f08efce83a2db52911d1440144e88a86fe6e38efb3d0ac0d774ffe21e9c9
Date: Sun, 23 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787503833
