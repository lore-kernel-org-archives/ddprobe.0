Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9FC35F5E6
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780084354; cv=none; b=B0iJeoodmXMhohF8knTQ/KJtpf+DyJT/YogTiS4BcEoAxFxYnN4j/G8ndAloHxWqycz5AC0en5vydZnBofo+q/fD5N0SkzCKktX3V8pgj3G32wUJkWXtv85TZAFz3XEKxxgr0uub1BEIojiBW0BUKCgyBHjfOnuzLuYVnHxzUtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780084354; c=relaxed/simple;
	bh=nMpxhpPHspPRf8svaBn3UcKbuwfRCwCAmsvUnULQ+4w=;
	h=To:Subject:From:Message-Id:Date; b=af4BRUVwDMW4V0Ouck1IOZMvGHKvVIV8XllrlhPSTmQ6RRBTY1cHIw4WU1la3WlGEJe0riGxYK43w7z3C2DTlDwsr7pZPDhFXMLPen4biXZlpUioMsrAOlIi51gUfbiNu8FFdz7xMGWW+Q5Jh8VSxt05W4X5lG1qerjfrYdsk9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHIQnqBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHIQnqBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41F9C2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780084353;
	bh=nMpxhpPHspPRf8svaBn3UcKbuwfRCwCAmsvUnULQ+4w=;
	h=To:Subject:From:Date:From;
	b=aHIQnqBuPU6CEiYqa9CztWWoRFucYDHImrUy0IBxVOoBOuJLDke9t1jls4Rd03xpn
	 4cHTvE4c8jlducuUpuM7o89xu7ePXCDtfZHkWGwzU04D1nflS6xRFPY9UP25iMRawH
	 OM+wVTvp55icX96gjhxipG4BDp5xdUZodyfvXWzmEymJimIe+KAq7GcmWq1CelDxTk
	 E9KI3p2THRngbTp11FA6wB/uD7PeujPJpGuGwbu7/ETHewxnCp4eZqEdsd+afy+WDv
	 TOvdi0Nf3CV+vNHYx4pCx7eQ5Y9fTmRnEOtJ1ZpHo6oqiqeioCoYACnoQ1rh3ItWVL
	 Dzw3NNXAE9OMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE62CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008435368.19105.4673821273406549823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11c3404f8cc68eb77828fcc6c7f589a44735457d265058ef91b97435bc39e32
Date: Fri, 29 May 2026 19:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780084353
