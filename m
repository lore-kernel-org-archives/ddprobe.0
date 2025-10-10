Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACE04414
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760056194; cv=none; b=QyGQJj6WVz/i7LIGq0p4Wdc7jj0ciy78fc1yK26Ww+lQqTfK0zbBcR1Bb1zIENivsKveT9KiWJEEecvYQaa/0F5QZa4pmBu5ic4Y23geVg6z1gpBaDhQAxH99WbskSuXx9CORFq2lx/2JbSchtBl98iguYrMuIKMZGVlMOYmPOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760056194; c=relaxed/simple;
	bh=fx2TGMhoQcmLko2J1s76D8lfwnbRNbB98a1rF9+b3W4=;
	h=To:Subject:From:Message-Id:Date; b=jp1UZxVmu2jEy3cDyojVGbrRFQxOZoCh9TvgCvLMm9XnpysTh+mWINj3FBNG5fGDbvyQi/ZtehaXH2Wh0bxKGirAxUZLs7MYI0bueF9IlKsuyJSup0iDGFL6TTYe48HsC8v2qDFTXRrL8L3hPtr+4YAO5rQ70K6ngFN0TvWAWbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtOHXnGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtOHXnGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C6EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760056193;
	bh=fx2TGMhoQcmLko2J1s76D8lfwnbRNbB98a1rF9+b3W4=;
	h=To:Subject:From:Date:From;
	b=LtOHXnGXLTZjvRd2FwiuYzZPs6DggX3nvIFmSvkPFZg4Db/pSIaE74Y4Q/q1kto2v
	 ud8klFhHdofWC1qf34qAE/LnmIyHvCnvaGSQqv1xkzJgeEqzb+4DokZ7Mn5pEqMsqE
	 4U6qtDwpjahR5ihc02NbM8zGPh4HQhRngM7HiuFYIKNTvcgb2N46naIHeSbtiFap6q
	 YHnPvJZNV2PbMNpPWSA6dAHnUFSWfP7kNfPg9VXVtEh0oJ6WMXPrjHkd+P0CtI33W4
	 66AA8FwDh98VQIwJFJcQBcnJJNU+Kk0Adc4G7KtrNyRi5ekrco8q+9gNsfhJgc8zKd
	 cFcfwEb5Pvnlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9244ACCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005619357.9057.729259712576940780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0429eb298653ac44768546f8b4dd944ca9cf3171cdfbba3e4423040df5b22be
Date: Fri, 10 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760056193
