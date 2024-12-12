Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1727FBA2
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733969754; cv=none; b=azE8vJ7lGRwXEezGegw6J9kZsbr3eh2b/COH1pdBTGotz+YVHWS5c+RkJ2nIL0R062UrOAjlb3DVVveJ1PrXmsEbQb79Qpnhy6D7AoNXl8QhMLMCq9bl4YgFHTsDOj0hEzWQOTo+YMMbuZsmQlHcXtQy2aaO4ILMiy3qE+SkWmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733969754; c=relaxed/simple;
	bh=+lw97yYTx5gD6uaDIdR9CY4Rs2KRMEXt7M1G5ejI20A=;
	h=To:Subject:From:Message-Id:Date; b=cW36VKfob6cJAMMC4TJRvvkKz6HEx6f366IlXd1cm2iBGieB0a/PcLTTtMFA6J2BrVi5IAL8vZeN2dis6cDbVyCkpPTft4LM4v3UoP5kkZZdMwvXgSAxd5VMArDRp2b10TxRUrcVDD5eSzYonFxUV7Y873v+by8ZyGTsXYSfaLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQLB65v+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQLB65v+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A7EC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733969753;
	bh=+lw97yYTx5gD6uaDIdR9CY4Rs2KRMEXt7M1G5ejI20A=;
	h=To:Subject:From:Date:From;
	b=LQLB65v+lhbcQr9P1SnH/v/gd6D7AkWR+IjCEZ3dJ587QLiBRRLoGSmhSgThoRi/o
	 yJ6UgJJMIcrM6nyMJNACWjwBlQlR+Y4tqt4S15wR8rFEi9djQ8OlY5oWWmwbF/pdJ1
	 TqyHiGnx+gtxKeu12bwipoZ1tk3vWpDp6Tj7ia0lkpEBkyrM8VJY3u4Bc4055HXfcw
	 gnDY8fpz6sX2p3SK0DXE5kXKQldPaUTpX/4hG1iTmZKgriP8yrFWu2XaPfQBjvIW18
	 neO28cNZuuiNgDpfRDan8NMe11Dvjm1LNgXFk/Hx7J/W/VXe+UCTYSsh+KJjB68O88
	 riMJKgUwNLc9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E9CE7717D
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173396975358.23467.7941271336487365966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb387326da086df9a46f2ea0999971a689d88c6c8ad3129a42da085804af72ec
Date: Thu, 12 Dec 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733969753
