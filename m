Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806D7309DDF
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782184594; cv=none; b=dO6gB/Uua1h0tXMwpOtslSTF5Tuis3ghAg/r8k0UjEXFm/Dwi7qIQzn1jv2sKzpwLTaBM3q7sFLMnv07o6kh0MufuoMliVXNT0ODhhzRnOjf4kAx25WqaIMGh92Aipulr4Uth4e0BMS6HzUvA6EzCoZTw1Fl8OjupfT+JzBkSlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782184594; c=relaxed/simple;
	bh=z7wD+/Esch86tOPM/cvo7jXnnvRgH1DqM3XSDObmhaU=;
	h=To:Subject:From:Message-Id:Date; b=T45dH4/Zq2ZxlAUrKzrh8I4Rn9YrOwIGrZqGsPx5sSgQfD6XmQvftCoXUWinGt2YfjNlFJcRoqIz/voKfhMNKqkxfXy77cUYsmulL6+AH4UwMwdNqnpOeYkuqrctlPIY1yofvbXuA8PplmAcxsn1bz9kuP9OL8Fufso/3O0cW4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJFm4qP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJFm4qP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BD8C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782184593;
	bh=z7wD+/Esch86tOPM/cvo7jXnnvRgH1DqM3XSDObmhaU=;
	h=To:Subject:From:Date:From;
	b=CJFm4qP5ejwrKKL9XbibxpCFcyUcfh2S4j2TbfAWL4S4qkm+ymcCSoON8vMsaRWlO
	 lYcmCxCWmP72uIwLCw26+lhegLV05Rx4kOnoyUhWuAQgL50rhakauokSLW/bHHOkdQ
	 aDDY4U2D9oYPIyuLgCziy4ZUUNoySyzLjjRaSw8tYIweoqdL9br+sK4DbywMIruulk
	 BWVtlotfrNSt3eo1ArCwQGPmkZLoqlHSd1/pYs/Eq0otisDpScKzzioaUSuGw25/s+
	 itoplHNPYdQK20wwSTgfUWzAgCHeLhF3IRRNhO8KBcLSUSZg78BAGZD1Jha6FwAaeG
	 mZ3o6hjwpOwGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA40BCDB46B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218459368.2822.1747797472972008160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81e7d4536c772701339b09780a9e55848298f8ecc66f9a53774c002b8fb96db
Date: Tue, 23 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782184593
