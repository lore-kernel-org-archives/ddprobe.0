Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2D41F03C9
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745275794; cv=none; b=ElZlc3IRg9wKOwf7rQoTQcVIXYlzGYIOkjZ3j18blwZuXTI7XqF9v2E+cLodCPpP5w35psNt8cREsVHJdeav6JZOkVYqnSTg1mpkgsalIkMMKfqlbjhP1xKINN3Yk8L1BunSWWHzAY47ip/OVDkDnhL04w5Dir4obUwjeoHpdLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745275794; c=relaxed/simple;
	bh=4xA4nRPQayvcwYt6jhW403ssP3D2xHTsEb9j+TS0cg4=;
	h=To:Subject:From:Message-Id:Date; b=W4Cj6QtoM9vn+wSP0ZfZTcBqEQ8D+5y9WrDPbEp3y1wiIUKEOKl17ZRCRLZQVAUsyWXIeZilqZmj4IFkBcYkPtkQKi1VUJnjejPdRlmk19/ekjKjexJ+PE0JISey5k03oOExV+Tc6m4q9LHY10Re1rs9Cw/RKi8APowqd7WqXMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiZY1ok+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiZY1ok+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87D6C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745275793;
	bh=4xA4nRPQayvcwYt6jhW403ssP3D2xHTsEb9j+TS0cg4=;
	h=To:Subject:From:Date:From;
	b=CiZY1ok+X+MpgopzSU6c3j+V5+tvQtgt6fgp3LFR3SiknoaVf3+rS0eZ4nzD3++Tt
	 SZYQXZGolAUqIh4pkE75vctRkxbDeq5J1dysmgyYcMTrk/0UXB5RdCgcMTLYMQH7bQ
	 ah0u37PnjnXl8yp8negt4uwp/k/R21eBIrYazY8yhQZz1C67S2wM9yW9vNdUvTKb8T
	 xsPiMkP4vrWLyEdT5XX248vBEu9xqCu7EIexmBh0E3e2A9sE8+KHRoqXyRyIfSSCoK
	 I2gujAvLFVp+qnD5B2QFUio2P0sS9PlUB+iuhTVkeutClyR04ooCfIUZ1JHpEDyOwO
	 O8KMD9iA1bCtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931E6C369D5
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527579359.3191.2442799775680032349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9918412871d03d25a179511ad849769f95ebc8ffcda4e9091a2135bffd1260e3
Date: Mon, 21 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745275793
