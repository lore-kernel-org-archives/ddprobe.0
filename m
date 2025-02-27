Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CE6230D11
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740664734; cv=none; b=Dk30UYHhL3NJvO10Po29cnz/GixHXlHgKhcvxzRIG+pJ6XjDHtH4dR9Ua664DE8b8fSEOOWOEJwNWoEG4u6832lMYb2y8+tuDhbSZCOlib/DlivQ6O1a3x39JmmlmCVUeVpDzzU+MI4J0k8i2rhxtwmGXLnc+/UCZWlvABOfmWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740664734; c=relaxed/simple;
	bh=7gh2Ht07uigIKFiv5XQl+e+v3OqKQDZplAqrR4QrJIs=;
	h=To:Subject:From:Message-Id:Date; b=aAfmwDjmsIIXnCDAHwrhXvWjwXcvcfldOrBuXw6IMJ7nsXvSwqNm/CwpKrpsQ3LOby9qYnpp60a9Xvj6vpcgdvGbdi6rv8FbJ8xcIXdKVmrpXlFsCGOYbe8RoLnCdAOutaezXfpJ8tARdQMeHurgvsVUK+qXcYQcz5Koi1/Bvso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcK+FRgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcK+FRgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9E5C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740664733;
	bh=7gh2Ht07uigIKFiv5XQl+e+v3OqKQDZplAqrR4QrJIs=;
	h=To:Subject:From:Date:From;
	b=tcK+FRgLQFZrafIhxUL8vru1ytIJeLNZelGzmYWT/BkVUOm1p+eRcEJMPtZcRS2qD
	 ivNuiiSQRxBrzCX88/qc/aJsEr4r11Kv/2POjiliYk8Q/GIkhglnIZlcj3mtMMIvNw
	 21SOx4mh2tcvbY0B6kk72jHzU3siqJHnYCIgTLax0PC8x3yt8Zmd2sgQSvOD1K+NLr
	 PPL1YFquJEnd+Nx3ZINyOqA0oGNW8YC3xOP/TEQ0QSXR50RtHVEfA43GK3jHiNV8nP
	 K9im/129E7tY0Izy8ruSuFEuw+nWK6ggSZKgazC+CBCXf6f9YgjkA1lgfe8clQ7qVK
	 3w7Mm1BuCI7TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9045C19F32
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174066473368.15492.5393176710834623319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22920c0483bcc11a208019436dac0cf8465d99ce5ca7d543ccb81c72ac3da857
Date: Thu, 27 Feb 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740664733
