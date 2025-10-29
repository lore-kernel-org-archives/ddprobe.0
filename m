Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2716E22A4E1
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761724794; cv=none; b=Bwf/Ybc3r15R07FmzXUi0X1wuHRkBuQOUDk3zIpcH+GRB8Jm4Aqip4hM6tYdh9jYWo3H9XyJtq4AC10WUdi8RVvvhQrXNI5tvbeCl/jq7l6vLzf5BpOhjp6jsj4jphqyq/SKZcnTnse2KJbvbf4+qCMlol56Jaik57MQozi4kzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761724794; c=relaxed/simple;
	bh=uhsN0PhCefO6+0yQitWts6gstC4YChwpeCCBV6FoT5Q=;
	h=To:Subject:From:Message-Id:Date; b=Jlm8KUjpipPCdOUvWwi66MKKFckeGfEFHkc1gx/NOXSe8Civ2dUDr9dwUg349r+tIvWb497SvmenK1/h3xBSNUcyevfx2aF7oha3ZXmZDgBWx3MmG+JEmlmqQwXgQMvo5cnbBWI+3rNXqR/iVxt0dgAgct9XTyn6kAyhPFeIoCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGfNrwHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGfNrwHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8657C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761724793;
	bh=uhsN0PhCefO6+0yQitWts6gstC4YChwpeCCBV6FoT5Q=;
	h=To:Subject:From:Date:From;
	b=IGfNrwHsQNgp7ICgrVh+nkFPk8TzuOyptAGLYx9/8oLi+VPI6zfMlzVpDH5wOSRCs
	 N+2YSwqnMN1ODbYml1QC6lcyES02ioGXNT+yCvbK/i5F65Oh9dBCQRO9q/h7xfUDk/
	 3r4pSK+AQal+w829UCeYBzZKB2yLjQsK1uznhGKlbBs29tDEoVxE67kzEyUB2rqTKM
	 tp5HA9EDGazK9s0TxHiPn4QD9nOJFcaHEQOcIxGKAowArhYoeMUceuFIXgTkt0n8mQ
	 k4Ot8eWtPpiqNCsPlFBJrHEjuIEUiQQV6EjDiTvDCv1a3/LWX7B0nFtAIbCteFB8LA
	 shelYEmJFGvtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957E8CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172479360.23579.2484475798564994805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab0fcaddd3a846f6e6a0320f1dc1a4b39fc738f833a2e56070da66e3931fa82
Date: Wed, 29 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761724793
