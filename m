Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A352DEA7D
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764821574; cv=none; b=MjLMHSWKjBi4YQpvDlZT8WpRpJWfmJG2wq0r/GOCpTJhDtx6NOTiJ0U1TYROOAYwsUy8h88SEhdyKPGtcVm3ovoNfU5taD/AliS5oYH8nq2Pr3z+yIRwBKC+xTdXUFRcKTbHMxsRLV+CCVGkdp3im5wAcLPoCHhgcsUccWpcVtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764821574; c=relaxed/simple;
	bh=dc3JkPE12C2sdeWG4EJb6YsKqKpJRWYA7HDngvEMFm0=;
	h=To:Subject:From:Message-Id:Date; b=K0H2mlimWKb4IPYS3U41zXHHguVXUGoOPAExZO0KqxHI34qMG50Qtopjp8cP2HZgYdp6K6vvtg05xdUh7qrtL4WwWpY3O/CKZVxy24YNFWj6POhvS2sgEunzm4A03MO7GqjjbOec4mprl7TS7zVfLR9F9h9xoMj1MV0xz+OBBt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C67MFnMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C67MFnMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A784DC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764821573;
	bh=dc3JkPE12C2sdeWG4EJb6YsKqKpJRWYA7HDngvEMFm0=;
	h=To:Subject:From:Date:From;
	b=C67MFnMDHKn+UwkO8hzrbMZxRyAqwtBqw7G8KsLKG3wYOJrDzjv2T8s4ssKcuoxMi
	 0rCmpdyIbnmIO0LMmARtRZHEGHQoUWMvNYzGEPVmBdbnrGAEKW+lgWQVXkzZn+r8WJ
	 mUNswrDexbBYlVFu2es7ZtWSy2yZGiceXCqEB96Ea10RWZ+Sc2cnmO8cbnzbxcp/DX
	 1er4cxeYWGiAFUIeyKPdtoebeHEhJgTvNJabsV1eUjrJJXZLN1GT03cIDCBNOGh6Eh
	 n8fwdrmmbGjjKhgzZUaPsgO7KFMIkDesQD85QA5xBrRKRlUQSN4iVLbREisKZ0UK65
	 4Sl1OUz4UsJcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DB1D1CDCE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482157358.18149.11941868359962009549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef678f96d439a14dd0b4edbda38238b4b2d96a1f05f6e3f3f8c6aa864a2a7bb
Date: Thu, 04 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764821573
