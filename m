Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD702DF155
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769615633; cv=none; b=ABduoZintJ/15ceIb7iRT0I0/spQyaJXkEwsXbsNy6jCMqYJsfm0lf/c2Dizo/9MF9wcQhaAWj/J37WBjpwJn2yPZzhPw9ueE4u1wbJowdQmcSas2q1YIponk0BuMFCOBkHM4cT7pCgQL647hKgtwIX08qfIkGkiWSHYltS6R44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769615633; c=relaxed/simple;
	bh=nL+DdSNtvUNmqocW9N9i95SN137s/4tAR7ZJ3TGAe9A=;
	h=To:Subject:From:Message-Id:Date; b=jYeoEn/Lup3oyhKvR+Iadw5s7mU2iuQuGjU2FYc2m7HxRLs+CTj+iDplcaVlNRmy59NAlnDoSwJpUYbvkLDG9rWkQJUCW6pVcDkG7cFhCZSOmYuBuM6RcE0JENJW0g4jHr2/31pDWP2Ah3/AFLA767ji+gFmL2fIYW56hJf2zDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQM0dGEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQM0dGEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0002C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769615633;
	bh=nL+DdSNtvUNmqocW9N9i95SN137s/4tAR7ZJ3TGAe9A=;
	h=To:Subject:From:Date:From;
	b=uQM0dGEKQ+431jUOg1vA5/A3+/Tn2mhOOkZpWhAgmSvZXFLEknH0eEUwEvQSVNPTo
	 EXeOeGBnyAl+wRiymB6ZKACXz1AvO3WVdkSSd0UHOs+FNvp0F/vaqJVzpBbRcDBp3W
	 OOAWJgplZfW6wn3OaW0jk4cqugLV2BlItIPxc1Qlnx1cU+UnOUoWP8H7VwCxgwTdy5
	 fyk43ePWu5Y2nhJ369pkeBX/owdcTQxR5mjtRmyWx4ok2DDznmDnWOKoe72tpWTtK5
	 E1on05m+X0PPYkNLI7GLFFla4b0+dWnUUu7g+ZDXkgjOZRCzjxNYS8xz7XvQGrxxKR
	 +dWDyAiZg52FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF9D3F081
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961563358.6083.18015849330890684452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc12249b5744a153066e2303d5d876b841271b510e50bf5d0fa1483b61ecc4b
Date: Wed, 28 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769615633
