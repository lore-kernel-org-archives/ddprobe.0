Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339DB7262D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765630974; cv=none; b=Cdr8nkYgCUktJy5RFu46elQqDArh9epThyiNOcQrTwBnRBfDmMZW3i6ks8uiDEgamtOLUHiX/Jql7yqS0it7wEDNCOcB7POz0Z7HQrFm5R2h3QCnwHi5XqDy98aRBMWeMxlQtgrGi3oB1OOHIGfbwEqiVH1Kn7YzfkdF3LtHuj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765630974; c=relaxed/simple;
	bh=O88/HMkRbKMvPmN5y66GkGJSsitSwCbGLr3vOMlMypI=;
	h=To:Subject:From:Message-Id:Date; b=RThtPTz74Jvsk5OcYeXzi38OWlMcDA8Yy69uEn9WJXYuLbW48ih+UYrVYlIWXota358pRbDmj1NTZF46TSFEEt763mBZSougQ5y2bm8Lx1eDCEc9xsKCgkfLOFeIOJORRSQZJUTMQNMrlF5gd6HkGMYQcVnV8KAaux+0+P6qS3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDVAuvaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDVAuvaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07CAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765630973;
	bh=O88/HMkRbKMvPmN5y66GkGJSsitSwCbGLr3vOMlMypI=;
	h=To:Subject:From:Date:From;
	b=aDVAuvaXob0zoHqnCWoBOLfluKu9Kh7qpijyXAW+8oSnFe6DMpI9aofoaGV/8RIAd
	 22A++Ry6Yb/bQuLu3Z8MxYh8PbS2SFHzi2MKbwgd48STqPj3+zYKpucH9gM92UEnXb
	 dAqwFg2cdjss36Rdtbsk7Yr3XwtatimeKsqeiwAPrQwtcYHrUXxjUbZnmn7C62uAor
	 mGnMm00htM36RBrzicWqFogXiaVzHm04jHuHvYf/aCoX0L88aavwFY+hv/IwHj546b
	 tSVChh4WOnfNlRMD6Ji+b/5LDF1hucb/DB5IP0P2JHZh6TD7UbZu5ZEcwBgomdOgBC
	 ocMl7w5RrD+JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C419D59F76
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563097360.26158.18135575767523079458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04a4edfa2a8ff251c565c4a71b8159a6ca3bfe66c4cc798482429fc01daeadb
Date: Sat, 13 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765630973
