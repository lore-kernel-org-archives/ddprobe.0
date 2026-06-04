Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5705B4ADDA8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780582474; cv=none; b=pRND/160INEEXuJOiAaFj0zbVnWDqLwVCIXfbNHtGhC+HEUtenUp2ocfVeB3pQFsWQx6T5frEvwHOtBibR8t2yXx7SyBo2iQlhjr6KwtRxTcdUfoHqvUxBvkFslobLAtDTEQi3ivU+F81nNlRuj1uSfhC8WOhMgAn90uq9HRUKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780582474; c=relaxed/simple;
	bh=mF8xnHNPHMEvVuofZnvwIN5icAApXw/d4GCx20x3ePY=;
	h=To:Subject:From:Message-Id:Date; b=OUY/xdHjREd4Xug4/a7H2wxSB7pQtukC0sXv/K+9zo6ANRb3zVuJHsQArSVotQjVmAMZzZxU3ow6FmMPN8jglTZxtAIAJ6D688QZEmizrjBSkGDWiAS0AjtChR54QCwYY+t9YCPP0OwCXJOM4CSmM8u/+TJJ6q1YJFA00hT7bEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9FV4ElI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9FV4ElI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E64C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780582473;
	bh=mF8xnHNPHMEvVuofZnvwIN5icAApXw/d4GCx20x3ePY=;
	h=To:Subject:From:Date:From;
	b=H9FV4ElIy+o4SU3vAepU1PZ9iOrgyNXASB3d46IL19xNLPtam+4aW36pp5uqDldwS
	 bYjFIbhzTC8fUHBhXDkfcutOwi84nInAv2rTbeOfVxFWLayGPnp+3rbESAs/ya3Iis
	 e+MRHDW+OgFwjSXzcVGgkxSsZ0ud5qXYuqGJrwmt4RaFGbsjk6VVWCFYV7H3CLzstq
	 MqjO8OJ22zr00/xxCB21nD0PC1+J57926xg37NW7b4fjJ6/sXSjWSSdb1bmpfA8mIV
	 pX90EqRnb9o9S7Y6GX9jOevLaG5AncRcVOap/FCsT9O5HOIbo/kXXEsYI25HXPrONG
	 U4XTKTPxtpfsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83A5CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058247374.28994.4347729641277059905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3faf683bf78121831adb9173b2d57e097fee87f76c656c27a7ff6a448ff1bb14
Date: Thu, 04 Jun 2026 14:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780582473
