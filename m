Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2242DA742
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770393234; cv=none; b=eUGoAiH3bdWm2WpMlHIZp8ZrcWKTeyGmolBsCCeCVVvAStzcjCBYK7xmIQM4ioKVayIKsojQkEdU2I5OPq1MKe4UPG+BI40v1l+ucio4CnHhs5wBkTX4UNZh4yipxKBcsjqq6x5SvVfJKcoogS8w+5YDlklheAYsV1TQ3Co94dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770393234; c=relaxed/simple;
	bh=+Y3jFMdC4VAX+LirCkEjtup/ftFm2ktFAUNmT22nf00=;
	h=To:Subject:From:Message-Id:Date; b=sQIJHRfKN1OXOnBHi/DY4EZC1YQIsowZ8PeUVd9YxRYrUAilq2qMj0gaaUYDU9B8stYxlOU75KwhL6mSzwbo5+34I6/+PQh5jMRN11NGoAeCoTb4abBWpEBN4/YIbiwBPYxs1RtkRBeKn7U1SoQMNsZuicH3xHKLcl2LN65X6Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFy5AI08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFy5AI08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE00BC19423
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770393233;
	bh=+Y3jFMdC4VAX+LirCkEjtup/ftFm2ktFAUNmT22nf00=;
	h=To:Subject:From:Date:From;
	b=hFy5AI08iLeglomgppTry4BbdDnx+Pt/1emYlHS/amx2W2nA03vnSMQz/jGgwyTuJ
	 LVwCzX9TmVH9FddXcdRFxe1XokGpQko7P6ISMz4Wcy0+aD55huLRAGKw7Ckfah0uQY
	 Cw1IzEfEFjlVBlO6H0xEjTUkFX2CxEKVh0cn09/f9RdPzY8+q7eoMjV/QwMh4b0Ncz
	 MSOFYUau41vmUrrcFnTQDfQYMbhCIVk153Od2yEa02kXSCGGNOGeymYVoDC2E7QmyT
	 BS/GGEyKwHBqf9TJbIOk6Uy4VdYGRH0CCc6y1W9Nw0c0GQOeau7r714igGYkaPCU2c
	 /OC3D1AOnakTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AB0EE20B1
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039323360.22527.8230767273955861657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53162133c3074022bbdbfad6efd1c08e1810fb71974f916febbb892a3bc1a838
Date: Fri, 06 Feb 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770393233
