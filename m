Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7644C478E3E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784570914; cv=none; b=feSSqgmoTlA+WiADozUq2ToRm0xnJk3Ca9bz+EUZOTTKqX3FWDgWY01gYYP9ES9lnY22mKlI26HRkeA3BudBTXa9kntiDAEI5ITEtJuyfftHvl87dYUk2z9MAAsrkLw2ERgb/FrRyepB+n7X0PzalE+6XKyKHpcEUxDdQoAq/c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784570914; c=relaxed/simple;
	bh=dZLXT5R1tHWRICCCn9fulBOb/alj8Nlk2a1ipOEqvIA=;
	h=To:Subject:From:Message-Id:Date; b=MKRkobHUP6qs4cwCzLx0poebjhthqymshBlk+b49DSMTu6RU32392QQ85sAL41JPe9QTYGZ04w7T0PD1drZyum+1WE9OSys6JhIo3XjSy6/eF6bbbb4x5TEOlk46f7nSrPPabzwktSyo+8fOYil3AEUrPo947O6mnnXKlc16cfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndOJOLJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndOJOLJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94DFC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784570913;
	bh=dZLXT5R1tHWRICCCn9fulBOb/alj8Nlk2a1ipOEqvIA=;
	h=To:Subject:From:Date:From;
	b=ndOJOLJBMqZmWlZaDmv/jzM5qysLgCKs1rlUxWbG6sxhsEHT8iOS+0F4vdK45+ldS
	 r3O0Aqv4Omr6peGJ2W/F6ee+c6rEquAc950/3+lBvhhPvXtn+F8qJnxZKCv/ZNmA8n
	 wDZifCdZnwjFX9mcd1foeOOzVo/jXyn2DsmkXkslp7squnGRnXIKcAM9xb+LsDYJ9f
	 4eHyIuiHmf8VAiNIAs3IJpZIRhfexPcRsexDFCoGoArDfwvaOWOgdSb+Kgu5XdqRQr
	 f+FvSq/NGJu5eJqaZ9RSw/PiaYN13UxbbHsjGMpbD3qz2b+Lnp0bWR81bOMunqY2J/
	 ktJDzqv5mys4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6489C44529
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457091373.26522.13783259441662047534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29edafa166cbdc2169b360eef2a947f8193762725bee534182eceecb5e06587b
Date: Mon, 20 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784570913
