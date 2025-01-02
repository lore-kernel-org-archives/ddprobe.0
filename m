Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8C71C36
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735851354; cv=none; b=TGs+Dy0soDdFk83sg3cQ/dGhWvkhv+TdSszQcw4yCr+l/9EzEZAAsYTWSAktXSGJwG7XJBz4fC2iins3DpLcNSsk6kje9IY8m7gndJXcp8NMqfY53Wzdgxg61wISec5yZ0uE9HpPE7yB8kNW65qVzNzVKs0hMH3TVd3Tzo1UzAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735851354; c=relaxed/simple;
	bh=Nm+RmNZMgp3I6xPnYqFGYtJasZTFtb+YIXEVSosAa6g=;
	h=To:Subject:From:Message-Id:Date; b=afTIG1P46DZJqqI0/K+SCPugbrBvw/lnqlm/V2rmL5iTuVZO3W977vyPg4wetFSLXD5oEhS6dpUPJFSj8yQlEtCKSbJIEmSF5esSN4BU825ppo0U2E3goUISqF/hJBdWei9FxoPeLjkYOvAli0yY4enxvJd7yLY3CvyBCNXb2R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIS+ro0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIS+ro0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA83C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735851353;
	bh=Nm+RmNZMgp3I6xPnYqFGYtJasZTFtb+YIXEVSosAa6g=;
	h=To:Subject:From:Date:From;
	b=PIS+ro0CDgSUHWCMTa0eEL5c0MbUNXdHwfM88VnZsnq1HUbKu0e+Gki4B1EnDn9bS
	 8+wKn/67PiMx6/58sGbynX4xa/tyQcNAJ2vGCbufVPzYN6kNhROjtKpaX7KCUMCq90
	 kmvXOPkf2wGN9ePSd/rM1Q6IYOejuGyhkSbCqCX0v+HYZv+kgDZrL+xkzxvaH4yKKx
	 LXpGOBXl+8QOFbGEidGlekEf4LCpTkZjta/SNhEUOp+55r5Oxj+lly8mWo+o3OrsQx
	 OZ9+2X0EcO7/KtUqWdm8ceoYPEbH/tloySQpXwzxRelFgOmbGFF5L7w4L2BKMwt1or
	 yihlZcdkGdSEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A8E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173585135359.12101.14868417649755595114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e859152dddfc8662609f9a68cf973f7455d44cd296f8cba92e7fcbc5657c563
Date: Thu, 02 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735851353
