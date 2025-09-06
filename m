Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F4823185F
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757128794; cv=none; b=ZCLBVoSYZndgFuXmfflGfrfzfKLvFBvGAH5revj/w8GqQSu4xoF58Dj+BrlH9c7U6XeBnu1/8ako8EQP5jY8nVvm4j4dOASUkCA839aEQqRpEArhmQ7nvQCWr/SnhMv40y+ICbRHURjSMVN9MkDATdLAhBbWyEHaI4PZqb5ZC6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757128794; c=relaxed/simple;
	bh=UWqJZHSSdVgzQt1A3mcUbFBYwiaWF8UoG18YEGKcgIU=;
	h=To:Subject:From:Message-Id:Date; b=sM7wKNy93h765jOgTr1FE0PLXaECzblTEYZSeGU8o0q96gOGqzodpXWBZ1O7RLop+mpERrobaRjZ9hFK3p6EpBf37UlZ7pYd4EBxjGqMMVTVOAUSM3OfhrK0bPRNlXHSQqx89pWZ+1vRAjj1lT1r9enOd3b7Rqom/AK2FZgnvF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJPjgAvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJPjgAvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C20C4CEF9
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757128793;
	bh=UWqJZHSSdVgzQt1A3mcUbFBYwiaWF8UoG18YEGKcgIU=;
	h=To:Subject:From:Date:From;
	b=LJPjgAvOe9gu/2Vai6qEpW9PFhToRMdIcL3LUZ5Vjm+AcNYBycNTrzGXJU8Kcky5k
	 YYbobbHVmaXTgQBaF/U2GDzo54HPWLFRvpXqTA0uP9ojUUoEaVtkN5lFv468eLnist
	 ccLwIcw/3fPOWJqlzctt8EOafPD1ovlOU2D3hnrrCK8K64mbqVEdgGfr1cizl/mxdk
	 xM4pze0r+42fKzPI4IOKq+eCmoh12L2yRXqYcOuBY9HRMkg3nD0vbZH5aHsZ9Ue892
	 Eyu5AGK6Cdw6Qk0VTkO24a/DeH493z3CrxDfcApUYzUGO6mjCzz/1+/OoXL8rSKQ1J
	 zqlTCLYLDdX8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92169CA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712879357.28224.17848616610234321811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78ca2dd675b2a46ac35439a56cfc3ee345fcfb780287f397fafa0a80fee840e
Date: Sat, 06 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757128793
