Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDED2931F4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788918634; cv=none; b=acSEkWmtbGJLHfv1ibPHvw8wFVNIXSPzeCohHLDSIrmZTwJYVEXayxwZ2YIm/kYwdyf9vc7L+sY071Wrvpo4idYTxU5aB71JXbb3dBCfpY2scsvnGZzwURDyumbuSE3vm+0Om17Zr2wGFQuc26dhc2d5eQMaTGCrvn/jHvI5XM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788918634; c=relaxed/simple;
	bh=daUIz9ipvdTF3VkDXdigt7u8YlubKYEIiBlVbnCve30=;
	h=To:Subject:From:Message-Id:Date; b=MoIvJimdk7qa2LBAKS6meeuyKrSKm5rDRd+mrVI+WN4yKnbLc2lly78LIcheCmDbnLG/Q65heOed0gds+wP9xqtw+IquOu0yQLLuWdpIEnFODlzpzUSpxfWjwxb+o9imTeAK4YseLaK/NREQB5B400/BRGld+AJHP+hWOiNy9Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipn2sFgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipn2sFgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6C8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788918633;
	bh=daUIz9ipvdTF3VkDXdigt7u8YlubKYEIiBlVbnCve30=;
	h=To:Subject:From:Date:From;
	b=ipn2sFgRAyx8f3KfqzdjA9wCZ7x17J9N7JS3IcaVhYaD5giJOWv/2LI71kJfmCOYK
	 kCrsF363eoDNSUNsODe2uyW+WDHnBb4zKPZ5YV6tZMyxzppi661S89vJ2+Ixrz6hj0
	 FUBKtZhvAi7UKoNO+K6UM8npgk8ayk5hXIXLsnscfJKng8cUrNwb3hFPTukm4h1d6P
	 TT6jpSXG1Jp8AHKkhhPFu0tapDQviT9aBU51x3/PHykL0t8SLKuwRLNTVZQqcg/ja9
	 fRfofG29pd9S1RrwSDA/XiI6efhgTrc0aqLkAEVIwQbdornHvJnLtRWC8SoRnCpNjz
	 ADCOnG2sCJsgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB45EC79FB5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891863369.2597.2114791053858392104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4e12c57819567559f50ce5dbf54666a4b567a0ad4e9396e43e5f97e5d9de15
Date: Wed, 09 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788918633
