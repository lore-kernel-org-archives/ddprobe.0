Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C181991CD
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750057194; cv=none; b=fGlBzhzeHuDFol19xvNwkjMDfrlqJJP7R73xjDUrUyx8FTOvT05l499c7QaPu0iLcZXLNG96zhwaQCEOOnaO0jO3yZ6OcnqI6HtY9g+rMkUKqG4G9+hl2GNrK39Iu44NoxA+/AIu6So08T1uJEw7p5kVVn969biTb5qg3bPDHgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750057194; c=relaxed/simple;
	bh=47JvckO0d/8++I5LHW116rXKM/2BxVVOdm7GWtS5lgI=;
	h=To:Subject:From:Message-Id:Date; b=D6PXcyaZYLavctKT99B7XN9fuvLbRgyLIfW6P8OGdyBvpqi90r2QsNwYLgFeHJMzMydQChc9CQidU8zy23GALtXu2sELKWD7nsJ2G3zKUeHiadwuT0tXOGUNG2BSfhX16jKnLKvFcM38ti+UXXYF5TPEv6yZg8lGbGcGi2S/EH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9b4kvsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9b4kvsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BAFC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750057193;
	bh=47JvckO0d/8++I5LHW116rXKM/2BxVVOdm7GWtS5lgI=;
	h=To:Subject:From:Date:From;
	b=Q9b4kvsk8t/pg4lm9EOEAhI5uQAro6Na375BMvEu15gej1dAV/JT0fpMdQ6sM33Vt
	 mXMeCgjF3XHH6JQSGwPFf87AnCjORRwC7Ag052QbYH0nSRhSsWsXvPSLNph3zg+vTv
	 Tn1LOSQrUBNOVAbrUt0L2F7QtMp5rQ57GQWxwTJ5Hfc7k/1g3WnECrcEKgL6xvgpel
	 8W4h62qV7l0AXGWcd0pZNgf2RjcXEMLgMqoqUmawydW50AcTlDIELLN1BxyGOvco51
	 ZFaZVJfSOsEzyyd+kWvp6vs3PSkcxtOmnVv1OMrySXZ675PuGnsAhZD1Lm+R+fczVe
	 1iJX5xp+ZeeYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47FC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005719357.2193.5512766459183970928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a55d11406f94592fe26a49409e4c57072b1c0e5c80e823f4dcae2d47c365331
Date: Mon, 16 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750057193
