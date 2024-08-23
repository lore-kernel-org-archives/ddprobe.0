Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B00E6A01E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724394954; cv=none; b=Gt4zwZncwbFZXOrfXcgMGEatCtURBm59LK1MsK/QEmcXQyGXRMKPYNhpKb9zRvyg49OYNiLd8SKy3EpNStdAUanURjN94CyhL6v+maNqznBE/rf6w7Tp+3lOxlDwsyK4/XSuLk4/DR8HUa0u7uILqBDonfhBH7MSl8YFQzqrlEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724394954; c=relaxed/simple;
	bh=UM6icDTan6BdByKfF6sSbp6dUo4vPSG1P/B2SCHZfMY=;
	h=To:Subject:From:Message-Id:Date; b=sB/0LmT8AnZvLSVmKEOvgRQZ3+d38zhTuN0G8yZaaz7isE/EDIEcmWbcN+PJtJ7rZo8v7GT4O8EFM3Ehzu7SBHKr+u4Molu+TMdzUiB/lBVxB/JDoh+wW0n/hWVKb4Nrr8Q8QxxCvWU86Z3QUjzAlHNZ143zbsOAiCZOD/dSTbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4VLvyQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4VLvyQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C4DC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724394953;
	bh=UM6icDTan6BdByKfF6sSbp6dUo4vPSG1P/B2SCHZfMY=;
	h=To:Subject:From:Date:From;
	b=g4VLvyQUVBekDwkLuuT/yagLzNLYgLDGkTORbBw1iDVItLCWonN9Khbcz9gawICBo
	 fIWVmkE8Ljcot6oRtNN9lzW8831Mute6wpavVmmZO9GZ5g7MOWpISekC2YEINhBk4z
	 8B0BuHPyFmRvYGmkvKEd69tjPIRWbITdCt/wCZcuympchNJbhM+MaXotbjgSaqPIzK
	 nqpuirfcTFVh5MFmQND93741wAvh5vf9pKKaVywYFGH3GtKgTMOE1KdwN2RXR84L7l
	 bLUehRQO/JY7AOMYnTzQTtn2keR3zOfr9r6+Eqn8fsd20YtvVCSKo2xqAOShUgLYTI
	 UsNZZWEDHGCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9435CC52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172439495359.9394.17418339356433050646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9136b736d18fba271815d4e44113b0c1e17fb59afcba5e21fb07405ebcda334
Date: Fri, 23 Aug 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724394953
