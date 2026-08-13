Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5183323395F
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786591834; cv=none; b=kiCDl2car3I83n2kOP3/a5JRqEKHccXtgdnWSikIxkCHNcfKIEb2G9bNHn5jeYfUpgGGXVpR4sMUtHkTb1LnI7lVcRmB3JonAxT8I/M+awg8Jh7zJxdtgjkVQwkPbQkra9VWadZuAwqOdnM/tJHQFYQlvYcdw94EjFHHyeTuGWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786591834; c=relaxed/simple;
	bh=CgF2nIWcOUvjZOc5/Z0tG/BSMoaXjQ2xAv0My22JvvQ=;
	h=To:Subject:From:Message-Id:Date; b=etDgqAqEhqthkEMQNzW9Wd1q1agQGutxs8dKscrOG7roVVHnO5L2PmYIiZibDTGXqQ9T2YtT9tB6bcgnuG0nVMHoXv0wuFO0l5eoidfx1dnYqqVvNgGrkurGlk9DXilNHIY8oX2ccRi6x8SSHuL2i13FbUzP4KnmvB4XhTRF9+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmM34kx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmM34kx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F21C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786591833;
	bh=CgF2nIWcOUvjZOc5/Z0tG/BSMoaXjQ2xAv0My22JvvQ=;
	h=To:Subject:From:Date:From;
	b=jmM34kx0iCgPLdTvz62/j6vU4M4Mcw8g417fmnDK6gD13TjNUtReAN1skc3L/pXyM
	 MUpNDMa08RqG+Wq1QHDJ2LdQpOrqiQ/9dgs5gw/4X2HLrTuL1vT0/MnArC1dNJScav
	 I3sihSdJc6hgXpWYstUf8iVth2Asp8FAlL+6WJeSV2FZD7OFy5f+zvFccwzI1PlKsC
	 2g247LtS8Gs6/btRqFj2fpBjs84s4w8Ote5zT962nL0hT1fYXBnFEb970xJOjxfTEc
	 j8OqeQJSb0tzIieptJyCkBJTHPD7n6wUqELSGTQMMBKlmgmqAdZ+8XOoAmyM+wsAhs
	 vEwMyQ0Httlfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE17C5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659183370.10127.4816503475569966870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca85fcfa5fdec77dd15d1540ee7760d8ad49b7d4ebcf861053c88d5be58a95cd
Date: Thu, 13 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786591833
