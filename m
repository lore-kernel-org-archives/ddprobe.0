Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C43E60B8A
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751434795; cv=none; b=uAm87GNcVFvEDfYNVOiBv2s/bjNWe5jrC4cQ93SHwKNXgbIPZEfUnkf6431DmnfoGe8MTK4u72ZBDN2gcY7YLOBj7lZDuKzN66ngiom+9xyLy0iGgUvJBEVzPjL06r3lxnVM5sEu9wtbkL1JMjN5wZo6YLQ1ov1bjEsM27dwr38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751434795; c=relaxed/simple;
	bh=SiNKIYV1zsj0F0DNCCFPb6HhgQqGvG4ZFbrf5HhRvE4=;
	h=To:Subject:From:Message-Id:Date; b=LCgXZ83i1jySaeK0VQoXlGfl/jvmEYbtf1JSDCx0nBQpNnF8Wxzp6+GbXevxq51Jy1fOQwYQgTVve0nxyfS3iI5zGhLOPJ8zxd1BHFiRp9Zt+vsCZLnXXW2lW8tgTTy7+/lZ05jfpqxvX73LYLBCyu8D82zBNI6AvA63pmRp0xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkHOqA+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkHOqA+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39EDC4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751434793;
	bh=SiNKIYV1zsj0F0DNCCFPb6HhgQqGvG4ZFbrf5HhRvE4=;
	h=To:Subject:From:Date:From;
	b=XkHOqA+xTiB8vR5q0xlzaQv8xhGEcYTAuFo0TtXBDXlJy1Grn/cYpDmhoqyFOXhBc
	 BNboZFofU2djDSAHc7FVOVefC5bNbqyi3CGjaHWpuk1YgZIhw/h2q7RFN8s8B7HjYu
	 jx/wq3c/j4qHyky//F3tqMRpmZF8jWvkK6qTJbVtkvmdVmsHbo802eJAm8c2FNZuLJ
	 0hYbYyp/GcQil+fnsMnO+b9LZOGWbgE5gJAWw6xR+RRnBHMTfUsUl9ayKZwYrZusV8
	 0ROuCChIGc3nXlJ0PPOi1745cNP2oF3ptHMylDMp+nnCwv8LlY5k+yxOp+MfSFR3gw
	 TftPQ4IFOJssQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0769C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143479363.4362.2288078698351738637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5537f9c79421b598122301452002386231801d90a452efaf5bbcf2c49a4f8862
Date: Wed, 02 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751434793
