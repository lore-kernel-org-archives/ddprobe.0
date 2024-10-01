Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EC41CC174
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727804154; cv=none; b=kkvaI5PFdZhIsgZhunKzOmLnOmo0XDcjSurs26etGifK2Yv5oNv4KG9amHGVjNvgSCGiiz3P22Yke9Zvb8Hhklupg7zSDqk1OY8myTW54Zn9du2SYlZpabDupCe8hAxVMdIucCtAg0P3XMY7JVcxG44SVcQHwBsKnK9DH50/BRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727804154; c=relaxed/simple;
	bh=i8E1sT3ITwMPrXM2yUbisRZq30MFFQksYGx1S9vQUVw=;
	h=To:Subject:From:Message-Id:Date; b=tLITj954/Mw56URSbzfYLPO1k2vR7zOaWtiWn2hWpjW/dKSS8B6L5WF2JpPwkZxIhpKlpqefQaBqiB7ccOhuZOh/kpcVhlsVcYu0C+kBlI6x/wyuL6ZbqNogAD++Fp5w7G6raty1gsxI8p+LDLFN8cC5jDyTHeXhbzcxsYKx6p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/BaTDt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/BaTDt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE078C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727804153;
	bh=i8E1sT3ITwMPrXM2yUbisRZq30MFFQksYGx1S9vQUVw=;
	h=To:Subject:From:Date:From;
	b=a/BaTDt8zD5OdIg+/e2J9NX+iDHygtbIX7yZkzYeBmdlg7bSFpUfeGHR2KE2YhBRA
	 oGCUvfd/VHyXJjjLuWjfKiTrfwUTiAkkvA8qcYQw6ER+Qbq50efy1n/li+P3qopLsI
	 J7eUhht1IO3G3EdxVpfrEascsjEUWRdfI5BQpjfnzKldoQc2Sq2Fk9QHUxdXTanz0c
	 9yVOCu3bd95pVPw6E6e7+SO2jah16UTaucylQHl3e+ZnHyIT70IiBIGCrjNktFWqkK
	 Mm20yCO48w8UKvHuvDwxj47JYt5rx1wRYo3QPZeJhgOqNJ8kCffu8C8KkiuEfJ2cSl
	 OSPzXPkiuMMyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6ACCEACF0
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780415363.29271.12150430668252066436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e3499476e9581d4cf036b28c5ec7bf89920900cc08cd88068931ecf335ca3f7
Date: Tue, 01 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727804153
