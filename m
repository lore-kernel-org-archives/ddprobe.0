Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7942F361A
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769230434; cv=none; b=WQaQvfLau6qznF08Q2OInfA16p3HUYIoa0HmebFU6Zk/UJomuB4fgUPLTzQ6T5N9C+1cbOZvrgKXPrg77bZvBG45a5/AW6IUMz0j1el2mhDImxKJxlpLRIvP39QDKSOXLlIALCZu/3DGdsExilDFvfsQdZ6Ztimp/fmsJbDEmAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769230434; c=relaxed/simple;
	bh=wHRGS6FM9beWmXhDO7wLcr4LuVYVlvogpiTgnLxqC0A=;
	h=To:Subject:From:Message-Id:Date; b=CiZTIOFK55CGMV8eiwqq8I2Jomgn5kCTG5nfSt73fkzoUXlmEtAPUOiB5yu5HEnZk2QUPYH0yEUy+WWuOgJMZJT+A+6uA1gzzxqrgXoRiHWcYGXmrPyiRqgEOKyGUwRgjK8eQGQh/Yey7Bv4OtvMSdW6B9a+S3xN0wCopBXGybw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3T47/Mx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3T47/Mx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03EDC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769230433;
	bh=wHRGS6FM9beWmXhDO7wLcr4LuVYVlvogpiTgnLxqC0A=;
	h=To:Subject:From:Date:From;
	b=t3T47/Mx8DjL0VO3bX49Bvhbn3/GvXteTz6yj59kAhhcFzin0YZF70qltrk5h8Qqv
	 d+77SL9Z3H6EvZNlFAE8r2CRWggCOhSthN6EAIJbocw1HFajhNFz9TDPcny7DStd+X
	 8G+dbPxE7dw3jTotEkTclJslUukaaZK5wMa7o/QZgzEcPh2EqJTH/FXpzXELRvAdnQ
	 O0E6d7JHTbIacNSjbCzn1y8Ew5prNtfR3r77h47d0fYByHjSubP5wh/khawV4OO1qg
	 AU/SydfP2AZQHSt3AeegAR195AhCafasquPWDrxngtseE7/fmY5id0NgUtXAQj3aFK
	 K+CFEkuGKY5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E212D6CFB7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923043358.3451.3672740744981627988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876551354b153a4d1ec5bcc7356efd51062a2b9b66cf93b7cace8b7881fa5208
Date: Sat, 24 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769230433
