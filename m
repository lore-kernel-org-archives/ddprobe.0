Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4663114883C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736898354; cv=none; b=Q2haneui0acI0bgEAX+/HyyrN3r6RRldQ6Q1yxmlwhuGA0UJeReZ9Hg37t/sqlTCvy2+GvJIts51EbPxWG9fxWbn6HdL7cLpgGlbm5fOk57uV7tAstUGehs4LqxBrKNSazJg6z0OdS/21DMee/tM5NXfGJkkdYjhBTuSCnlLO+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736898354; c=relaxed/simple;
	bh=9KJDzLF9mhYBkJoe8qV5lsoIOUKbMRfGTflHDq3e7yE=;
	h=To:Subject:From:Message-Id:Date; b=hS7hgTZQgPOo0pPwf83dypKOnl6sogHiZWIJptnT9/YNiu3L6HYmy0nhb7/fsYYzpCtDpMcjSGaE+MyB3bjm8g1pCrwk/dZJB+rGCcMYJMC4Tpyu80cDX/+6py6rNKcJ+9cX8+e678ODS/1Dxk99OomM7fjxNnuvMjuwmuSzodc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7yKTV1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7yKTV1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE19C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736898353;
	bh=9KJDzLF9mhYBkJoe8qV5lsoIOUKbMRfGTflHDq3e7yE=;
	h=To:Subject:From:Date:From;
	b=q7yKTV1KGfd5W9MJwDYWZ4k+S74+tGpZ2t6lgjv93Ls4/rWn/hZ3IrwhGHW4PRI1N
	 ki0YhsjDuFmBsh9g7neF7OggC0O18Xip6p8Q5Bh22bHUK3voq8ANwBAv9//eF0sEpg
	 6/USJyWS+atcTvDNG68Ds05MB3e/UIqxCClHVFTJH71UtO7r5b25QPrBCztySdJlwi
	 hUKqsAbsHstm+a+BECT63BrNionrDi9JSNCHNPwTWHCRNNzfHqg5sHMvNUd0moxEHx
	 gOmt/qdYv9s/mIfS3bUU0fJgFcQ/DokXA+TknpJ3DjV0eqJPPCNQRKFwmDcX7votL+
	 +wIOEKLJm0sLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B252E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689835360.13065.9307732695568015617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c899e514ab2fe5a5f1d0087d564850b7a35a7a768a77044869028d6de22e1237
Date: Tue, 14 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736898353
