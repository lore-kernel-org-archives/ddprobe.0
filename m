Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1792133122D
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787982635; cv=none; b=rYTDVH15wpDzOvYtnFRJMOPhOvKjLmG60IUtvy5sqES2vB4Yflqx2zWvQeX3QKcPs+yt0SB0p8xKuvAx4V+t03jytGpAGTzSjHQYvfHUu+tcFFa0IIt1FQxaSI9sX8Gjiea66SiwXZWSN4iegeMbA2kaITu62KLTvP3HGBjcoSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787982635; c=relaxed/simple;
	bh=e2JL0PIFb1ExvsKifyitSfqcsjhvpwVGTy95o1Gy0gE=;
	h=To:Subject:From:Message-Id:Date; b=JxpiDUuzf1uwtsudFY8wSWrtpdYMeDlcMiF/kXo2Am5F8C4MrbXRs/juXK83a+adlI+gbFrs9RjN9WMpye7P0kxWE6wmfmybnqB+L9cGmWebk/O4FOtkzaHiUnzemHQdBS32fnVR+F4+Qfe585JRTEIkYeuVJMIZFiZzOQtUD8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pw5XxJW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pw5XxJW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EA3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787982633;
	bh=e2JL0PIFb1ExvsKifyitSfqcsjhvpwVGTy95o1Gy0gE=;
	h=To:Subject:From:Date:From;
	b=Pw5XxJW3qDZtnDj32tulpe5YQJ3J/8/A6SvpGlv1/S1cGGM2uv5wmA2refjPr9cJs
	 F6qFR46F7VDI3U0QsC7UUtexeE61daZlFsKFTkK7VDJiofSPao5kC+11D2A71OH3fK
	 1R13sN62U42IcoF6euEcNP7JMCGEy4zVy+WlmB84ksaWv8MOH5OzAyF9YN8pRsihDP
	 InfhGYb9ZvEZffYp9wuNN7rTJTYOvIrvrwBB320d2HGr63LFJM0wd2o9Pk2eRcY03S
	 YEB33fRLKHsYA/FmLNFuvS4UErXAn03i/R+Q/F5ONDP1oLswr6cJ5gcK9o3IXLpAWt
	 C40BQsbAX8MyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B042FC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798263368.16099.670555565004188100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a709b33c48e8e14c7a8f29603c5b0ee01e0e401e5c32ab9e4f85f1ec313d73
Date: Sat, 29 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787982633
