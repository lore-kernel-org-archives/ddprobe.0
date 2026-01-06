Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D5733A9DD
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767706434; cv=none; b=Whwa2Uq22yVuX94NbMQdn/b1hZw+i++JEDjBaTBY7pH59W5V97fu8212Mk2me2+0TjOB0nydbPPxaAFiiSQRrEu8hZKU6S8tsxa09QBRHpO7nY0jFbaM7b0zoLTTOv3BOWXQyXQx7ZqCpzbjuH+o8HsmKo8HF+LNKSBQydkeZg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767706434; c=relaxed/simple;
	bh=T/WLFDC+1IgBIqDsCLcLFJlURtkEyH4D1gAcq42WD/c=;
	h=To:Subject:From:Message-Id:Date; b=fd1dvSykRUnAJR7tCANWvzpfhZpNoqaSXYSgJdmWnyr6Dw4HIZwHoojFcyrkSi5esm4pT5hNjI+sjqn3FndkOY1iz7dPnc554U0H7ANl101zSg5OfL7Z0PSrhLPuFlvEindVAtUZ0PNwgJ54lvwf2K1ibaG0uHdb0RH0x9X6YqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMwZL96M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMwZL96M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A337FC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767706433;
	bh=T/WLFDC+1IgBIqDsCLcLFJlURtkEyH4D1gAcq42WD/c=;
	h=To:Subject:From:Date:From;
	b=eMwZL96MtajoMktVkI8dl5UH4yKVEG/Ljra0oHtoDtl3c/kjpG+7iKDNH4jJkiR/b
	 P5J1D67TPFMeaYKAr7cZSKZbVsu545435ap3/MZcN8cM4av4UNGp1ewTc4swN85uRN
	 DVLzVGE8gU+0+IMVjuzhDpN/uloIYmBAsgFG4U/zYgz4s9KKigGHTt7+7At1dNlpVi
	 Lj6u7Tqqoigzkp98f9C7SgnLq4UVHMFIb8IkfOti0/iaCicPJArFrWwEt1CDN3SsBQ
	 1n40o+Hmwb2Z1coQk9GYc80Rt2BRYXG9qOS9SqsadUR1caM0G1Yt3fnIcli5/cXA2K
	 66I6e5gl1Tl6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92136CDC19F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770643357.8152.10347060010212587072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d12ffbbb09bdc8a6ad08c6ce0f33cdbbaf9a8adca2b71644cb39f106b0838c
Date: Tue, 06 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767706433
