Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2502CA8
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753317594; cv=none; b=GFUNuv6EurorXN9NAvWsEasiim05mFOFsnfEEOCgbOjIQilzHhtIqW7cmxZL6rUpGbNYeB59qzrG+xTkKMSkinQrCY3WZfB0fc13ks57turA2xR7/0jVnA9mz7+FxPpj4l5R/MobR7+hivWEP5w9JU21E9aLryfKnWBP2KWE9O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753317594; c=relaxed/simple;
	bh=fediq/KHUb91QbUJPB9sQlrQYa6ksLhzEPkl2L7CzB4=;
	h=To:Subject:From:Message-Id:Date; b=Ujf7DNqsChjb26YPzW8cT3ii5p90QtPmsUcqvbZ9FtIjBq7CPqTe8DxSNbKxKNR9e/wqZ2XdAvkkQX0BdwqxkoXmf38BtoN+EJfIxlcELNkTeCkWX4wS4BOmp+g/wt8sG2T4DQ8W0r1FQLG4wHSrNsvHlVKnsXX/XhRd/Q1wRcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iy32HolR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iy32HolR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36D2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753317593;
	bh=fediq/KHUb91QbUJPB9sQlrQYa6ksLhzEPkl2L7CzB4=;
	h=To:Subject:From:Date:From;
	b=Iy32HolR1Aun0DRDh59HOHYtAc+2BeB19d+pk13hqOycNf5eQhciPr+h8KODBq1cM
	 1+8tXCwAnY89z56Bu4FZYBwIQZ6smQGVaQVlOWqF/IAPun+yV9/Wt9Abq6lWfdCpWu
	 c2qDgj0iuH0W0jSHJdTNSNCQKAmDj72g23O87B8RXdnGHm3xSMOW5AMukf6oPzdavP
	 xQPGoIDRTLvIcgYTjOz/x/J7vWJbjpVF5PYSpyAKPugUfErTHWyQiz4peJsrbOH/n8
	 543hdJ/2WBjEN7AP0s8OC5guHwzKMU0OZ1/UiX6Gq1+8y1Ox8EJSehSP+QjmcEbbed
	 YkxhvVZ3M2Xdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FCC83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331759357.19384.15615027718141899732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c48a9c4d0647d041e8936b66161c8ab7fe0f43eb77e7bd5489cd0696b04906b
Date: Thu, 24 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753317593
