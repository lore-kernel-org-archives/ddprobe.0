Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E5040DB3E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784814634; cv=none; b=d15O3SeGsv+mV8/yMKlG/3TVLpTtk4g9EUtUKAr3rYwFrld58EKBc/PE6GSQjKhpadPE37E4E0qe3oAG2fusngHTYo8aoFUYYz1G4M8Lg+mK7x/M13iMXitlM0wOwdZq8ppqG8DCneYCha3016e93X94MbkMIjXWNEOKFfReqhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784814634; c=relaxed/simple;
	bh=+giP63Biw2UU8CEv5VKXsRNdOqHnOY+bTLwTSm7nS/c=;
	h=To:Subject:From:Message-Id:Date; b=ADpvOfbpg0siR+VUOA+r0+NHBZj/pTkNJmbc9OD9iLLgnoreDqjTx5xNePzCJVLo+icCaVWfyUcSneVraOzpLojy9tl79DIc6h4uwCcEWvRPo7kc0QM0nsnIl3IGPaq0miqb20nD32TIwXQQpH8f7P7PU+yUiWYuI9kXk7FnnIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRuyQ+Bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRuyQ+Bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06628C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784814634;
	bh=+giP63Biw2UU8CEv5VKXsRNdOqHnOY+bTLwTSm7nS/c=;
	h=To:Subject:From:Date:From;
	b=YRuyQ+Bv++Lylb11byk7F3uanRamSDvzQ6o8BJ+eFwWWDPVJMaP+9gDDQHFQgjxPT
	 A4+UF1D0YWwVz3l2vOQHT+lNl378scIGeX3BVdCWB4wukq9OaYyCFrZgsQnM6YnFHg
	 cikcs3Pl45PBaqi/O2cGDPdm0ghNR5vJnGt+xDG3FyCzT4LUhw8LXSQEwx7PtXwinU
	 YxpXQd82xM24eRabsfNgP0OmjzbP4usNQrgmH7IXPNhbjsLEGaGxYFxFWKZJF6KX4j
	 ogjPYUCBZfIkNPfSezNYQ340GzJwRYRyqrTRvRGy9Be/giC/QGvAmBoXcdIRSAL4A0
	 NaEem25tikR0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD187C531CA
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481463374.9783.16875608695404615096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab85ec9ac5ce2a8410a934dd0664449f29ee96e1cc49b56ebbbd3429136a8059
Date: Thu, 23 Jul 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784814633
