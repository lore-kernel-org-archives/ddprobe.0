Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548A03B2FCE
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782501514; cv=none; b=e0auxD++vZYOk+HWSUGYe7yrvDUU69HzjrjNxeGN98lf6oIgLTs/He6kIqkQW3PVEV3pBRI+lVMA5IqXS2U1cTdlU2PD0kmfhz2cMEMyW/1+LnBrhc/KOtIFgsckW2zpEBAQUBGb43fARyBbo0QFy6Z70QX7xgy1/XEXFzw4F8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782501514; c=relaxed/simple;
	bh=/nSe1SdKO8sBPRjqY1C+ZSffQTrRNMFbXKpZTdy2DAs=;
	h=To:Subject:From:Message-Id:Date; b=CKqd+M+7xpYBc5BA1j70OoOdejyEUId1R+D3G4Ekas8ivncwEYuKiviismELmj4VQ6j+ibk7TjU8sM43Nk97xiB+qcF2ItiyCXhv3IXWsMVSkzdK9GzQKoJ7YtV9BL/bD1TX5i5NL53PdeI3oSI0wFOW6nLgjUrNva0o4E8Q0QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EE49mhGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EE49mhGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF6AC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782501514;
	bh=/nSe1SdKO8sBPRjqY1C+ZSffQTrRNMFbXKpZTdy2DAs=;
	h=To:Subject:From:Date:From;
	b=EE49mhGv2wNaKHIH1K+oGq8V5B3Duu3kzbbdJmNSg9BqcIlALbYr0xkqtP8LZ4qC2
	 Ev04xAWu8DTRlZWRuASAVHh2dwh9xTYEvfy+X7Su81Td5+O9NzrqMWmuTtn+ErPzkG
	 CJx3d0Pkr6xvGIaB3Cwb379uH77vHp8PDAtEVWoW0uLjHSw2MXat9pXjcdnaEiFDel
	 QP858hmR1Nx6XDA3Zkt4rq9CLaZ4JXp30ynaRnfWPUqY97msSJawoZ0wN2PnL6JeO5
	 YkEEcdEn6cgAc9lUwvXAf/Vnkq+S6p3pwxiPJjui7UnSHNDuUpoO8eGyG6Bl8K15J7
	 isKhtbYKo814A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B84C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250151371.31395.4936957567911662635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddbf3bb563917643e522024d6918c565074d6035662e01d4628ea4eb27560b2d
Date: Fri, 26 Jun 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782501513
