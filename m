Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14605217F2E
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762444794; cv=none; b=DFD2JCbEhDsd70mqqCVQ59AmwloKpTPPs9kHp7LGmN7T37opm0LWvdZLmVVqjukXsTbKPiiGtix9U+/8neGlP1XTVzYVQPDOJ2vLbLXu20ejCfWFeM/VwAajBwxoWXCfffv+o3JKzx4FVWnG0O4P0Lka5Y352bGzf2w85vy0dr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762444794; c=relaxed/simple;
	bh=SUK61dczllHmqCRhnDxljgl5J21eusRZN8FDZ6+2CgY=;
	h=To:Subject:From:Message-Id:Date; b=hD30gpPsA0zx/Y3/w7fuiobrBUOKu7vZ4DU4uGb23OlNmNwSvN1OFODIuEiu6MavpMvC5ySlmlX03kFTT8T2L4seeU38oiVGS6lwIJ8jB/zkCtpZDzLrcX+jIsTVtbFa0tvm+4tcux1PmZbMi2lBQx8v6dXHwyXGBlMUxFtUeVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9KfAo/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9KfAo/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FC2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762444793;
	bh=SUK61dczllHmqCRhnDxljgl5J21eusRZN8FDZ6+2CgY=;
	h=To:Subject:From:Date:From;
	b=G9KfAo/nEjpSeJij6Z4bmWb1QmAolVgbD1pFUi7dBj4jabAHqM4B9sDzBXXXvO4E0
	 CdTm7mfxLl/0migadiCHfhBzK2eAIjhqYHXSiRbajAxQoq3a3sqa/IUq1708+Tge9r
	 vZOxPEq16ypppmAGBapYJtLP75Edy9UlKaQAOj72uE4bshwYch5cMBEhQAMLu5Tqrs
	 1VJcPX0INizoc9wEO4lCkBBCNEHYttUCwA/0U36yz+coOH0cJfg9vmazcyiH2i/Jly
	 +8oAXZodXxaHGKyz+9UC8JiEH9JJgUlZrAMfycY1JV9RjJP+joGFLa0pItwoL+fBxw
	 Zl8HkjWJNJ6Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956FBCCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244479360.13565.8322107913967698879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 900edc00c1899eb665dbbb1ce3ba02a4d759b5c5cee7447f9433b410ac838932
Date: Thu, 06 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762444793
