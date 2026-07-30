Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E51134D385
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785376234; cv=none; b=pNOWF75CpoWz0w1B5ggnH/j8+2jqIr7XaEBxf50FX05WG1jS/Mpmmu6EMIhqTBErkra2pJuIK149yZZe8Us1pe/iHqGYJHfh0G2x2b4OdSoCKYfKntKjNF8GfpBC65+YsNE1O7JBnR2JNzpW7wX8zkgpDngyTlL2wvqF75M0/Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785376234; c=relaxed/simple;
	bh=KS/81KOQ8/pHh4TIozd7eI5j44QBjJz5GSGYQjm6eSA=;
	h=To:Subject:From:Message-Id:Date; b=C/SRz+nn9OsVNCop+z1EbRKb0ZA+MA+5jwOwMILVDQgZky89fvyCQse0pf/DbqePVsmc4ontueSlUmGetp7jjsYtWlQGQVAvCDOh49h6tt7CluYg1IGuytORR8+Vr/8KoTyWod3/EzPjcJh7s2FqDzJtLDncEm4B2KQ5IYdvCLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgZm+4jt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgZm+4jt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB814C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785376233;
	bh=KS/81KOQ8/pHh4TIozd7eI5j44QBjJz5GSGYQjm6eSA=;
	h=To:Subject:From:Date:From;
	b=EgZm+4jt60qZwnQMdomBQKC4vSDq0aUCMZ3uDYqX3z1dhOPCQ6Nc3z6Yw4jb5lpHg
	 hk/F9pMSEj6iwHYGZOUxKngUkyas9pE2hmhgOgWMiMI4KoocZL3ia4FSrxWLh4PWEE
	 Kn19xXi4q2zT0x9Y6qF980fZ7FfwWlzGY3RhQj24D2fN+1rZ89BCTHLZyk0c4nJJV+
	 xuYOX3QKPQvqM4gdeYdhhug++Xf+OZv5rPz/bKveWkeS/q1V0dfMk9XZkMPoPcVwJ9
	 TkfGKtqIBeb9WxKsdpu9e0MemYp8HwYOqvnHgr47R2XwOQiuB2vCDc+STOdzNGaLF0
	 /4WoFC6al4eVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9255C55160
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537623368.18843.18234687726374078711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e334cd51c65192fa2349dcadbb0dfb30407b3fd240d5d0485b47f7070e9f84
Date: Thu, 30 Jul 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785376233
