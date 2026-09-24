Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1DB346E59
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790241034; cv=none; b=DX3/bVv9DYllaXjLfSr9+aY+cYnw7Oq2LSmvdZdzSR4wry7oSnPa92X8Z8kJahxkpojiURcgTVEZxMLKJAHnkznlFDHRVJnpuga9svNOTUPRk+MzzfrdcBXIH2tSgX9296V5BuHjpAqoG5o67qGelvtRlndkBuXrcn6Z62wofjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790241034; c=relaxed/simple;
	bh=xOmQ3humTodrZn6/fUL1FmLPQXU7cC+4Q1QYv9QLBNc=;
	h=To:Subject:From:Message-Id:Date; b=Rb/IBjHlVe01eK/TNChz9x8BrCtrwDwbG4wcIcxztH/pXBW6SYU3xp5cDy1QBSsrgI0b+jbGVvgra8bVNIlzCyaZaAPfr42xrLom/jI8IZEeUUxKILD1+Dfy/lzCaB9SgROlzYPuQcipRLLWYp8LlhnOPyTGMYJabo1y2iH7uAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gsqi0qXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gsqi0qXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C261CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790241033;
	bh=xOmQ3humTodrZn6/fUL1FmLPQXU7cC+4Q1QYv9QLBNc=;
	h=To:Subject:From:Date:From;
	b=Gsqi0qXNYfyfZrRUriNTIgugCYi4QJSRtAwDvmDg+XnxuVv79YB7vicotoL7Qn6q2
	 kDPoDdCVFaGG84bNuS2P2Xbuda52a+6/dV+6siJKM78kM9E0mLxVILvILQGmEigTLI
	 djLVy+uYl1/krujNmOBS/eZDqlFXzsOAoysHAaDPT1KtQUiPOgLFGxCdVlyDUkHQPx
	 mKcOinQn/TDuTaEJmnSeux6XMzvBUYvvqrqsxTtlt5+PNRoZTJDIYVMWT5hst/+ZUZ
	 93X/hhGd7lRs0UKgcv7cbAgyGJkLsvCKbaLBbcF6Qx/6Z0A84qaXVmCZNJupqw3s9v
	 2lNySyrjAiLOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE76DC98311
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024103370.3632.2504914302393734849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e0b0f5e033977c642b0019cdc537e69ceef024ae450abb0f26b59c2c21cd2f
Date: Thu, 24 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790241033
