Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A66514D2BD
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727166954; cv=none; b=W6kG+hHoGC1RUm9epoSwp8JggBUhFkB8ft4+YbqsqN/Nh96YRHgmQxROMBR8xA7Ov+xFDdSWdqJ/ReLwY8sWD5aXKZ5GDXnwpXmkAiX1QFe6HdT8HcuuK9WGpc+l9aZOYGWaNUZ5Oeq7ryS33Y5ojQXuZEWSag8e8T+2OSc7dgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727166954; c=relaxed/simple;
	bh=COBIPqSusQg23Qa3Ep8uvNxajyOTcGoA5ZJ8DrhWOCY=;
	h=To:Subject:From:Message-Id:Date; b=JVv6zNOl3d/faAPolh9BKRwILEXaqYvhqL26+6/lcBTaTRmtvJAuP8PGBklJOcDpeJuhpEa5N7c0lU+UUByYa5pbOi9jHuQeuJ+TwSCwIUnOt36zj1NldscnzfsC8oLXMEqsH+dfhySH9nzui4O63K6NqrCIOui1OfZSdbqcLLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idyMP+qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idyMP+qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2ECC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727166953;
	bh=COBIPqSusQg23Qa3Ep8uvNxajyOTcGoA5ZJ8DrhWOCY=;
	h=To:Subject:From:Date:From;
	b=idyMP+qrIv5lCrEGq98Ps2C4yYLrUf4TEUWDFQDJHq1p/79VNSSdZezBWVTkXvVFr
	 shrm2cc04DjcGH+joTiFOKMnQ5RNmEnr0chQFjaoyyNSYmg8yVZbxE7N+CcTxCJGhh
	 JzLilp/MARLPhtXVXUpqqAO+znEALgM4SvJknMrpoSdSAe6aOWzCJ5iIxjo7+qkViM
	 +3wGAeWnRqPD7NMXGt8/Lrxofzd6chxAhVu0/a/ghEda20XPIZgbe7pJ0BYYsZ0vC8
	 9L6D2rYZXSeB4Od5FkXuBHGOoVceP0bEupD9FIczMzX1U8jHrhIbpz2MO/OQ+nEfKQ
	 +1ZuG4w/8I0Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C64CF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172716695361.6188.5730632739837138845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10db7b2d332794d5a30994a3a98e06a3b7b34b2adaa9bd8ae9f9ad9a1f98dba0
Date: Tue, 24 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727166953
