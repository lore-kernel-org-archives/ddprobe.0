Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0BD1F3B83
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749847195; cv=none; b=hoQrPh7iJDFQitNL1MUl9Yb6fowRezljvxIQjtLtvg643jn1+DDDlijZSSBRTPg8+YvZNTex9zMvb8b3wSzVWD6TS6rDBNDco4feiv5T4d0QF+1ZKUfBy4Wc8JJn70ELyr++l6qiacbhymtX3TtuM6vSS0EOt5I3kb3zGtPxnEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749847195; c=relaxed/simple;
	bh=NnaQr12dh6tdv5yMYUdlxbxyW1v9WRNgNX5MJJWA7bw=;
	h=To:Subject:From:Message-Id:Date; b=hLkucJEoSGUwE/Uk7Cv4eFEnK80qFtj685uMIN8kS4VsP8ciW4CoAAYFe0bnliM44kAWQx1zCfavCb+yV89JBuZSQDA3V/QHMgv3hQ5o/kQ5w6zS3rykuGUZsGKnjglKEyxis/IwdJ1ynKHlX0L/38nk+1LYAf3juV8A6/nB5KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsxfG4F2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsxfG4F2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B693C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749847193;
	bh=NnaQr12dh6tdv5yMYUdlxbxyW1v9WRNgNX5MJJWA7bw=;
	h=To:Subject:From:Date:From;
	b=GsxfG4F2OQtUAXMSTXezgYSDTW2cLQHHGOtWWIV3UdTCwwbpiYTe+NssIj8te5zz2
	 NcxKUOVOhVVLwGO7bfjiy20JQGgpgs4g2OFm6Wd6smZ/OxaJudguuv2lSYdy/dFgrv
	 7NsL8C+N8bfrGf0ITGIsrhqzZvWV70z+t9mja9LZAF1GUMX3cgZOXHZrYcgmQ4PAdJ
	 QoJaAyuqch+jDj+mkAlkyzMhmCxhB+P6vBSKW2aPoziUbnkRsWc8wFMUFZ11pxMX8+
	 prWwZne1F+VhnAfvPvikiEP9wlG7piGRkzP/KLbiS7A9NkzctTr4jlsSqNs3TvK8IR
	 IzgHWq1HUpcVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB7C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984719357.29879.5490056965220908473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0352e74ce60e8d0c5e6a0a8422244ca6818347a68a822a5f4806caf1b5f2a3ed
Date: Fri, 13 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749847193
