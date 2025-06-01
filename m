Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C9F10A1F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748764794; cv=none; b=NtXsYmpuLJ81qq0Wi4Ete7RgwPSXpdV3P0rm1/Jr56uMIRTQoNvard6nOYFdIbfFAkIj3M6/+LaJP+HBDKbLvL72dfoZBwR8DKWKqye8njoAo3iLGTOktEKxY1d9S6jD5o6Od3vmE1WNHU1Ke5MXatIs6lOgtEs+zGzetDsoPC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748764794; c=relaxed/simple;
	bh=04pXd2biUWl51bTI/t0GCURNv3J28pIpsrSOst1QT8o=;
	h=To:Subject:From:Message-Id:Date; b=gNzdvlZ7g6cV7HnhvX6txJPDVe2If2biYZIWaIhtrqGF7IwnD78YdKnDtmNaPWgu7OT/QC2VMrvGB5bRwAZfIFp/ncPHhAzpyTYHWfIiUq+S+rM7ZLdIXOe8n1FVA3ndxBu+LQMdPMVxYGpX2lDzACvl01fEom0qtpajXqlSy3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmWFPRv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmWFPRv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8588C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748764793;
	bh=04pXd2biUWl51bTI/t0GCURNv3J28pIpsrSOst1QT8o=;
	h=To:Subject:From:Date:From;
	b=HmWFPRv2PDX5ygtvvpdd+LPG965LY6/mXdekfCTmAIpT07D0HD8v2/XpQNwV/6yhA
	 Jz+0vhR9dprMmfj/rzBQ7X0quRtiE/xehPiKoZz3EYHh0fnDcY/tVfYpIb0ezskJdV
	 24Q3dqTeLnZvyYsiLO/pktFXifXAbq5MgBHzak+LNOy0A+z4zMC7dO0MLAH93jTdJ2
	 Ji4jIWD9Ag/iqpIPW6cPIBkA4FjXYh2pbp+8UX29gBGVClTPboSbyj+XvBCS1imAJG
	 Lbbrj1oSJ5I87VFde1W90uP5gQ9dxf2O9zdYtDGn8a6qMiP3v+6VGkOobKV4RVwVXf
	 nsDnI9at/A/+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956B3C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876479357.19429.13381270841558516226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7013f38862a15856eac34e34c2ca8f3342772d3d85a21670c3e99e2614f0ab5b
Date: Sun, 01 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748764793
