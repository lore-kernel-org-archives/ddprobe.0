Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4247232B139
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781985994; cv=none; b=C4u7Ls8OHhDB1lV88bgovLZZJNLdlJvlECsoyqeSWPK8hqZz8v7mFiEFn22HsWRjIItXbdU7KvnXjFzzhsDDDfzo8V4cpPshhIWLbJFuqCREFW3+yOA7xpBi/iDUB8V7b9ugizuwwT4lnFuTsOWK/ex9FdkJlPCW8n3EPygoK3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781985994; c=relaxed/simple;
	bh=YrW4xhO29/dlK8Rss++Hfo+l7VNy/rdlxS+AS5umjwU=;
	h=To:Subject:From:Message-Id:Date; b=FkPkUK8EDiacHjrfQbP4w0NPboWw7aQF7TG0VLw0kyr5UMYO2wlSOrjHkael/84ZiWotU/hj80OMys+XKp2onHqVjZ7mMTgfWl+vaEfjApG33YbKpkT3M0v8fhIQJ44mpDCloZt0dVghVnGIWxje3HmtJ88Gv0wjHK8IGbS6C5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X26ctocY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X26ctocY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3883C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781985993;
	bh=YrW4xhO29/dlK8Rss++Hfo+l7VNy/rdlxS+AS5umjwU=;
	h=To:Subject:From:Date:From;
	b=X26ctocYbnxOAH0Zd4IFa5pOqPvkdfW8Qnv76IfUzaYWtqjKU+5cbKE/IdSRKyKjH
	 D2alv/rvIsqvJX2QTfvueI/NHnPEQCZNxrtVbE9FSficx1tq1hyxrN/KLYaUFVekJQ
	 hI8ElFj2g8YZoSxUpz/2gXsxv4IiB6ju8AiH86a0w9+Js4Y66S6jebbe+gf98TLNVE
	 ahqCcPQlT28wu5vB3oJ0HZ36jyyK2MujmRvXS3+EHaJjWQCcENiysIHtwhP6ai6xsn
	 nznXTIsFnOHhf21Yjn581yNkP9aETP/gax8dTNGBBUxVd2mnJ9q1Qga7bd8V3Uylyr
	 niOsM+MKwCguQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA37CCD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198599372.4849.9109585075234985852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ce6fded64ca5e5d075eb6d1a5f8b2dce85214386d0af21dfc96b6773a19305
Date: Sat, 20 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781985993
