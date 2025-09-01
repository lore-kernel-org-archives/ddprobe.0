Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252601E2853
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756737594; cv=none; b=cXICT7NLQS1fncWR/O8a8Zn6nj+mdjsTSNNOGOoGQt0Ti4X2PXpwmCiSOChKZ8gzjUEG+zrbguKgHuJrU89Np5ewh7P3T8QxXwgZ96dcbZ1uwuxSq3N3M+HWmG/gZts9JZ4VQcwCvjSp8g0FZsrFzA5LEpi1+TgGUZKxqU3iGic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756737594; c=relaxed/simple;
	bh=XbAcpdrkvF83OPssRl3Z9kaZEDsCIxvetlrQXOtrTuE=;
	h=To:Subject:From:Message-Id:Date; b=nNIUfS41UKH0cwlzYn8FDQv9ENRplHx9oI/XWcor/oaK3c13iix1VrrdqNztF2VvzxtqS48bjoiMESk6Lzc05bxAfZCNF13pjRTQklv0VgZhx87lOMXoTDhtatRyItZ8CI+buKDhnhEO0G2MQZ5bUwxx/2HcWg4X/sRUr/LJYzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgo1x2hp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgo1x2hp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB728C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756737593;
	bh=XbAcpdrkvF83OPssRl3Z9kaZEDsCIxvetlrQXOtrTuE=;
	h=To:Subject:From:Date:From;
	b=bgo1x2hpddkwBZAHn9auYs8vbofrBbk/lofvVVq0K2Bbm0RT+Bp64YLLCvSXItevE
	 Y+8EomIBQe5dbB6mh3Xh24JXubru48wscL5+VJnHgYg4e2F6joR6ccgGpSQwE19v5i
	 Xq6rgeU3QobDReSMqLwVoVro3/2Ouq9oa+e4jc3upeAU9erbK69egKs/PUqDI7FK1i
	 yrZau6P+mlba184O+ppwlvs/DE0RekO1T5g5i0RpRTEOpU2X3lWn6qLZDSANZ0B87F
	 HSZEZcec+ELjm+QKEwg7UxZXypyIskboOU6QqQt01yqyov9UNydR7j+O/GdgOxiZIP
	 DL9+tY/ZwmZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F819CA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673759357.16419.14162386356700865234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa429d26ed72321302a8f1c6c1491392c999cf2c7771ff71749dedb487b6d418
Date: Mon, 01 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756737593
