Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9DD48986D
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787780434; cv=none; b=EAEctZQZQqbzqJDJKT2SlebFitf+MbveOrXilIYS6FE0UhQFsOCe+qhFLu8mJpjn7kfuY62/uiLBs7npiP0tM2gYKE1eJuTT3wz279sdk/73zryVo10i7bdP3mIazJGbG1Ykx4BQ0bp55xeh6Q+2eQW8GpL9nL4/PCX8XzAe1bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787780434; c=relaxed/simple;
	bh=b+T5vtnhqxJTufB3a6hGLRv3YdRPGqHMN61pONCDR4U=;
	h=To:Subject:From:Message-Id:Date; b=Vjq2iDAlBc1baVHsZNWVXdYfIkHAbYkBMIi6X0SM6uNTki4AvwJdsndEXZgtGWBmiAuuFL0kHq3DrJRs2IFUVtVClCwUjvBR5jQO5JB/Ek3x810tgWgsdgt70bkzktsZgFz/eDOgZSjrf4dhg7QJLRjl7h57Ydp99pCQeMCqWmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaEfD+GX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaEfD+GX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD56FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787780433;
	bh=b+T5vtnhqxJTufB3a6hGLRv3YdRPGqHMN61pONCDR4U=;
	h=To:Subject:From:Date:From;
	b=YaEfD+GXZdIrzvCrlGh3kRifu4zsNFGdBLRjh+svHi5WFs8p61io999yMVxYMKObN
	 6Sc3sreJ0XcJZDMclraMy3gPz4qf90qI24NpvuYBRdZvRBg4FNp74E4mUtCyHYsJub
	 xxHs61Tpy8hPCvOEe3pKwgqXuxIa4nrWZI2DftilTGYU4prhdoNysDMoj/nLCb95Bs
	 HDjroONIIV8s1wVjC/DtaumWgc8F7EIRgc+U7n/RtyOrLLy7ywzhXRJYskGa3xzodj
	 9oFR+Wok2YxI746vR3Z6gUUp8TuRNDoFCL3QovTGrply1Nd9F+B7Ovq/9TgBXupdYu
	 5x5J0kHhkXTww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9A9C61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778043369.1703.7068192174444636593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c4c055cc6727f3572467ed2054a906c54440a0de73e9fd94d03d1c362122b3
Date: Wed, 26 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787780433
