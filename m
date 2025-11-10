Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDE028CF66
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762794594; cv=none; b=Q2XuGOd3Kph/8Z8flJryMv9Wj9I5Th6KYUhHIGD+yxlRny4Q0ob31ZgV9zDvLFXt3nGw46jx24qBdkiIAfPmegZLo6GmH6kUUadDvgGLGJRRCFhKomP2oysen1sGKLwRmG+/SnmUBj6AuiPB2Kb1LFNi1t9MXF90VyLnhYmNcsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762794594; c=relaxed/simple;
	bh=P3Izoxm+R94NtqzYKdt8BXnifyb7jEU5tDfSjofs094=;
	h=To:Subject:From:Message-Id:Date; b=udBlmoHJ4jPmPuZjSYUAh2syWgOd5P2jBuVEJefZyICT8NQswjxPxmBlvouu2XuVKuZCpz4K6V1AD28QkEzFjOvKV+NI5cHOxLUaV78bF3syguRYzPCyPFuv9cpgo0Yeg6QDxdjtDFcevAb8cIZZE4ThkKsQQFEo+UVUS/H+t9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnMdyyhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnMdyyhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCA1C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762794593;
	bh=P3Izoxm+R94NtqzYKdt8BXnifyb7jEU5tDfSjofs094=;
	h=To:Subject:From:Date:From;
	b=cnMdyyhshrRJbpCvkTcKP59tVjQ4+i8gE0nO2pGRdP0XpD8cu8+0b6+Xr457H3cAB
	 sgsnG0Y4Wb2L1aOqhyCmfSXQO2cqGLfOOGgOwBFWJjybWTRW6LibnrMzq9DmgPePGj
	 49pqfBvPnyxcOSWpBp4x7HB0SkJQiNb7WVL3gASguhiYkdpSvbpFkgdVy6P5vB1+wm
	 3XYEci1As8vrwUKQqhXoPTkNewgvM+GFo6xKitsgLMUZ60cWwCaQHS5wWFo6chP//K
	 oca8rmRd8fUP6mLvCaJMacAsRp8iJWrijGrWK2Uq12glU27gyp7IVk011IHJ4jn1UA
	 +lJbrV3ZSLqSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AADCCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279459358.16335.2075123369862626910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0244044f3762c23f966144fef2758ea71d70de7097ec1052880d772660d147db
Date: Mon, 10 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762794593
