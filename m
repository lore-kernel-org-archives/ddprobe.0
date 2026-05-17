Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4851D1A682B
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779027634; cv=none; b=pJS4hnV5BmdDMha79cRcNbL+udi9epdD1F6S/zjqJQIsnM1GmDtKOLOajMUhDkjbKgBWVsYsUoDTn1cPc9Pl3A8fMqsf+G58pSAG42ldWPNiP2nSkQslaVF6BQG2s7tups2wdhp6yZYHde5w2pEhWczYvvNqTjy5qWJHiNpgAdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779027634; c=relaxed/simple;
	bh=r1HN1Nlr3/0bPtwamMZ8ZrIGUGZaTi6EkRIuOkWccJk=;
	h=To:Subject:From:Message-Id:Date; b=fyFNbmwzmv4NwitkoJ04xDe448ZC73lit6Gqm43IyNCW2YY44pfdZYcxGPDOjDGcyJNGp9Ej6uHiOB3MKl2uWgG/t8Que8duWQ0hYrS9D8N9tC23cx6h6RuZx3k3X53W4Z27ag41xXO0KSgwWoQt9eL9UkaMg09snSwLTi2R23k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALESfhlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALESfhlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22E2C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779027633;
	bh=r1HN1Nlr3/0bPtwamMZ8ZrIGUGZaTi6EkRIuOkWccJk=;
	h=To:Subject:From:Date:From;
	b=ALESfhloch/5OkUzAQHn5PYmNJlUundXeoviGiK5/ycCFqIc747Y9BoO1KsyWeTtx
	 c8Q0N6T1M1tEKDC/TR/1uSN4ZFSvot/Vu+UB4It4lwmHA5Uz1TG9Prx8bsInOBC50l
	 Dql1qPreuQGC4Zb5x9wCProqJyZfott9aXiqKsHtZHzalbG20TBG/7E2uPBu1MCJaV
	 mzGSI4wZ4FYGVHtM9Z9wjB42SHkWqQ5TbmEZF2zO4AryQzOeVacH09vqRcT2mamCJV
	 FOaHYb4cAY+pp/jOa/lWECD21yR7zkATN7xslvz7jWKikw956skeGd1rvoZdaTW1zU
	 NOQ0N/jAbbbUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CEECD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902763368.14024.16592540225386950195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3392ba73423f85c7aabb0203c94b485caaeef82299009904774ba293cbb45a
Date: Sun, 17 May 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779027633
