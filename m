Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8AE1D5CC9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769628234; cv=none; b=KIygahwrlZJx77iT5pid88J3jyDzknGhldnarm9H0lXx4qKn+ulPwOxzOdxATrudkRTPTluywk+Lt52XgtAnv6ZJq6kqfvHzU96K8AOdkWxszHtZlEjSWe6yVsacPiOpUnE4BHpHb4UP+VqOM4/UCmWTnVuO0ZmGawG/rL4f9ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769628234; c=relaxed/simple;
	bh=6Lc/iTCrg158ajpvU7k1GmYhchiKv+yvtN9gI5DJTD4=;
	h=To:Subject:From:Message-Id:Date; b=YmIsp5L3N6QNLZLEyEKvQWuWR30rqxu7Nctzw+lEREksS0r4hYXcQkOwyGpt6hGRcDmpmsAWoa9yrWywY2lwUl2uMMw1zcorIfQsbdgl0VxJD9VHqiJ71mgLrXcZySz663i8k85aPBB+u9AYtzSSCWsnY16Qenncn7uL+exGZ+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHxeoyhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHxeoyhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0786C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769628233;
	bh=6Lc/iTCrg158ajpvU7k1GmYhchiKv+yvtN9gI5DJTD4=;
	h=To:Subject:From:Date:From;
	b=oHxeoyhy16wPR64/SAMeG9NpoEy6ubLR+a9SQszMla41x3b+uEwYzS6l+QYofBd3a
	 NmDCWI2vLkF66NBibz7RMpdCbSTkkO5A9O1Fzb4wzEPcDADGzu0WeO9hh0WMP+Lnwu
	 0EisFo7ZwaTvwStdB7KM9VHgcNsX6W5TeMECw8296Fv3jUrZQKM/8paRIEeP6T/pOH
	 Vg+Ojx4fihz+I55D02+oHndVXQdfgYihEvIoirj0OeAUd1+Jdte4cruYUP177o6cBN
	 ki2U6biQT7k1M/jvXC6skf2gHmZutal7VlbTBz3Q29oZqOOumgTnKfl4fqxyEYCI5m
	 CedxnFZ+puXpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E96D46BF5
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962823358.14588.5899342115082421285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cdf2deaa4bdc8fdbc8959dafe2afc2bce92112a699ea3b16c3493ec67f8b2d6
Date: Wed, 28 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769628233
