Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72169135A4A
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719571463; cv=none; b=Wy8Bt2krThx6p+zhDWif/k8JnhEVBrKRXWMDzba4yer+mGjp+823F+ve9TXoielQNsOr5FC+v4TaJpVdJOG8hkQ4w5UlpKw9mmrfy6a2pAL3EnBt41LgbBxcogG7W6QHe7S07V39fsJG54ICwDAtht7OUF/RYjseCibmkGvqtTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719571463; c=relaxed/simple;
	bh=JUfWsS6qu+YhLCFHBHwE98ofHWHExNznE2YeHoLZmUU=;
	h=To:Subject:From:Message-Id:Date; b=YFvUL+k566NtVfWFKW6kTRo3LmmuEVouqbdfuGlxdayPBsJnnDVIfOJK77zeBpB2avVd4eP7CLL+qASqCb6YRmgg1cb8iQp6BTOR2xW4Y+OpYeZoFKbMUlj5E2vYWpI2+ezblEvMqfs1cF7Y1dWaLmgZ0GbkNEtuUz5mhx5fSeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bane7dg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bane7dg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDD38C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719571463;
	bh=JUfWsS6qu+YhLCFHBHwE98ofHWHExNznE2YeHoLZmUU=;
	h=To:Subject:From:Date:From;
	b=Bane7dg+cvq6FEdtoM/DIAFFwF7c+wUHrPZX5PCkN4SsTRIjO/yLuUUAGo8jzgOXY
	 ZX2dJB+kvqAjbiOdZxqJnQWRTbEgrWUjvV0Ml1lwVaGyBk8ncEQPrDHfzEj3yiaY2e
	 JFDSmLhLzclbR+WA8XtLikYEgNxfbTc/xKGbxYQtv0jUfE2BeRps6eptmoBlhkWfpL
	 cICV3AviMhBBBxT40/fPvjVnbLqOo2OXZr8mqjF4JdLk6AMargg7TjtaiNYErO6J5Y
	 JeD1eRceWUyrWdkgAAIWfIhF/y/6ba4WYSUwXQuQzIi7nlMb+oOUakkaetsM2ctIaS
	 EK6XrGvlBqH7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5131C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957146284.22830.4372128230888164304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba3d895117cf56053af2e73e46cb8bb4c2cb8cde4a43f097c39c1d74b9c340b
Date: Fri, 28 Jun 2024 10:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719571462
