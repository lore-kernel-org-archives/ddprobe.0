Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818892FBE1F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778646034; cv=none; b=XpqxMaVGCYXS87hMbhfJGDN4MHL0svYFfLc607JDAZqEYfvobbd4cRQlrKW5MU/7RHOqGOT4fDK61Ohdztt307TQTi8hDH0/nNF9E3QiQFOKU37QfG7zaRdWaj8TpqmgyHbY9mGmf0rxTnQ3hnISbtzmzcAX5qH+4t8BL30Awl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778646034; c=relaxed/simple;
	bh=mGQ5s9JpD7+1WNO4v311e8WZaHB3T071/iwPzUiW3tw=;
	h=To:Subject:From:Message-Id:Date; b=imWdA1+0WaR++Kn9VauhwtjKFLdFRmhRKl6/lhlMJbYrOVeK8YE3bxZUIaxTYT9186EEnV/m1tQADbiQOPZxVf09GjvdV2p5tH6/fTA2U4Dg25KZckbeR/uqMWvs4qdT21Rup4k9rovizIboC1Q18Vo7MJ1eoM4pZ8JHpEjEXcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfDIWZxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfDIWZxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D549EC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778646033;
	bh=mGQ5s9JpD7+1WNO4v311e8WZaHB3T071/iwPzUiW3tw=;
	h=To:Subject:From:Date:From;
	b=WfDIWZxxFcwQ5dqyLCDHgdffq4YFwvwwMG+nAxbRLHjxkZZV6h5WsYPK6vprvVcGF
	 C1Cz34pi3CfkQ19JYIAgEZ9ku5YSSyZAH+AgXGYJ+5vwaeNIxY+6oIqrokLDnNG2Bk
	 4T6lBA+SZ8potJJy2HMv/viOQyW+DF2gi5yOMzV8p9kTzYCnozwbE3Pp9jcBzxT4JD
	 9QbEndDriX0LawWV9WsM5WZXfeGPAHNJA8GEd3QIePWGiJIZOR45lK8WIdmZhlcU/Y
	 rog4Lyx90fjlz7Cox42r0vsjRy/tIkXha0Ehatmon+mhEAbFDetP2y1Ml7DTewwgAV
	 FGhz/JlC/1duQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0DFCD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864603375.2275.8277523763700688122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4727ac24ed4b174a9b949a2f0876b2f13cebc218b501ac4f6eb588252b3047
Date: Wed, 13 May 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778646033
