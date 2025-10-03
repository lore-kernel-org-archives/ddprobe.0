Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E067A26E16F
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759491594; cv=none; b=N7GirlDZhzuksIlxCJHfs2D2ZW6lEoioR2ggYllQuAuclNVE/muUUh27BV90JLT5pkuckCz8vvkFTifO/GbBY40sGumVwe81/XaCZZrlu6Hff3vDcvuX1DBJVCJbBDMZuwJQJNrLcaXCvo54b18qAtOAMzAe+5wJxCQmQnyIAI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759491594; c=relaxed/simple;
	bh=m/MHcnhnBdkflv5NZWAOLAG6SCkKk5kysZ9DeOgHW14=;
	h=To:Subject:From:Message-Id:Date; b=bbQbG3mSMckYw+NljcCWy1up5zff4hTHx+WZ3lVJwatyXsimbB/inmj1JM1iz3uVrSRUcvLwlBIl+6prGaLSOSxn5ekwxZJzrVSwtrz/xmuFKAXnYL5pcQTzHEVaAbncgNwQZCc+bFjCFVgZgwBR9vLxQKpVoGWvxokldcZODy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWcC50n9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWcC50n9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39E1C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759491593;
	bh=m/MHcnhnBdkflv5NZWAOLAG6SCkKk5kysZ9DeOgHW14=;
	h=To:Subject:From:Date:From;
	b=kWcC50n9t7qOFokUCFN2tcbtuUmhotpyj+vsz+SqKsXgRkNWHSfRI3zHRhpen3Alv
	 XHYQ7052Qa4AjX9Ea5pmB0fQ8FC40WvKTPgk4Oi3Q9euwhWuj+bSIXMN5Y7PCrknbm
	 nc9F2rc6xevDnysrh5iREBNGwDTF5v7Skw+PjRfNIh0nPiyInR/N9s4oekrDtVdbmu
	 65Z4j+mjjr5KDova/8tT7LMSLhkAtfdOhVlE/lsWTXZPHWATQ65VQtMAQufktWTzrB
	 HWGaerdoz7lVmPlV7Jchp7rdRX2OJqWVrUetK5c/hUC+I2xpzIDGTNp9MfE2om6Rzo
	 to+v5zwZgosmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926E2CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949159359.26626.16507906529274838019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80fe649d8eb03a023ddba9a036badd6c71e34ac114800e6536f908317e8f339
Date: Fri, 03 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759491593
