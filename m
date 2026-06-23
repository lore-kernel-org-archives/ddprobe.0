Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412233770B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782178594; cv=none; b=Phxpkfl5aglb6ZLdca9pmMuWzF0LvUKn6WU3vnkVyZmAAJvOcYWXodneKiF7LF5UAmzq3TJa7vXx7owS4AF+Zz2fnlr46uHe7W0GES4JCQNG1XsdBi+NOhP2AAz2JUhbzpEaic0RVv1TkgqIMCR909mPHFDmM+5RJqWrUsv+Zig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782178594; c=relaxed/simple;
	bh=e9z+R5bKyxEdUHmXaRVV6VExrbS94R37OqxbqSTARCY=;
	h=To:Subject:From:Message-Id:Date; b=RA0F4/YDMDv32Hg5YxdDfacRlo0z7J2BV2JG+vsrROwAUsUTv1atU0XXJMgUrWCnAPHZ3Eo24Fk+5zoFhNVUqYdvHqn5Ve634knvAEOPVIIE/DN8QWILYrMFJxqwqE/Vp+G7BUkvyBva5fhpHcwlkc8g8JClEnR/JHjNHhW/Knc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LC/GpoB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LC/GpoB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE3EC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782178593;
	bh=e9z+R5bKyxEdUHmXaRVV6VExrbS94R37OqxbqSTARCY=;
	h=To:Subject:From:Date:From;
	b=LC/GpoB2Act2AcS9W9PixLI70hhzzaZwHIpWxLVJWbLNBi+D9qGDvxyuqr89Gfeex
	 Po+ERrhbuVyX46LXbw6MY3Oli0XiUz7EFuX2937HjO/kX//rAtyL0vun08Zix4mASI
	 FE9mKbVkZ73/A5LgYq6+poJwSV6ZPQmW9p+aW83m25WPbp9ChCPOuHozxVU1VAowVN
	 tNkzGifOO7hBafW3uzWPlsgsazT/Ur7PAUtXOhxOgvMdU1BN1fVU73l22FuUyScUet
	 7osRXj+q3zvhkgKpam13aAEelNHVP6ikSsUaf7wsFicFOFO3EYd/ZFIbJ9LhdQBUdV
	 T+w7GjCaXKGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03E1CDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217859368.10776.902606143412064435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14f74d328648861fcd4c7e96248abfd5a648882bb09082baecad81a2bea11dd
Date: Tue, 23 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782178593
