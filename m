Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6E8318ED7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775860054; cv=none; b=tblzz+JrpdHTF72p5SR85MHLrjFrWGkjp4kKsDF+qlBiJJlgTWCbucAvfc+iDsjB4+ubSf2cdU1/pcPyiMrsZdK4jfHl7brc+3+tXF1J9TefpFgVkoT+jsmE+kjrQhOxYtgLgCfHruRiGTDtypuSChNcGKbuO+a08JLu7VpVkcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775860054; c=relaxed/simple;
	bh=66LbxCpP06ayUenxdutEOK56IZr5XNuJmbStKvSA7sI=;
	h=To:Subject:From:Message-Id:Date; b=pqX9QN0g2irZv8XjWz7tWoPLlwivm1fl3dEdaZV0aSzVMYDjPv0fKHAyS+/C+8RhctnlMySWA/DbmCPb7UQtkAxyzUFBenUXvCZjLXzpS/e7MV8lCtBFD6DGCP6vijpRPi9L5VIlKPjM6cBMjcPmGkDU0J+QzCYuhjBZnI97iR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRVktkb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRVktkb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DEFC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775860053;
	bh=66LbxCpP06ayUenxdutEOK56IZr5XNuJmbStKvSA7sI=;
	h=To:Subject:From:Date:From;
	b=YRVktkb6x2MItks67qaIqtyyoItEvdn3330HEP9a8FkneuUPi5wt8da5IHfUCzToi
	 HtRGlHQt7mG0Ox+v+IbR2BRVvsjmYiFJZ9eZliwei1lRmAT1WVAz0CbK9iJ1BsAA3s
	 KuKdKD+fZ+kp5Sl6BCYLl827AhOOFYIaxSAHKpLRozhzCpdJOLZUALFot/wWrbGss2
	 cktNxMdgkp6t3r3QAGskkKLl8MxAuTwNzCiGjT2LGcWLL2752ltHqnrz3lGmJoxEBi
	 MULUfC26vyTAG5/rnXYAMW2aFtp+e89WNtZ22KQwhRVmuFyhrxQ+bAO/ubCmdcwyoL
	 1qNaypnu3ksjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1311F45A0F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586005369.9665.5238592923625022710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955323deac5fdfca3c76d1544dcbb04064804f9d23107c3669d758dd4eaa1bc4
Date: Fri, 10 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775860053
