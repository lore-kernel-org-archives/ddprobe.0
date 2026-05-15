Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36BB145B11
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778844634; cv=none; b=oNzfaILMEIXvFEvfk7vSjPub1wEEQ6fQSJty3lrH7nKoQACRaToApqAos3pHSICcaNmLZJ+JWKqMHKV4Tb8kpDxqcCBWzMBuyzRnjrVWHZ5ZIPtOBUOQ8qD0fhbFK+aZFViefnpf6w0DcX3MeCzTjh+CTqi05Z8rR2j6t4deIeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778844634; c=relaxed/simple;
	bh=2DzHxWMTUJQ1lfEu7z/vS30rwn0pb6KS7m3fYnn8gKM=;
	h=To:Subject:From:Message-Id:Date; b=qAcrrvy9TkXM03U8Lu6hgNOjn7UpEtfYQWnjmZuEgQQTuXU/p6pqHGsHs4jdVRwL8grS06/i3rtqB60NAxBi5CEA7qXfvNTBcE6vQ/DdrXrrmH+gVVpo43vcWoXCk/WKok5X85S9JPYRH8p+bVpeUp/UIzBLxSPM8BBkF/68osI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=app/4xku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="app/4xku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B848AC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778844633;
	bh=2DzHxWMTUJQ1lfEu7z/vS30rwn0pb6KS7m3fYnn8gKM=;
	h=To:Subject:From:Date:From;
	b=app/4xkuq5jq//EBCAkipyXlShcMJA+9fMkkflzYBTC9de87eokPpCNUiuG/6ZGBx
	 5+EOOAnz//3NIZ/VO+zPzMtfCAipj6ZJDp61e4hIBEtzQULRj6t5N9vH7+9rc8o4hY
	 OXsrlNjYJLWJ8xwG2tc+bqAmhuJ/FtWAn8pMwSa/F7N/ugUz65mooLjGuM72+yh5D9
	 f0hsgPkEjvr4Bnrmj3rbflZqRWPDe1KGExsqWo6AEMaRwrGjftFoNvJECv09YX47MV
	 HY6h/tXbmk/Vd9vkmNMlLMxGhwAKhoRvwaAq53qkrBKyeHk/WJLlYBB6uaipa1E9ly
	 TIlUvbDVT0+/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3E7CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884463368.26532.9664585199102840380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718f36d9e658dc951394bc5cdd039e15106244f54a67b905e5f6ea2706631c0b
Date: Fri, 15 May 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778844633
