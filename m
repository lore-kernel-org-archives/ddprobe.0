Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0CC1BBBE5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763929914; cv=none; b=pK59Ckq3M6amOPD52SSaSBXTZhYvdkF+jj29lz/XzS6zKumLu56PYGz05RVMil8T2xZBQas4u+V9ji7rY8t0bgJ76XxPzaPhp+A7dakgwuxtmB+izn5xnzzS8JqruSO89Xe53Y6bqSn3GJDZQB+LX5FGu1YO1BUfTjkk7lviwW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763929914; c=relaxed/simple;
	bh=yg2RPgvaVePSN0JVctK+xMIOGoN93fXvLDBk8STMMsw=;
	h=To:Subject:From:Message-Id:Date; b=ppoLgJQx8w0uaFXBz0Uut1dDVlYAk0LWAIhSLIaZo382HdP7jMDXkZXQrPwNPd8NBL7Gb7vxlQTZxRSGfXoQaSHnT5iwrYHA0O2TVRfL2KZdiP8wDinxIANyuHRjgWxq8N41PL+lR1kE8gLetXe4/VievLbzNDht2mweZkbfg7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dq+iOuoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dq+iOuoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56C9C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763929913;
	bh=yg2RPgvaVePSN0JVctK+xMIOGoN93fXvLDBk8STMMsw=;
	h=To:Subject:From:Date:From;
	b=Dq+iOuoRoJ7qCB7iJcoWpHkIRt9nL8bVGDDFiSz+lra1e4DqZWdHGdRN2SAO9nWPd
	 suGalNs4Ms1pvTGFUGdIAW5U5DXj+MP/yo+FUqUdtqq3l/yi6L6FGCOX10vzNOCd9I
	 aV+HHCtb7QAz2D/NsbaKKuEydUWt1gAr5AvSYqcP3Qd9t/MxWc9kEjSYf3mddpcJNt
	 +E99x0jbwi4sRZqCzLFyjgzFkJdsYjYlJ4SOwakomFEnOq4P+5Tyfh/kJmSgznNqAT
	 KNJKKcBNbXU0KjEtmL8d5+12WQ9NPInjWvQTZ+1uROCZfS9KRzER/un/z0QbQN6RpS
	 prQHxjL8EFTkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC2CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392991358.10938.17269456931889953410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34be90f8d8b409c18ce7e943b903e885d823545df380c53e816f9ad4c195e0e2
Date: Sun, 23 Nov 2025 20:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763929913
