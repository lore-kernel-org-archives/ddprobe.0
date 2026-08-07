Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3899A31F985
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786130434; cv=none; b=qKds9JCtiVxAE1TkAUVcBpPMYEMs7MCEscRxwR0SS4bqjh1yy+xvGtlRGfgqiStOPJitC/7LhEj4iQaj01f79pim/wmelJu1VnEULooTC4e/lzD+Ivt//gar/Hl5tsLdfPbEk2oFY63H0kNd+YK4qmyRk2TXvRWaNBL2w+1gjrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786130434; c=relaxed/simple;
	bh=i7zOuvNQBHY/v6lI4SeW/n82U/o4g8o5hDWL3AenM1g=;
	h=To:Subject:From:Message-Id:Date; b=ncQ9UBd3gJDyiBdzgESOE2zBIlffDLGETin6AhNqQNpUXdwCxf8gXTVACO3WdzuNWIR5HWRJ4ulq1Fn6Gto53sczguLfGjUcz1rrKIAt15dQveOU6lA7A87JsCZCQih7cDvC9b6IY8UbXYzXTEipyh9TRuW7GXv7ew7/c8wzl5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Um3DuTGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Um3DuTGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E70C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786130433;
	bh=i7zOuvNQBHY/v6lI4SeW/n82U/o4g8o5hDWL3AenM1g=;
	h=To:Subject:From:Date:From;
	b=Um3DuTGb92WSWvJwDSgv1rQS5uDzT4pMd2IkP3mgSaoOeVaYIaC5sRW+lWNj2BHz1
	 tAU2543NUGbBFUfLH11kvH8W83+c1Jap62NII68YKyrojoHf4mGgeuP0d2kca66KdB
	 /zX55Mm/icmXbgnUBFAcC1RrZH/pqpahGblqrh6vDb/OKjjfUqaEWHzZFH0gMd1jXj
	 JzvQ1WexYDMMYx2aH4I6IwSIWfE666lT+Fzft8/8Y7tGxdkdFy1Gyg0qDoiM8XNaRJ
	 cdWXVs29fLlk+EhjAX8ZQnl3c3iy5X8n78uhbX7a+nGmAylyk7svzP75Wa/jqhxQLG
	 IRf0SxUNsQi5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DB4C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613043369.19576.8453466122628892095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f965431dc21121c6438e24b2ee027613d5a89372e87708b9ba608fd17b2c164d
Date: Fri, 07 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786130433
