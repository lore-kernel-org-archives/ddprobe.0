Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594A6EC7
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 19:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716492203; cv=none; b=hhggSbHo4RuDUxDWNe77vVrneLnSzWOchmNyKBw0922SfZCYHgYhZqzO8BGus7kZpmrlnA1iUyk+z7wDXBXxqZBHWT6KyEt8A6J0DecHiCmQsD3Qh+Y+o/z8zIWudtYzMtqMMg7o5UmdM7Aba7SCZMVPJZnRITfsGOPb3O3CWrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716492203; c=relaxed/simple;
	bh=vlEsxxub3sRsIq5eYK26KqRhEXU3gT569030rJa7Zxs=;
	h=To:Subject:From:Message-Id:Date; b=mgaaTslhfKRUzgnNt6QMoAvIzaOkN0eBiJj04UU84ou+qMM/AgLsrr3gpp9WejILBUeU8AUwZyiLnLo+v498JlCfRut4qTT3b4uHRlCO5nObZmCWcxu1t+pB8c0OtGWbx4Xez0gPVihf771x3Cg29TM5TJ0FjRXUEMG6Y5FaOcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3haVXRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3haVXRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB56BC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 19:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716492202;
	bh=vlEsxxub3sRsIq5eYK26KqRhEXU3gT569030rJa7Zxs=;
	h=To:Subject:From:Date:From;
	b=N3haVXRT8+doSuxwGkFFhHLM4iocAbSZ4LgUs4Mi5AoP7fDTZ2mhf1QHiuiNaScH3
	 79COLyIJXsD+x3yFUgDD2JlWD+QRjj3rVRMqlDm6reePcLwNrXs5z3tSf1d/ENGDBi
	 T6b9jmWf8s5w2e8Wuubuqn0IMyerK3KnyBqhauFdhICKMMiT7oFu3GIUgctuKXMKb9
	 6lLP0OMVIulXM/DzFMHa1jcxS9XwCDMfb52jiQ1M17bdWMwriFejJfvGEPJxbGztRq
	 C8Tr/S95HBXqcUJKC8HBtSgzC1LqVkS1narWK0LTd43aUEEgBp0KoWU9NOaj9QGWPR
	 QeaEmD1GuUwbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11A2C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 19:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171649220277.29922.880974483197796264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ab4b140b5e838143e42da48f1ad1bc9c5dc83b918112b9715218dc623f61c5
Date: Thu, 23 May 2024 19:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716492202
