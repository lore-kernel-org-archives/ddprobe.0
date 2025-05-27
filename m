Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E372927FD41
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748366994; cv=none; b=KJvdVGspTjVLfTzCSj33BjJXiScnYZQOYpAAQDOysMvPFr/65HqlteLT1a2fGCGzwRWO1YraBjrRefhXlih4ov6FC2ITyuemgkhfL98bqR48A+yYswNBDCYXUHl5XAknLttbDAtNyLU6kah54EXKoAJ9FMJz/tIbTw4c6MP++Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748366994; c=relaxed/simple;
	bh=0Os6BlUcYdZ0b6ImyjZhEONaIk7XaMy7J+d6uhdRlhE=;
	h=To:Subject:From:Message-Id:Date; b=gm5PE8xeOaCLuer+6U2bv2h/Grm4a5tIh8vL8lDz+aytiEGHhNBbMk7sem6+KWdnjKGx8xgwoaWmxvc9MF6RSUsNuniZnMEg3FsvQEbBbEnMzyOebk/ITAU35AHibD2/zerJhbBGHarS8mWgMnJqTuaSvjoHwiQYS1ZiiLRx1MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZduVLVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZduVLVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E0AC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748366993;
	bh=0Os6BlUcYdZ0b6ImyjZhEONaIk7XaMy7J+d6uhdRlhE=;
	h=To:Subject:From:Date:From;
	b=gZduVLVqm4F3QEJ4mi9q9JsBiY+3llk7Kg9QXQzSxeDmthhw2Jn5dAH8yC1Lxr2Ty
	 gVUI9akyg8Magr0uXUXC/AQ9fHkgpzA0z2sDI2f4MYRGgWDsXBHwwltXaVvE9RUixG
	 xQzJwRHgGGSidbnwiSHvXK7NEULv90qpIIzPYBq5nHRiUiW8YhOOk9MZKDBWg9l+On
	 Jc7TRzlEPGXdIcoceL3mh9jKohBdMEmXqN12dC3mqhOCSnI7ZACXHL2wm9rnWra5v+
	 YhhXRhTH3hskUyrQnWllRdT/weuI+LZm2VaXN3gCjGWzFaoLnoRr4zS8dcw/+wiyjK
	 oT7PFzf79YWmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED4C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836699357.25556.6637847109744745103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920aa4bc8c17321d927e4aee724cbd6583e5a4e55b4d8c3e5787a49202e3cfb9
Date: Tue, 27 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748366993
