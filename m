Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0DE3CF05A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777651654; cv=none; b=c5ht7A/jlcYwGxXhSy6sdQPTA7bz5jeNW7d2w0Skppr0hsvhloCQfZeHVdXTMoKS+mL8DKC9uCXwft+nntXTgCUak8zhm3lvCNedWCRqUK+cK7FvzWGkc3Wa3jCebiSaL3ck+A94dsCBz890n+6TRIhHWlqLN7kpGwZLzRuOMhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777651654; c=relaxed/simple;
	bh=T1s14vtZNhOPg81RRQEKSSMAPlZ/Sa0mDPPT1czMg1E=;
	h=To:Subject:From:Message-Id:Date; b=HGkM/5RfvRxNFeCrj7JDKSvVCkCA8+sF97SF80keW5fz0hKPjcCaIsAMLUtw8MZm9vSne0FiLg1DZAtRJI0dRNeOzJJ0pgx0GVBOKOB2d4zhFdgdm7b7c0QPiFPDhBG37Rcrfn5XktnuOTMzTYb6d75nfjkAqjkZRc+10MypuFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k16NlJkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k16NlJkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC367C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777651653;
	bh=T1s14vtZNhOPg81RRQEKSSMAPlZ/Sa0mDPPT1czMg1E=;
	h=To:Subject:From:Date:From;
	b=k16NlJkEGlQRxvYMq3J/wRRY4GkSEK+F7+WGdeC8zs0/67/ZEgwH52iDGZDVcgu+w
	 ZJ6S4yPSbzqk2LEIcr86WkBCQg2jONVWP5EDTHAwOCUmwTIonZ5Ri1w2vLTincp+L4
	 WmQixxIKMX5oNJUIc9RCE1+Bw17M/ohWJFCO1fypuCxS8Rpw4Xs0ZRw6p0/d1SQ0g8
	 EGrxG734WTTzbvw5VzGzTMgkAm+Sr0d0xqlS1ZXkZM4SOwbA2iUvaFLlTCIhuDPJI6
	 IBu/dPOuIV0j6yw60LJsBcZdQV3Noh9Spg6ImRzSRiqq10T3aHNpf1929196oht9U0
	 MEIn+f31ZB3uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FDFCD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765165368.17444.14505283835170905646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbdfb6c2f9800022b662a79a891460d2680366df4739239f8b7b95666c7d271f
Date: Fri, 01 May 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777651653
