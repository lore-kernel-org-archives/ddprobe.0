Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3681F2500C9
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732469154; cv=none; b=ouMVO7m/wV8cpv7ng5tPEaoNbL0UjpuybkacAxv8sjfTOfiM7GNovWuDQ2WF1SQktSM4WjsW3V1J4fvExyhJwtbsJAjeHkr+HYBguJbM1UJEu9EC9S2FpAe8XiYYb/lRXYt6kqhEF/PzvHB88AvcT6L9hjl02XS/AJoTYilG06E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732469154; c=relaxed/simple;
	bh=GyM0jJheX0Ny379tdhPwl0S8HzOVDjeAqHv3Grh1bNM=;
	h=To:Subject:From:Message-Id:Date; b=LC3uxiYwJCHkxRxzQgqtgBzmyloHMHvasfoKGIGFm3GiZo/XmvZl6psX4JanmLyobMFzGb7xcnfcDExsfP7IBOX+OZb71IOqTgaJD6GQC7e7JFI3EBbfk0mhK1oYgR+jpkLhO9iW6TgOARBXER/JXhaIU8IAYEQQOWMqmwR2rEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sw0DddBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sw0DddBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA012C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732469153;
	bh=GyM0jJheX0Ny379tdhPwl0S8HzOVDjeAqHv3Grh1bNM=;
	h=To:Subject:From:Date:From;
	b=Sw0DddBgiq4+PplW1qSm5tA7xVqmGctgcwpVqXZuW+lD+KKs5SLBHBMFBEcV4VBp6
	 PAJyP7fFFBwp2AA9w9YRgtm2d5fBmV4mR9ti+kvySQGmM7qYt5JuBnCHKnuXcPaEYQ
	 GpnF4Wjv7zmdLX+DWkJelW3l4Nr8BkJLLbYFZfYi+MXW1ZCmyhQ+OGRJxLJwEoZWqI
	 0q4hvnrKAo2IyWJaJkbU56bz9g8T2eRzjZ+deymFxftRCr0sfttjTsiu+5uD7acaR9
	 TFSmRYoqBXgLPFnUcLW/niZR3Sh39Pxgdk1llEP501eC32ndrD0VkZo8H/wI7v01Zv
	 85YT4iyYXsShw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97364D68BFD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173246915359.26848.17740568677254469980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a21f9d5989f02d356795509a28d7dd47a8ce97984eda9b1f46053e84a91472
Date: Sun, 24 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732469153
