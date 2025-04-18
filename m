Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5222F26B2C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744968594; cv=none; b=UrAJFCyjZHadjn0tuwHOwL2Z3Bb58+tkK9kEGjGUwgyOUssC25BeqiPJBLOo78MnoqERerm16RyvbIAokslIPqQuwlTpi++/SrZHiiLOOHvZcozWppvWX6qYVgfrjSmuINBFHGbkCXu/i9t6bd0E+DnF7sol9FgC6nZ7nuWY83I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744968594; c=relaxed/simple;
	bh=NlSzqYytkFoDy4/jqjIha0JA9WA8zMy6ldeka6iAyYA=;
	h=To:Subject:From:Message-Id:Date; b=YBG+IIOZciwQAbWRff+atnOvuJP4vn0X5rwJn5oON7SuHG42NURwnIxV1YP6LBL0nHYPdDt8MAWXpAVzJaezsFwlEZuimd4ZsaoA9CCMc4mK/rVJ4+9zFjb3bECqDlzVrqKyFz84QoxZQQ6YP69aJ3oi63KDPr67zsZyiivQgVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPy74Tq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPy74Tq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60BBC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744968593;
	bh=NlSzqYytkFoDy4/jqjIha0JA9WA8zMy6ldeka6iAyYA=;
	h=To:Subject:From:Date:From;
	b=CPy74Tq6yU/zYpKwTePIdsJFc13dS4RG/ZZUBBf8XZKqwCHTPTCy01k2gvB/eTTT3
	 6og2xTAjKfi5/1nKjbYxZlzh4nsJJvgrnzUnzQy/yYQCc1qkX7n4dva1tYGQ041mXW
	 U3T7Vdve+slYl5oYeAxkdC/QguUwJSMs7BVgvkxVTCstBuEqfdvZpPKj2Ema+/pfhK
	 EjI8/V1viWKgTAv1CrV4lislJbmmT0APWctgu19y0gbynmfMV9cwHHusTkCkBi4rfX
	 X8RtEXsjRDRkDOw/SQcjd6mHjbhqVw/nYYbOTLP/GIRK1XgijPJnZS9KCpQtGcHUXE
	 v0yUIct2/93QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC90FC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496859364.8386.2213914745652673823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54084a336832b251644257fc74af84e0985667d778da2a23543f6fbd9ade8a2f
Date: Fri, 18 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744968593
