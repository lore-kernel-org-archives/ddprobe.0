Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338A35661
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745764794; cv=none; b=TKAyXtckNXOYaiSsew6J7lcRET+RBG3G++5Cel1dI2XhJSv3ADMjnNyuuxUAQcixVtsPNXKeJiThIKkBbrhaG8j1DfvqFhRxfD6UPu2gnfa9o/CwKBrNak8W9IiOjyUN0YRY5BgDmSl7G4CzHgL2vkrzL3y0O95UY2QgIX/3ilc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745764794; c=relaxed/simple;
	bh=qAuT6sQI7WbCPWqkp30ejRW0uwVumF6yfeTgekfdMjs=;
	h=To:Subject:From:Message-Id:Date; b=tasKOZWunWILxHJDAFLH0ED6VIVGkUVtkfG6wyGUL8Q0mohar4ypDG0Udk9+uW88SyAje4GlImank7snPtSVomPSNCBSmt4ekYfAdSb88MaPW3FEdMfO7CV6FU3aJf3fgvccGrBCPQL8YdSIChdm9sSyvuvKAnYQxqQoOMUW1AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCx4i9lr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCx4i9lr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D180C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745764793;
	bh=qAuT6sQI7WbCPWqkp30ejRW0uwVumF6yfeTgekfdMjs=;
	h=To:Subject:From:Date:From;
	b=qCx4i9lrRCoOxPE673Bp3GD9BKZby5rCIMmIPMwK6d+dYIoFbZDKSKeg+kT2yejn6
	 bBmkxNKMxJ5sgRwyu7NhXkuznru2Kp+sM3huGEtFyuz5yyAvrjllSKno5VgsXiRgbE
	 j5tBchH4P9H82Ss1RHVDXu/Tjp5rojBicggqMd6r8dGpubX8IjV2EZ1vHtrf2UVMl/
	 t8fvuTLsmMgEaRud8n9n76eZybKAL/F85mB2boUulBi2weZfIAz438X02BBwVEiAEX
	 NtAuibEcwSt5o0kB+xsX8R6RHlzOGlbBpFfbJOMFqDhepxLLo3rtbYmNPvgQpRhWqM
	 vZIy/5jFnfEFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4FDC369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576479357.18274.13189752391997224137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46516eba10498890c8a6f7bc9c01d066eb64b51b90c29cf46dacdbc736136cc6
Date: Sun, 27 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745764793
