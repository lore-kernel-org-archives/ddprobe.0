Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1217B33F3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754545794; cv=none; b=oiTHQBwJkikxWyCAaSbxFZaOE/20al4oNjgSIZq2TpzvokES0sklTyYwesmOjp3K2ffKuZTbiWFoiR67AvgwkVdfb4BlCFlvzUyAnrH+izvYzWan0oqBLrUsHs9lYbM8FAse8UBE9xEs1xjG5znv/L87MC8dMZuEFVgd+I9tuTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754545794; c=relaxed/simple;
	bh=JAn2SbhoEVn89MobePO3kV4BKME48Au03gAXF2tTjok=;
	h=To:Subject:From:Message-Id:Date; b=uaXc4L087u97UL/e/c0YJeNjl9Tj4TSxXecjPe+lrgmmwyu/NRco2jO4lUHIYRrSiMhJexjzRPSYIllVt1086jzqaio9iOVe7gmsFNprq1LXbAtb0UXV3g3/nYIIS1fKdjh7bznXILrJ04ZgM15EKnLYlQfJBB2/iTuiBBoD4Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ub0sRQ1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ub0sRQ1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF25C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754545793;
	bh=JAn2SbhoEVn89MobePO3kV4BKME48Au03gAXF2tTjok=;
	h=To:Subject:From:Date:From;
	b=Ub0sRQ1TJPcGA3rm7+mjHIwj8FDr1cEH9Lfl5nyuHRqG3zxUeJtOTWkYkdRUud3Yo
	 MDKpGJE06XeRC5p9lv+008lkwOC81WsNGCaSlb7hcD9G37c6qO+L4HgQnUyalB7f4T
	 TbGkOwEJwwslf3hnSUISbx/A5YwDi49c7MtSg2vBLMBgOb7UUZ0ZardLDLVtgDhxhw
	 MyyAkEth7MwsCv81/cCmZnhnOpghcEBFB4cy55So6ax4D/5yZzx8NKwdN8CYAAgf+P
	 DFx6OTnbMnDz9KYr5fp3jtZ0WcIVGzpfVd7Y49PanAubGExmw/vO7OfzU5fsVGkFyM
	 Z3rAV1DTYcTAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A6C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454579358.24134.4643492257298537066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e7cbf75e08dadb15daa79b2698aa678206e1526bd4964640809ddb9f9816df1
Date: Thu, 07 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754545793
