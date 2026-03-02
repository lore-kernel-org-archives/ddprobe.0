Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E801277035
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772475894; cv=none; b=Y+QHBTWipB59McqpAlNvZnABOt7pd8R/t+OP3kUjp0k+eN8PocO/KyMy+JoH5ufT8CK9THRm9CthixbcSA+ilrydqnGpgiCJyUFCxI+bQlHHhbwZt1eV9TbdjuJF0Ldp0ZQJlSo9gdgwHs9Mf5oT5TAzoqqMzNl/x1XFq7E7gdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772475894; c=relaxed/simple;
	bh=zNyAQwiqCWg9jv0KiivOeO+/05ZxgnDGeg+Pxaq6qUU=;
	h=To:Subject:From:Message-Id:Date; b=OiDPHP9R60pRWogNVTXqwlUNdY4MUDyNQorBixG5jNJP/CFYxNacrLl+69HBCuiq159yVZuYsavGHfntknnH4Nh85htmziGKF9UVNM6whhJU9CWDu04weiJQalSKuBln3XnUp5TGrPWU6S4pw4O6ecwrwXcLmFQgELoZebTq3o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EF1ATbg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EF1ATbg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CEDC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772475893;
	bh=zNyAQwiqCWg9jv0KiivOeO+/05ZxgnDGeg+Pxaq6qUU=;
	h=To:Subject:From:Date:From;
	b=EF1ATbg35jP0PbrkgWZgY0Q4QfcIectrsfF++eZpZ5qJ+XYEBStJgDEtNphusnDjk
	 8tMPPtZSrrAXdVTSR8UzUg/07Uk1I4a0pVTNmXUlQaKLZjpIYfk/Leh12KV3c6CvgR
	 vqBJT4mV1ZuDf9OSA1TZwGFIekpKb1YbBPbiUYX/6bQ8U95jwb7tDsgtjv4SIMvOCm
	 D0H5NUqEfPpeBteMhv5HwzDx8RG1sc2dC/ZX+v0upwAIGRZGvFgQ6JLjkQiinLaP79
	 3eed51+wDwtb5LDZ9m5kWgmdh7BpeRP0hj8Ww5lEuTO0aQ35ijeBf0qxDbA4I46Sab
	 g7OBRGvR4f05Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F37CEB3624
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247589362.27598.12060567111195754168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 040678a3f6e319f051f4aace0c1bcaefa29a447afc3406f466b1ca5b92fc08df
Date: Mon, 02 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772475893
