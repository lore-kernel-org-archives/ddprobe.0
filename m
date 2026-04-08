Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FCE1E5724
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775618134; cv=none; b=NHf4FD4UusbAtNbgpXDfGHi3slXNrB97wD0lwGq3KnsiUDtKsRLBrkeubp6Ggsu7O9bv2jsH+2y2uOFPWLYART7OAz67+8Z0J13bFEz8tK3v1M+iX1MGsmNUwxDgljPJ5QGGiF7QBJZaLGWynx6+N7R2mU/RfI4x4RY1SuhSmVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775618134; c=relaxed/simple;
	bh=q9AMiHFoEOSb33W9Vp78IR5lTSE22/h6bLzV+CTtXkg=;
	h=To:Subject:From:Message-Id:Date; b=ZRu8DIP+yY0yyu1zHv6npzd3kc6xMS4kbpNQIELls8BlIxvpXpsIsZvor50OKrV6OgnlCVv/Zn5iGXL4ZmhGh2pRjeUf/+fBsPm9c6pBwpEgcSJLgNaNecf+TeyYm2gAxNQnQK9RmQJFLuZHeP0n/e6QlwSH2pbzsPBGe4x6wT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKd5bUV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKd5bUV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12198C116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775618134;
	bh=q9AMiHFoEOSb33W9Vp78IR5lTSE22/h6bLzV+CTtXkg=;
	h=To:Subject:From:Date:From;
	b=GKd5bUV85dNDiPNnH7qy8j79qijgG/zykr/cT87/D1OEwPVkQtXuGTE30HpeXNRu4
	 eXG1Yj+VSpdKinh3EBYxva4Jth24bJjzjXTjIAQaxh1Sum06MKfyUyjoA0wmmKA4Kw
	 Boka6GsE/hNNJreJw+AfkCvtRGsf2/Z1vHJ/zQOBcLKEqxSHrfsjNXCaQX/lNRBDxq
	 sYTZu0MiMImilY2KnEO6bt2RTyAGnhaAn+DnQuBUgjJu4P1gzCCW8ALuINYUFcjssU
	 yNp1bf+U1uYA3mN7GhRs08Y1pV63GxGqDA8P1RXdZRL8wnsOVYMxjUDo7c4zgz9sSN
	 sxOH4pprotgvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E14C1105D996
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561813383.17490.10063726917144365121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923b7ef424a87ff7ed8aa018d5b1b7a8a854dec46ec1747f1ac77b9146c19c3f
Date: Wed, 08 Apr 2026 03:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775618133
