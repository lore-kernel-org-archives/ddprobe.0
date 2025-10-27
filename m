Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8872DCC1C
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761546594; cv=none; b=kmi45A2utXijAUh6M6oBw4tWMq0K+M1S6xUbUu8nMlditS/MG2sIP9zv6OoKsNLfqmgK16/1TMsvbZ0Im/ycMwOcmqAnwooTrOxtzKlMfEPKt4Bh4FqBjIjk3JJrPiuhNkWO61hZmq8Zoej4YZWjvkjhFEbGxXfq8lHeYOnCHC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761546594; c=relaxed/simple;
	bh=ZH6qizm0lSOjZTPOg39yU0onM0OOWuS2Kf7caI9Oz8Y=;
	h=To:Subject:From:Message-Id:Date; b=s63+3aKgFd8SMNya0xWYvOPBuqk061tXoAZuC+CiVCWigBgH4RHg7tpqP5qpGqVFN+YKzsXMjtHaBP1DUjejDuxqYN6iBz0X7SJ6EtbIr3Y+sYpbq/RUhgOHpLdXfl5IbPfl9KcAiM2KdKop8se4HSViSKRKZ+fPhivJ1DFFhgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZn0ZGDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZn0ZGDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F04C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761546593;
	bh=ZH6qizm0lSOjZTPOg39yU0onM0OOWuS2Kf7caI9Oz8Y=;
	h=To:Subject:From:Date:From;
	b=mZn0ZGDJ3dlgTaH0o7Ia4Lj2pAWm4olYf3HVoemd2ws0VCw+3Mp7dr1sNZ3xnyPf/
	 gNUgv9Do4J7bIOUcTycM5yuHJRcvHSdFMzfTi3gt+MIjpEM3ldiWdo5+gtjhgDpVX9
	 ErLzltBLl0xewPTgSzzNmmpwqu9tLvNQj1jh6FFWpdr+uP6fO6dFeGGKx97BbbS8Ue
	 sxm6DO5hgC+M+zeumqQ2NmVkv58bVrkaM+5FRuNLZNh2mlgcbf40Tduie2kqg8RiTz
	 HB0CsWtOPgVPOshhvcoVyw1aUxmNU4EOdjpcOKEDgFkvT+yWLy7aW27YCCIx49YK5X
	 jLidFL/gdIniw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D0CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154659357.26714.4001407382247037363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725c52073e010a869ab27a7c4929230f4032b744e400262b3bfaad8ac62112a0
Date: Mon, 27 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761546593
