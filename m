Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A19E1F099A
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745341795; cv=none; b=nUpTHun7OuR2Vv6NwZurESQ5oACnIyG71x7TH+MzDJMUznFLxdrK/nrVLknvhS8idiZJk/uSngdCOKxNWu0R1ZIpdzer3RG+y+C9U2DuxBy/K0k8fnaUZiDwQGoIQ95p7sQpWstF1geyDNIjpXvAkA4DWItqgZ5aYBJyTqacJKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745341795; c=relaxed/simple;
	bh=DD0YOgUxuUmKBQvr3sVLnfWzr0vxyPqMTKynyfKR3PY=;
	h=To:Subject:From:Message-Id:Date; b=nEOrqndCHmfo76r5kb+I6K/gWfpNOKy07xJaHm6uNMvhdfTbwYvjlzWAutS0j8NxIS9kaQSC6JLn2wkP9mJuCle+diLKfBkT4TOoVyfGYf+MKunimUmLrjznenbk82oVgxt7Cr2M8LkJZrMHAp5UrSACc9w3IihIBb9bREBDus4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8WrwakD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8WrwakD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78D5C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745341793;
	bh=DD0YOgUxuUmKBQvr3sVLnfWzr0vxyPqMTKynyfKR3PY=;
	h=To:Subject:From:Date:From;
	b=E8WrwakDj04nMbX661TLZmSHbdDgpU9DOLKcnUIfjmgwNtNkH47RS3CF2DtaiZuww
	 MjWfdLA/Iv3oEX4g3gsKYymGT/9VgYnDgNz/O8fpbDJ2kWsmJCVovsZRgtskPCO781
	 cYqd7dO4x34XNgdY/hg9hnHsYTbzMFeil/8wwe31EoraY08Ndo4jYlSo+nmXME9gDK
	 8FHyGwx1U0wtfEDKoWBP2O6Jr84UXXybzqs3u3l6iQiwHRJHd5Wn7DIR3JDDwttEiX
	 4CkoZGxIjB5u069FI7m21EeZS8henby9AA6oXy9l3RDuvzDmEZ5m5ag3uDZE7L9Vm/
	 jlX6Rt9bzWN+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A365DC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174534179365.30671.5069588378674143876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3623d7e2de4923cf2cc4421605f6e512d71ae6c2a1a09f656245cfc4d4f893d0
Date: Tue, 22 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745341793
