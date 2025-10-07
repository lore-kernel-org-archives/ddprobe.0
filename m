Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA002DAFCA
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759858794; cv=none; b=NqSFWKAGE5FOno2gZM2ihxGgNmahHuiXfZEFtfyadWQNtydLRmkMHqY8mV9qZorqdDVLFWcTUdRxmkjvwMD6lveRxAuCfJrmBVF+vBoMkdxwbazpQF7Vv+oQlBlinvqylrbudlNyGjALSuuc7mlLLqUwE4vdg7iuj1ANepTpzfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759858794; c=relaxed/simple;
	bh=syp0J1C/jB2m333JnqouqWTcbzZ+HTOzx+Wzd8O7ZTU=;
	h=To:Subject:From:Message-Id:Date; b=caDddpfqhD38x5tdVWkp9iyEZTI1D54kQ6vXHfHvzh/hLfjKn8uCuUVzry0WxGSEXWhzOwCeoDx93r2s7+dHy8waL5w0UN000TY1qOu9HqEsTCjn/eCbrDglX5ZsiBpBREJc/7Fvh7Dy6df8Ly52buyiLDv7/H1whq/b0+8nAkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciHZusXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciHZusXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0813C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759858793;
	bh=syp0J1C/jB2m333JnqouqWTcbzZ+HTOzx+Wzd8O7ZTU=;
	h=To:Subject:From:Date:From;
	b=ciHZusXJd1onn0tDGeGR04eCS9uhTfnO9H400gQfG6TTQVAb9JIkj9/EFhir7te5j
	 hpWHG5SjI6LT4Lj1e5xqMQIxjLszQ/bF9nPnUJ1s0MxVPWAmA74MU1d6HqRwNoFL6A
	 2DjgTgndIvUP4tSwSljymQ5ipRLzPaaIyPXGtfq5a3mNgA3r+rUYwUx5H9oy5oZSZ4
	 156lQZdcGnLNDDphTHvl90OLn/VxTsfLScNhNiLA+Q+7m42PLe0xPqIP4C7Gnv/GRJ
	 8K711ABjUDfco/HF/YOl1tOWBIkFE3NLjIJs3TZm+6i+i9/3gQsozH0mOrVt3JM2aM
	 tpsNrG8o/x1RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C63CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985879358.3984.4042215663250723347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 075914c41a6ca25be8411e8dc82c4c312410318fbb45293ca17551916d9c8ca3
Date: Tue, 07 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759858793
