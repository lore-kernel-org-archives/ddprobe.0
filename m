Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186392BD0B
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777698454; cv=none; b=BsUKprVJWqIwIBy8CkvevE+YCdVB3JvzAgHM3lT9+TNJ4B0/LXGfY2gER6mL/aa2S1TO2s89+A5ViX2Soytf3u+2Iqg5j4M71GPHlYrgv44oaLbFPnyKkxOjem/+50B84NQuXtkxpZAATzlrvtKNneTQnuXQuJhyk64UXnBaApA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777698454; c=relaxed/simple;
	bh=S83k6fLveQl54wRaAY+wRG18CVNQER+AH36gntDTq2c=;
	h=To:Subject:From:Message-Id:Date; b=XPBS38d1KZwrDlh/NiqaYD3lYp27omUK4z5mUtPn9gBRu/NySOpIjTW7rcPwr5m0TNJJwS6vi3q1x6Ly7mXtILYRoSjzGO4gKLYpg5GcZGJ1M+6T/1U0fx7q54dqJ2ZwqMYF/PhFOIOfZFZZqdH9nNmBBL0w5JSAizwOesDC7o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/u3tUNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/u3tUNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D29C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777698453;
	bh=S83k6fLveQl54wRaAY+wRG18CVNQER+AH36gntDTq2c=;
	h=To:Subject:From:Date:From;
	b=B/u3tUNAL3cViPuKv6yFsmBNYRxowGnWrOFtmg3JM878V+2WYBweS6EUk6HTd0Zuk
	 SdunqbVl5PMKoMV0hpDaYvxXFWVEVL58465JHRGfChv9NpCUb+bhx9yf8yADgc1xv/
	 c2HN82eWZHV0iGrY5Hd5xp6hNwT371P155ylyxQkTmzx9jUzrLbZsxu1cTCp8iTzyL
	 9+c/KhIBCWgcQVP119T/TWlUC6KPsb1Kf8RJMQUAX+bx82JgBs/nF7sHY5phE7c7o3
	 IYzw329A2ZiKhbrFkq1H8TIomoFrtzVJRxTXCDpwaagT3LUku95/nQB3neepfRs+w7
	 IQkgmkZ8eXz+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9925CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769845368.14437.12595359612598817892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a517f664c816607a15a5945e9eef2756774b6113090ccaa3adca800cf8292a
Date: Sat, 02 May 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777698453
