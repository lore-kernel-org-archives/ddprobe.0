Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE8B3E69D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769099035; cv=none; b=XPlpwxlSz80P4/ePEnBRYf98q+U31dLd+gCCU61AqreHnUrEtPYsw07aG1HXDruGrISV+xHKLI8hTXGVPNQFWGEKvN2tviSLUOFTqbvyxFJwCcQhg2bZv7Iru1u6r8M20Md1TlUB/9Wjd4+DfaZJMtZQSuoCgI4HQxFvaJjxoRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769099035; c=relaxed/simple;
	bh=IdHWdMSiRmc/x1R0HVkPMpoDbjE/WMU9zsi4UW/nW70=;
	h=To:Subject:From:Message-Id:Date; b=WpH2qmBgi+MW6vgwnfiPx9FoNpNOdtzMnH5Z2zaQFQ6rkORc+BcNh6nSHYeft4nuDE+cVXS4bx7fZZTV5fufGeecyXfIfwkIbaB5y+v+bx8jN40HzgcI7a/+bC74mz9OOabCLuryXoFao4yfBc8/4E/9bDN51WwuQBiuN+s7Y/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9u03Bpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9u03Bpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3953C116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769099033;
	bh=IdHWdMSiRmc/x1R0HVkPMpoDbjE/WMU9zsi4UW/nW70=;
	h=To:Subject:From:Date:From;
	b=C9u03BpyUdC0OZQKZcnYt4IRx5wsIBmAZne7o4/QsWeaik29c3bejSh9m5de2yklZ
	 K1NnVKFu6SlC0F1LqgEZC3iHQWCBu0BaCrWvY2JTyhE4uMBvGisEpTF/HACWLcfHah
	 uu9bRjL/n8JUBwCJirjDQo+GCTufbg49PddTb3+0aHe5LcPXIhVt9YPg4z/SBdoxat
	 tNVn7wPWJqxo+U5QnDx7K+RTIOkJtTcGrw322u0P385+z44iN7p8E4E8lZKA6bCIoA
	 dRgj99XdOm41WKxuAnJ/KnMJ/IQdxj7hL17sWS0+fb6NwQMQiZOZrltg3ssW5CuSs3
	 Zl0ynWCRU92nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93087D3EE8B
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909903359.32348.3006287109434743105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e461229167458596cd3e283bd4c09353cdc92f91494241f79a7facf46f6e7a43
Date: Thu, 22 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769099033
