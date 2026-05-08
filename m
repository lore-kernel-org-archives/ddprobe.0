Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BED218592
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778217454; cv=none; b=n8qVFRYhv9lYMCHUgUycyP7gnswkM6T+K/Rmlk+Pz3+eR8aOxnUjiAgifyFKnYeotvIXi1czyHkdjup1RGyO5i3wu3tPkhfUoLPHFQCyLPDz7axqTxHEeqhk+lYWm0y6o2tWl/oWIzcEhn6vltdVdlRYt9zm+nfQc2LeWx34is4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778217454; c=relaxed/simple;
	bh=NHNBm7cq5AnOUPVeJC+IDeQpfWNGaPzvn/SD4Squqpg=;
	h=To:Subject:From:Message-Id:Date; b=d5pU7KyhIYu72NAVHsQmw1Kq+06chvPY9p8Td2lcZv+R4blzYE39ilRVyjDvws+FzgKxeTG4hl8+Q9Y5+NotengR6aen6LNdesqDF8g45NI600r0KXO0V9zBJ0vWtlIsZbANqS5NOnPk4OsG1KCN3QsXx7CtXu0Sr8IyHdOGCf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtUJTGws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtUJTGws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92F3C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778217453;
	bh=NHNBm7cq5AnOUPVeJC+IDeQpfWNGaPzvn/SD4Squqpg=;
	h=To:Subject:From:Date:From;
	b=RtUJTGws2WGes4M4QuxMhtkJ1d+VOFwggQRqljp57IOkymNsFJ0gKfeST3paQDOW2
	 2+2PgWwtOh4udvCBLt+aTXdv6xbDEpTxemhlDrPb8i6QsqAU6kBoxammVjkY7eB4Pb
	 OxSxp89RuccMCNDRrYHHPuEBeX+bat1j5RlPT1dXfvWFUMwpR2QR17VU7dV0FEilUe
	 8DoM1SCJsWSwFmwLUj9qzXdEtssmsuF/fjfqTHe9qK6rQ4GeIvNZ6HrpANyM4J9GTI
	 5L7SwYEepexSSQz6po876YbD1KaxxtT18IxUmOx5uPuW0eVeEfO/TRF/ecPRO6NWqj
	 TJEXO2ctjLslw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DF9CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821745374.21428.11241099172808850497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc02b8902615ef1b8e0d8183b70305471175140eb73ac3b21a0dc27f4022f8e0
Date: Fri, 08 May 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778217453
