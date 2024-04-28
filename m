Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54106389
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714336943; cv=none; b=c5feUjK1tBuHX5f9AtiYRVp0bT5J199jjHQ98QU6zZmytEhNwCDxcCtWr5fWDP7JuhYLPFFoDatsApIlsCal6d1iSvH/o2C4Px0vCn5BpPypTyZLzuQvgkIZzXTD3R8kf1tIvBRrtXeFWezvNfeXTjc5muTKtMQNFaAgzs4BC48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714336943; c=relaxed/simple;
	bh=uH7ugz6ekarQlh2oUaJH/U6BHZLZKXF6PMB2aNlxgxw=;
	h=To:Subject:From:Message-Id:Date; b=WyTrwfQ0wrZYdQzFNOsoRONZspxw9k8p+mCJck1HuPmJMkA2Xc2k7o0Cvj3dz3t5IFjP5qmHcOp4dhTbF34PmvXtOcVHrUr7+Zdtx/SaDpSG6fVM6oaw04DMRJ2HusxsKI9/lSvjDWmuEG1eGb7bb00PgX4rptEmBEKCXyFkPok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGciJr5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGciJr5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23DCC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714336942;
	bh=uH7ugz6ekarQlh2oUaJH/U6BHZLZKXF6PMB2aNlxgxw=;
	h=To:Subject:From:Date:From;
	b=vGciJr5bonICoaXuoyQLTCnd4XPkplydeIyOeanBgU3fv1lDVb2r7QA530B2t6I0s
	 lEIcpaYuQWKLshXJudQ7zFYaCdAY9OJSkV9lvU3ujoAPiQAt8FmgNPDt4Mfyh+vZec
	 rTOw6FaUjKQqjx6ZEJYuRYE3FptrD2LQMshs7IoNFAgu9Pod3Ii6Uw/39YaMw75GTh
	 TUEv2aPFAHvND/BynhLpvcLZiQjZHptXSz6ZRKEKxY9+hOntyaWRLS0mUkR7vL4Ntx
	 2kivi4j3kpU81zS+16WlfHEFrIlvFNkdKZFt+bvp1zze4fpGzlLSO2kd4pdLovMkYj
	 w2EK7E7fGwv0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEDFC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433694276.2002.14298635329979496858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa062acc037330cf20c53a6b033bd0eebe15e7c7087f52e04ccdf776aeb47fa9
Date: Sun, 28 Apr 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714336942
