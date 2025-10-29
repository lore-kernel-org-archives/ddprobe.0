Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AE4347BCF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761757794; cv=none; b=iWSJmDXaFr56tJERTxtVVBWzMPM5OYRC7BhTCbdNaAuAvN49M85EViDAkrlBNPCysxib9pPG2IUZ+AZuBfGH7wSAZ2uyo05pQ7GaIkzlakfv9C5bwJViGZAYX5uHb9kPKLCnlLMm+qj5gGbmbrewnTBL7Fd4mLeNKI1dzWX3kMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761757794; c=relaxed/simple;
	bh=OPAcN2A7p6we5llVgc3pQTG06O7tG6G8QuVfhV86YQY=;
	h=To:Subject:From:Message-Id:Date; b=OuSa9L0JO2XCCeQXX+BVp7mY19T/ugWao5bv0dA9XhMdjVgZOdsakOQIknmK/XBFq5Z2H+6OrSbqODHi0C2JEETOkilV9wsRuf0GJl/RDAZOz4uGfKMCwglUCO761Zpq+5n6YQkw/3u1QDjSx/SQQnCe/lUAurfksXjX6OZbbRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gS8oAraj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gS8oAraj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44ADC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761757793;
	bh=OPAcN2A7p6we5llVgc3pQTG06O7tG6G8QuVfhV86YQY=;
	h=To:Subject:From:Date:From;
	b=gS8oArajG0LeLnJHrv3GNJZ+t4L0YJI12fciKy0cexYhckb2KPT6N05q5GqwRuinE
	 gGeEmy5trstzccvlpNmFe1IMHY5VZ5tCJtfghdGgpzQYqkiAwmjMVOzRPfAZEgV6oI
	 om8nBgRRSHeyp02954yW/qBjoTYL+zOebRkRbZpCsHYbxQDtJFQVppH41c0c/gjnVo
	 8fQeZCxu/xKvn/4GDtwUwmjvAOZNvYCruHHuaR3mEdgJ+rg1xpD21Jzf3hBho9730m
	 dMjwhOZ7W6NV9XbIuj05oLRWC7laKxb0xLzBzZqfrJ7BiBCeAzbLm62QIb8hrVdjLk
	 Uow0p281b1RWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC4BCCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175779358.13507.6014615759941287662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d1b170d9489d68140742b960944d907f3f5c7a7c2506ba4d70e6566abea2cc
Date: Wed, 29 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761757793
