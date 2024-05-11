Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10374125C0
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715395343; cv=none; b=D5zlIHPoJB8vmqWTLwI4RSpcyMaALGPX2sbhnFOLlcjTxZLgRIggXztBz68xBd3cUac5T69Lc2N7uWR84I81nmCKOYb1/HVp22HH0a/3dS3F0/eZIEmfRUZbcwJn0rMj1E+4eeORDpiB2IAKIgIAf9L+CLFjP0+uYpEIzFkiquQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715395343; c=relaxed/simple;
	bh=Vh6W4noSXbNW2utMr4DARo1vDH1yMD5cbhMcPhPuyVQ=;
	h=To:Subject:From:Message-Id:Date; b=n+4OcVkjGqEPTJtxmtMzqrBhll0r1ga/Al+XL/kX+MMn19q4LbpvSmQLtHn9ZKAWB1L0LRniwZoVib95BrHp8s5bVrAu7R6NpBgTpR4FMdBwt237imn8vx1r61Xb6+WtTFw+rsX2TbubfHPd6bOnL2RY11jPZPC3FbnPkeb5nho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNcRz8Un; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNcRz8Un"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BD8C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715395342;
	bh=Vh6W4noSXbNW2utMr4DARo1vDH1yMD5cbhMcPhPuyVQ=;
	h=To:Subject:From:Date:From;
	b=HNcRz8UnjnhKYZAmgD+HMSBPXPip7GPPYGde7/8+JkEZxZM1CbkKrvnsRi3wloWf9
	 dpmut9YjFLMubKd7z2/95DLqWwJzK19aVzw61SatYAv74bCgL/BgQBQ6sXIPJQwBXB
	 6nJHN8pZ36Cu3SWfJrwdGtfAnhjZmzIMXK5/gP/7PkWwgfJojx5Me9y/0SWfDmO/Cn
	 GDfZURxJpIp6+bUXLVwI3bkhNMTQALVCHsp4JwtDCWYBKKkfAY4bfBu4cupiLdKBYG
	 m7fHDof4CKlyYTZAXQzSp3nuC3cLCacWC6Kz0M21RaOA1EJkyCa9thiBzQ+G0wVaA9
	 DqdlgiIt+WB1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E87C25B10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171539534276.22880.9225424100177272987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85dcffcfe4252876e52be82d27d41a6a0b50bd45a853a4cf507a9bf56d2121b8
Date: Sat, 11 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715395342
