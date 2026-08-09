Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6341737E5DB
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786272034; cv=none; b=P/SMzFIkpIeXqAKmp9MGxNOAfMsxqaWdsl/9/2EkOz5/tWQlreGOYmZ9XiknhWPHm8sJUq9HnEvjCaJmvPpUIsA6BJC57HmzWx0a0euy5lRXn2HBGJ0q+tlhFXFFwlBXstjUL0HP6+8Wa9JZePApv072ElYe2mb9zr1Pw8uZtU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786272034; c=relaxed/simple;
	bh=e4WRDK/fuo0G+rHoXrZvsIv+SfoclDwggWSCV31E3gw=;
	h=To:Subject:From:Message-Id:Date; b=IN4kXd2uRKutd/Pm+AeKrmfsCXHZccwRkksLcGLM48mFOcOViakw2qEAznyTmXgJXjqyuO8Ys3YhsVTBdzzRuhmnudmvItCMz6m0Oa+ZNEqZKMvjO96BYmvTtFESmKPJb8xf4HPg/udURJArOgM+7aYpQ2nytnQs8EbXeXN6pwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lx2/9jMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lx2/9jMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA5FC2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786272033;
	bh=e4WRDK/fuo0G+rHoXrZvsIv+SfoclDwggWSCV31E3gw=;
	h=To:Subject:From:Date:From;
	b=Lx2/9jMtPAN6/9MhFDWYSQIl20CECxfCuLMlmjHvLe2J0B2LrwkrOahk0GNH0BrcD
	 xS2Ib8eIdWTQZva4YvSOysXMcYY1WRMNXIMuqA8PGiKg+kImLtI6cJVZ2PDJ2sXz3n
	 sAtdTK7+GPApTdtIa/6kAWtOzY8B4qoXKvW4uodANh3idQIXsjPGTvepC4/8HDfGvV
	 XWUP7zFD+s4v5j2B51IKjA+kGky7iQaokhVrFscnTQHKwXw4QP4y37xQWXfsiEgMsx
	 YMA70HqBQsFZzPCn5LynHwU7AXDQlsfRp4FSI0QU4RMA8u/5TWklAJZi4NQnpshp40
	 EsUd8ig6al+Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78E9C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627203371.27517.8599029637502249138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02bbd8c0056e7da23f4c0ec408b066bfd02f243f170f6b2f48f7b279ecdb29a
Date: Sun, 09 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786272033
