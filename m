Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7BC3603C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785385234; cv=none; b=KQ4Oghw57cAve3st/tb2J+aHnByMgW2z5M8MkWPXltL0hW+roiZTJTuZharok7fbKC1A+9h+tjiLjIj3LnOL6Hn1g2y4QApfezcR4kkWPU9Bdhlh4fQqx+pjZE8DW8IUTYLpxTAH8kXvmo4wmd74Nw/RE27CXNphB440YUMIGSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785385234; c=relaxed/simple;
	bh=bn3P/HHqD1DxfiWIgE6CRc+fNERpNt0FsVnHF5Yi/eI=;
	h=To:Subject:From:Message-Id:Date; b=Uf6z+A/9U4BzNFf0gx8xWNrRFSXcIBaxY/16n8JBUh/nBmSFxCB1MpxOfVJgrUgb7w4AF42YbP8Y2mMEc6k3h6gxOCJRr3Kb9Wgow4A2uGAoRXfgnKdFaUkF2Zr4UlpV8O58vx06g8ge07uxSY8HSAX+uWv1xRxdwwf20tuMdsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hK2aShIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hK2aShIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01A3AC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785385234;
	bh=bn3P/HHqD1DxfiWIgE6CRc+fNERpNt0FsVnHF5Yi/eI=;
	h=To:Subject:From:Date:From;
	b=hK2aShIriqLHEYbyTdJpoX4CVYtwl2SYiGR2hmVgvC7Fb68PGTJ8Ajbb4tI4xJ2g2
	 LXI6mW7uOYw/kNndWBM8b/k/yn/NIdFG8dC58ptWPvREY/uXxQPTia/hiCRgCdl4Hv
	 Mm88+Erm/vVCGrzcnxeZ/qjmhrJRuj/nHAd9CcahNiz/tfQ0GVL8aOhX48LmrM5bLr
	 002PFx87c5tURrZxdOEfgerPJSqF1KytBBD21I74K4fuc3JkONHhHnywXv55ZT1yMw
	 srsJuWCCRJN6fWBiy9Bihu0kPWu8psjUtH7egB616bfYbVUOrPN3wd9Ydp9uAksXUv
	 S6dWEn6+iKQQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEC5C531D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538523382.32160.17349649349235884858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb794d7b0e0b5ac79b02bc8e0bd440129b6b0547cf3dc66aac6f85fc4de97246
Date: Thu, 30 Jul 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785385233
