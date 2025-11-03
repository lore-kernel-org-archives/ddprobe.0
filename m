Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187CF2E7F29
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762165194; cv=none; b=X4SkX1jl+vd+h5iGzTLYbu0BxcODhkbZfsNC2qiOdmin4nF2BXJNFB/Y7nIngp7nGduoBXbdz6OMa5HbNtvWjJ5+k6FFCnNf+H2dpv+ntjMUoTGirOiw/pK2m3DIm/KLgeN7o1/LudpCYidiEjtrxZtjOyim6hMPITFsl8yvUqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762165194; c=relaxed/simple;
	bh=kQN5m4vGyZf+eHF7FGX4O3KRQmOPJfaqywt8dl+bsyI=;
	h=To:Subject:From:Message-Id:Date; b=hHH+Gbo6rit2cEjpSaHZXXiQfPa9OCINWs79BihAI+eZk7iOILvDqY+xQolFd3OeOnb4G9Y1yDKKkHJ0f4x1s9DshjT4sQzO1BxSRo7uYwJG3BLaSMcJN5VnwxmeE3FWBXgf0oJWv2DZ+xFIt5RQyw51XzAgszSt5KTHk1BMNBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DniRSWRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DniRSWRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4078C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762165193;
	bh=kQN5m4vGyZf+eHF7FGX4O3KRQmOPJfaqywt8dl+bsyI=;
	h=To:Subject:From:Date:From;
	b=DniRSWROvdl2gGlo9JkZNhFvO+ZPaVRAQTKKp0ZJokVXWwfNOnOu6D0GIOx2AS1P8
	 Mac5Ro0/HxPrP9SQvN+pJTwUNUW/7T0M4yi9fp9udsopEN+Gr8oqTqyqr4fVkBgKMH
	 qFIxTlg+tf7rq9HcbjOZDnA9vYuMkVvSo3epY7PKi3pe2GXkOZK5tpY+1XkEJlPHA+
	 n425X4GbjPymafLJ04nEHcx2qIcoKItu5S9kcBONufpusNuyy6z942nTTQvhoNgX1m
	 XxuNvFcbuT+lb3Bfg7HanPKl7qmLa20ASUY9g9zQ2ZwUemQSPzbqWPbuFWfqmHN55V
	 d6rC73gPbQi0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C06CCFA04
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216519358.30587.12779824870484119156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7eace2d6f7519588738006055466c0505e2a7d0eb4e4e35edb48864a0fb3c9
Date: Mon, 03 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762165193
