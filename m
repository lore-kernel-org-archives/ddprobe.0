Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB7078F39
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737918354; cv=none; b=txHng8pW1K/fd/nY9RDmDz+/3xXXitKvHsdooVIJhGSh7bOxiPLPU8rBUTRuDQpCA1ccRfQyweEpSdi2H0JtKD99t0AuIdzB6aOrc+fd1yiVouM5lEQrn7Mgdim/9+o40UuSzaWzBplBTIzzZVt28yDos0geq9uj2k3y0YJAGGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737918354; c=relaxed/simple;
	bh=HnsUvdXhiW+A9PnQzWfwjdzVsyeG7eEH9+7MZUEqOu4=;
	h=To:Subject:From:Message-Id:Date; b=Y3du3nrrxDyNGgUYZTRVaLqR2xsqD/jkV7Qcu9bFVfxc89zIf59AaD2OkHfsluGB4eiS9uFL/UNnFVtvBxr4rorUCUflz6znqCf7nzJnq6yz27ZrF0Tf/h1YmoeAWarLofMbRfHAnAn7nzUQOoAQ8Ipwj5At8KWZuojqPKyYtwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPCVKYF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPCVKYF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BA1C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737918353;
	bh=HnsUvdXhiW+A9PnQzWfwjdzVsyeG7eEH9+7MZUEqOu4=;
	h=To:Subject:From:Date:From;
	b=lPCVKYF2VvnrOG45XqNTdM7Uvmf+Wb9yZc196Dbzeb+psPKR/VQba9K1igG6Sldh2
	 LzLwZLHGzoPgiZOq++HH/bNakRZM6/5yfMPf4P4N77FM3tnrEmH8ebeGc2WIORV6bd
	 /U13K/F37OJkFkHyeE9embz/UWWngsisOvFX0w+t9qixUvuilQE+DgdPq/3XmfYW0H
	 gd2yZ+/DTRA4TviOYIsMIWd9iczc9BTF/Sw76p4u5qQFFtfnlh7NX5SzR3LvAT6JL8
	 zYt5c49KONWiikHPQDr/F36cfxQwa449zFDSXVJdbyAAGPtWTtzfyLjqfajtII/x0P
	 zgQxfxhmsjH6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956DDC0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173791835357.12812.6652179859844922404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e8526f6dd88274c21625be2f2303b09614d1e5cd8bc910d15c52cb44e5f592
Date: Sun, 26 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737918353
