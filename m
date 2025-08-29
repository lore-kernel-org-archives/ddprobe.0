Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C192914A4DB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756493393; cv=none; b=E0DZsCQpogcS+crdisoH8VtmEyo4B1FBL6MhNzky8KiPoW6yBErmoAyHbUcFXQC12N1ncDqm1SHs5/P52PqgT1y+mkc5E4IDZ2hLYuhSvVVSMqkMF2L5l0S5pCSd+IvnG/RtRUDgYJga9RcpoZ9B2JZZBV9W2IEA2EVwFC9XgRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756493393; c=relaxed/simple;
	bh=YsqowayK4NccjGI8iTCQWD2Xpn5asCOXb18wux/ytas=;
	h=To:Subject:From:Message-Id:Date; b=lm7WzCpESsxj5l0qY3dVWQM2FFjLHMbAvhSG1QmifF+nUeWS+AJhJoE+SEuBDfJQ85hQwwxdBZOLcPK4y3Zq9GxFyM6IWToZK22U/6WxXOvw0CsBXJ78QNWSkLwPfHOgyK/+UJ5hSyNBrKuut0orPBU93XqAFg4wXA3ldEQQ/J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFIlre6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFIlre6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3046C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756493393;
	bh=YsqowayK4NccjGI8iTCQWD2Xpn5asCOXb18wux/ytas=;
	h=To:Subject:From:Date:From;
	b=RFIlre6dsLqpbjea3e94cJ2VASJmBzqDzVxTjHowaiYV9jfRVDWOLjGN8lbT7gDVI
	 cScUfQCru307obZnMHInUZVq9hg6oDwsZ3u/IL/676nv9NTK1Ya5JdRmgbnJA761k8
	 PoTTV8DlGMDdMcLmu6OlfJcs6ycPKa6jupYUrtEgOrBTWet23coDplBq1f7Ez+3wn/
	 HM9TjdXSc2T5/+st7yBSC4QEt2EaUrm9pWqD9aI5kv1b99k8LKpvoINoltAiJJj07m
	 K84xsD7d+7oS5SKj5P2G7AKIhQ5EylO+54jThgtQed77QYWun8bb8lS/TTOoPNFVzh
	 Sw23TKzjXJjoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB21CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649339357.32566.16520920328125566818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9939fe5b521accb1028a65c41fa5bcdff6fd12c94d9876081ed82e2c434f5d
Date: Fri, 29 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756493393
