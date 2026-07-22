Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2CD40F724
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784716114; cv=none; b=eAk/yMp6zoInx4bCk+/AUx+ww3BySBRjmmtAP+bgTmAqXqOO6dbINZfFsS+yytHwmSdoYub0BBxwWLDcIbgpF0hGt6/WnOvgBihRh/EOsurNYF3r2STS6i63tk7KnLitxDwIpvuMqvqFYCWZu1WrLkM3ShHZ7W5T7AJUdbSHXqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784716114; c=relaxed/simple;
	bh=F+X0/t/Ur1GI6PZNiOCtRwmSRAsNOpSlXlLXIAwqcqw=;
	h=To:Subject:From:Message-Id:Date; b=DxpVUVnIz0uzHpxYUsFF4lEYoSukMaSpZH3onk+XG92u/3FDPJzZMlrN8ODaUOsX6u5BbZI3/WEO0DmvD0N8caTsvxNOMTHKOpnh8iP7YQGo+1TiN+qZMQgvp+SavyPoVsJ8T8/C/8WgaY4ki9kNq/BGMibjsLE3vCQqA/ZfMX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBqe8q4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBqe8q4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07E81C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784716114;
	bh=F+X0/t/Ur1GI6PZNiOCtRwmSRAsNOpSlXlLXIAwqcqw=;
	h=To:Subject:From:Date:From;
	b=JBqe8q4U9oZvI2749XW4m9s576FqnN7Mqtdq/+5nIGz2mJW7X39BVBOBL7oqJ/VKC
	 Szya+S5FtPVpMe6rspkI9GRFAqt/P30ei7tB/G95wLoT7h8HmRmwWeZQa8q5I9CftI
	 sp0XaQdsUN9mDaph2oS8mK2AGfmv/UUnQLe2Tettmvp4+GvQvBv0zg/c+5SHHTUB7j
	 6iCrs3XPfJ9hTs3SoJsrd1zf6+xv0QbC8itehu7Wvp0e7nc2l5/YCelLAO77v0FUMZ
	 1Okt4d/GSMW9yBKBxTwWbch7ZR28bTpyjHecPLalxSmzGE/BCyBwtyuPeEBM5md6Qn
	 ooWGZsceiNDnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5520C44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471611379.2913.6971664202210870480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b58c4b2720fb1d96ab0f1e203204da29f44b14530caf6daadb16b0748641764
Date: Wed, 22 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784716113
